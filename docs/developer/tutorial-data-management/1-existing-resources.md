---
title: Existing resources
author: Paul van Genuchten
date: 2023-05-09
website:
  sidebar:
    style: "docked"
    search: true
    contents: auto
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



When describing a resource, consider which user groups are expected to read the information. This analyses will likely impact the style of writing in the metadata. The UK Geospatial Commission has published some [practical recommendations](https://www.gov.uk/government/publications/search-engine-optimisation-for-publishers-best-practice-guide) on this topic.

When tagging the dataset with keywords, preferably use keywords from controlled vocabularies like Agrovoc, Wikipedia, etc. Benefit of controlled vocabularies is that the term is not ambigue and it can be made available in multiple languages. 

## MCF editing

MCF documents can best be written in a text editor like [Visual Studio Code](https://code.visualstudio.com). Consider to install the [YAML plugin](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) for instant YAML validation. 

Another option to create and update mcf files is via [MDME](https://github.com/osgeo/mdme). MDME is a webbased software package providing a dynamic metadata edit form. An operational package is available at [osgeo.github.io](https://osgeo.github.io/mdme). Notice that if you install the package locally, you can customize the metadata schema and initial template to your organisational needs.

Open mdme and populate the form, now save the MCF file and place it in your sample data repository. Notice that MDME also offers capabilities to export directly as iso19139, it uses a webservice based on pygeometa to facilitate this workflow.


## Summary

In this section, you are introduced to a data management approach which maintains metadata at the location where the datasets are maintained, using a minimal, standards complient approach. You are introduced to the MCF metadata format and to the geodatacrawler tool which is able to create and operate on large numbers of MCF files. In the [next section](2-describing-resources.md), we will go into more detail on the MCF format and metadata authoring in general.
