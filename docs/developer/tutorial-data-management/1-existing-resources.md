---
title: Existing resources
author: Paul van Genuchten
date: 2023-05-09
---

Organisations organise their documents and datasets on various central network storages or databases. These resources are usually clustered in organisational units, projects and/or periods. Many files and database tables contain inherent metadata, such as the name, size, date, author, location etc. For example Excel, ESRI FileGeoDatabase, Geopackage and tiff files. It is important this information is included when exporting the data to an alternative context, such as a remote data repository.

For those formats which do not have embedded metadata, or in order to capture additional metadata aspects. We endorse the creation of a `sidecar` metadata file for every resource, a dedicated metadata file sharing the name of the datafile. This approach is for example common in the ESRI community, where a `.shp.xml` is created alongside any `.shp` or `.tiff` file, which captures metadata elements.

The inherent metadata can be used to generate an initial sidecar file. Data scientists can complement the metadata file to their needs. In this workshop, we are going to use this convention, to build up a discovery service for datasets within an organisation, at minimal effort for data scientists. 

## Standardised metadata formats

For optimal interoperability, it is important to agree within your group on the metadata standard to use in those sidecar files. ESRI software for example provides an option to [select the output model](https://pro.arcgis.com/en/pro-app/latest/help/metadata/view-and-edit-metadata.htm#ESRI_SECTION1_0FAB123C7C3C4CD49894272A899490ED) of the metadata. QGIS has various plugins, such as [GeoCat Bridge](https://plugins.qgis.org/plugins/geocatbridge/), to work with various metadata schemes.

## The MCF format

Within the geopython community a metadata format is endorsed called [metadata control file](https://geopython.github.io/pygeometa/reference/mcf/) (MCF). Aim of the format is ease of use, while providing export options to various metadata formats. Many (older) metadate formats are based on XML, which makes them quite hard to read by humans. MCF is based on [YAML](https://www.yaml.io/spec/), a textbased format using indents to cluster elements. In this workshop we endorse the use of the MCF format due to its simplicity and natural fit with the use cases. A minimal sample of MCF is:

```
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

In the next exercises, we are going to use a combination of MCF and [iso19139:2007](https://www.iso.org/standard/32557.html) to describe datasets (and alternate resources). iso19139:2007 is a standardised metadata format, commonly used in the spatial data community. Notice  that MCF can also be combined with alternate metadata models, such as [DCAT](https://www.w3.org/TR/vocab-dcat-3/) and [STAC](https://stacspec.org/en).

## Discovering an existing data repository

For this exersice we've prepared a minimal data repository containing a number of Excel-, Shape- and Tiff-files. Unzip the repository to a location on disk. Notice a index.yml in the root folder. The tool we use is able to inherit metadata properties from index.yml files through the file hierarchy. Open index.yml and customise the contact details. Later you will notice that these details will be applied to all datasets which themselves do not provide contact details. Consider to add additional index.yml files in other folders to override the values of index.yml at top level.

The tool we will use is based on python. It has some specific dependencies which are best installed via [Conda](https://conda.io). Conda creates a virtual python environment, so any activity will not interfere with the base python environment of your machine.

If you don't have Conda, you can install [Anaconda](https://www.anaconda.com/download) or [Miniconda](https://docs.conda.io/en/latest/miniconda.html#installing) and consider to read the [getting started](https://docs.conda.io/projects/conda/en/stable/user-guide/getting-started.html).

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

Finally we want to export the MCF's to actual iso19139 metadata to be loaded into a catalogue like pycsw, GeoNetwork, CKAN etc.

```
crawl-metadata --mode=export --dir=data --dir-out=export --dir-out-mode=flat
```

Open one of the xml files and evaluate if the contact information from step 1 is available.

## Summary

In this section, you are introduced to a data management approach which maintains metadata at the location where the datasets are maintained, using a minimal, standards complient approach. You are introduced to the MCF metadata format and to the geodatacrawler tool which is able to create and operate on large numbers of MCF files. In the [next section](2-describing-resources.md), we will go into more detail on the MCF format and metadata authoring in general.
