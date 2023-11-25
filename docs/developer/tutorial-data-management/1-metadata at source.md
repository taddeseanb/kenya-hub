---
title: Metadata at the source
author: Paul van Genuchten
date: 2023-05-09
website:
  sidebar:
    style: "docked"
    search: true
    contents: auto
---

# Metadata at the source

The FAIR principles are designed with the academic community in mind. Researchers sharing information between univeristies. However the FAIR principles can also be applied within an origanisation to improve data management, even on your personal computer. You will notice even you yourself will benefit, if you return for example to an archived project 2 years later to recover some data sources.

Many organisations organise their documents and datasets on a central network storage or databases. These resources are usually clustered in organisational units, projects and/or periods. Some files and database tables in that central storage contain inherent metadata, such as the name, size, date, author, location etc. This information supports users in understanding the context of the data source. Especcially if that data at some point is migrated from its original context.

For those formats which do not have embedded metadata, or in order to capture additional metadata aspects. We endorse the creation of a `sidecar` metadata file for every resource, a dedicated metadata file sharing the name of the datasource. This approach is for example common in the ESRI community, where a `.shp.xml` is created alongside any `.shp` or `.tiff` file, which captures some metadata elements.

:::{.callout-tip}
Locate on your local computer or network drive a random shapefile. Does the file have a .shp.xml sidecar file? Else find another shape of tiff file (look for `*.shp.xml`). The xml file may be very limited, but in most cases at least some processing steps and the data model of the shapefile are mentioned. 
:::

Through the embedded or sidecar concept, we endorse data scientists to document their data at the source. Since they know best how the data is produced and how it should be used. In this workshop, we are going to use the sidecar convention, to build up a discovery service for datasets within an organisation, with minimal effort for data scientists. 

---

## Standardised metadata models

For optimal interoperability, it is important to agree within your group on the metadata standard to use in sidecar files. ESRI software for example provides an option to [select the output model](https://pro.arcgis.com/en/pro-app/latest/help/metadata/create-iso-19115-and-iso-19139-metadata.htm) of the metadata. QGIS has various plugins, such as [GeoCat Bridge](https://plugins.qgis.org/plugins/geocatbridge/), to work with various metadata models.

:::{.callout-tip}
Does your organisation (or regulation relevant to your role) endorse a metadata model to describe data sources?
Are your aware of tooling which can support you in creation of metadata in this model?
:::

---

## The MCF format

Within the geopython community a metadata format is used called the [metadata control file](https://geopython.github.io/pygeometa/reference/mcf/) (MCF). Aim of the format is ease of use, while providing export options to various metadata models. Many metadate models are based on XML, which makes them quite hard to read by humans. MCF is based on [YAML](https://www.yaml.io/spec/), a textbased format using indents to cluster elements. In this workshop we are using the MCF format due to its simplicity and natural fit with the use cases. A minimal sample of MCF is:

```yaml
mcf:
    version: 1.0

metadata:
    identifier: 9c36a048-4d28-453f-9373-94c90e101ebe
    hierarchylevel: dataset
    date: 2023-05-10

identification:
    title: My favourite dataset
    abstract: A sample dataset record to highlight the options of MCF
    ...
```

In the next exercises, we are going to use a combination of MCF and [iso19139:2007](https://www.iso.org/standard/32557.html) to describe datasets (and alternate resources). iso19139:2007 is a standardised metadata format, commonly used in the spatial data community. Notice that MCF can also be combined with alternate metadata models, such as [DCAT](https://www.w3.org/TR/vocab-dcat-3/) and [STAC](https://stacspec.org/en).

---

## Discovering an existing data repository

In this exersize we'll extract relevant metadata from a file repository using a crawling tool. Later we will load this metadata into a searchable catalogue. We have prepared a minimal data repository containing a number of Excel-, Shape- and Tiff-files. Unzip the repository to a location on disk. 

:::{.border .p-2 .mb-3 .bg-light .border-rounded}
Notice a index.yml in the root folder. The tool we use is able to inherit metadata properties from index.yml files through the file hierarchy. Open index.yml and customise the contact details. Later you will notice that these details will be applied to all datasets which themselves do not provide contact details. Consider to add additional index.yml files in other folders to override the values of index.yml at top level.
:::

The tool we will use is based on python. It has some specific dependencies which are best installed via [Conda](https://conda.io) or [mamba](). Conda creates a virtual python environment, so any activity will not interfere with the base python environment of your machine.

If you don't have Conda yet, you can install [Anaconda](https://www.anaconda.com/download) or [Miniconda](https://docs.conda.io/en/latest/miniconda.html#installing) and consider to read the [getting started](https://docs.conda.io/projects/conda/en/stable/user-guide/getting-started.html). Even more efficient is [micromamba](https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html)

Now start a commandline or powershell with conda enabled (or add conda to your PATH). First we will navigate to the folder in which we unzipped the sample data repository. Make sure you are not in the `data` directory but one above.

```
cd {path-where-you-unzipped-zipfile}
```

We will create a virtual environment (using Python 3.9) for our project and activate it.

```
conda create --name pgdc python=3.9 
conda activate pgdc
```

Notice that you can deactivate this environment with: `conda deactivate` and you will return to the main Python environment. The tools we will install below, will not be available in the main environment.

Install the dependencies for the tool:

```
conda install -c conda-forge gdal==3.3.2
conda install -c conda-forge pysqlite3==0.4.6
```

Now install the crawler tool, [GeoDataCrawler](https://pypi.org/project/geodatacrawler/). The tool is under active development at ISRIC and facilitates many of our data workflows. It is powered by some popular metadata and transformation libraries; [OWSLib](https://github.com/geopython/OWSLib), [pygeometa](https://github.com/geopython/pygeometa) and [GDAL](https://gdal.org).

```
pip install geodatacrawler
```

Verify the different crawling options by typing:

```
crawl-metadata --help
```

The initial task for the tool is to create for every data file in our repository a sidecar file based on embedded metadata from the resource.

```
crawl-metadata --mode=init --dir=data
```

Notice that for each resource a {dataset}.yml file has been created. Open a .yml file in a text editor and review its content.

The `update` mode is meant to be run at intervals, it will update the mcf files if changes have been made on a resource. 

```
crawl-metadata --mode=update --dir=data
```

In certain cases the update mode will also import metadata from remote url's. This happens for example if the dataset-uri is a [DOI](https://www.doi.org/the-identifier/what-is-a-doi/). The update mode will ten fetch metadata of the DOI and push it into the MCF. 

To enable remote updates, add the `--resolve=true` parameter.

```
crawl-metadata --mode=update --dir=data --resolve=true
```

Finally we want to export the MCF's to actual iso19139 metadata to be loaded into a catalogue.

```
crawl-metadata --mode=export --dir=data --dir-out=export --dir-out-mode=flat
```

Open one of the xml files and evaluate if the contact information from step 1 is available.

---

## Summary

In this section, you are introduced to a data management approach which maintains metadata at the location where the datasets are maintained, using a minimal, standards complient approach. You are introduced to the MCF metadata format and to the geodatacrawler tool which is able to create and operate on large numbers of MCF files. In the [next section](2-describing-resources.md), we will go into more detail on the MCF format and metadata authoring in general.
