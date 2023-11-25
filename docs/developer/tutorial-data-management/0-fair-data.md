---
title: FAIR principles
author: Paul van Genuchten
date: 2023-11-23
---

# FAIR principles

The [FAIR principles](https://www.go-fair.org/fair-principles/) are a good practice on data sharing in academic communities and beyond. A good starting point for our workshop on data management. 

:::{.border .p-2 .mb-3 .bg-light .border-rounded}
Outside academia there have been similar initiatives to improve data management, which may be more relevant for dedicated communities or scenarios:

- [W3C Data on the web best practices](https://www.w3.org/TR/dwbp/)
- [Open government data principles](https://public.resource.org/8_principles.html)
- [European INSPIRE Directive](https://inspire.ec.europa.eu/inspire-directive/2)
:::

In this paragraph we present a number of exercises around the FAIR principles. And we'll see how the principles work out in the soil domain specifically. FAIR Data is:

- [Findable](#findable)
- [Accessible](#accessible)
- [Interoperable](#interoperable)
- [Reusable](#reusable)

---

## Findable

Metadata and data should be easy to find for both humans and computers.

### Data and metadata have a unique persistent identifier

- A local identifier is usually combined with a namespace, to create a globally unique identifier (URI). 
- Do not use product names, project names, group names in uri's, it is difficult to maintain persistence.
- Frameworks such as [DOI](https://doi.org) and [W3ID](https://w3id.org/) offer a persistent identification layer for online resources.

:::{.callout-tip}
For the following 2 types of datasets, review the uniqueness and persistence of their identifier as well as of their metadata. 

- Locate some datasets on your local machine or organisation network.
- Locate some datasets on the web. If you don't know where to start your search, consider to read the [catalogue](#metadata-are-searchable-in-a-catalogue) section first.

| Dataset | Identifier | Your review |
| --- | --- | --- |
| Sample |  a432-bcd-4ab55 | No namespace |
:::

### Describe the data source with rich metadata

Rich metadata includes aspects such as, title, abstract, keywords, who is the author/owner of the resource, when was the resource created, 
are there any usage constraints, how does the resource relate to other resources.

:::{.callout-tip}
To evaluate if a tiff-dataset containing `texture-clay` is relevant to answer your question on soil water availability, 
which aspects would you expect a metadata description of that dataset to include?
:::

### Metadata are searchable in a catalogue

In order to find metadata efficiently, metadata records should be listed in a intuitive search interface

:::{.callout-tip}
Navigate to the following data portals and search for a dataset on for example `soil texture` in your area. Note down which aspects you would like to see improved 
to locate a dataset, or to know when to stop searching, because you assume you have located the best match in the catalogue. 

- [Geoportal.org](https://www.geoportal.org)
- [Google dataset search](https://datasetsearch.research.google.com)
- [Data.isric.org](https://data.isric.org)
- [Digitalearth.africa](https://radiantearth.github.io/stac-browser/#/external/explorer.digitalearth.africa/stac/)
- [FAO catalogue](https://data.apps.fao.org/catalog/)
:::

---

## Accessible

Once a user finds the data, it should be clear how they can be accessed.

### Metadata and data are retrievable using a standardised communications protocol

Various communities adopted a range of standards for metadata exchange:

#### Metadata

| Community | Standard | Protocol |
| --- | --- | --- |
| Open data/Sematic web | DCAT | SPARQL |
| Science | Datacite | OAI-PMH | 
| Geospatial | iso19115 | CSW/OGC API - Records |
| Earth observation | STAC | STAC |
| Search engines | Schema.org | json-ld/microdata |
| Ecology | EML | [KNB](https://knb.ecoinformatics.org/)/[GBIF](https://gbif.org)|

:::{.callout-tip}
A metadata model often is a combination of a schema and a format. Compare the following metadata records, identify which model is used in the record, what differences and communalities do you notice? 

- [African open soil data](https://api.datacite.org/dois/10.17605/OSF.IO/A69R5)
- [Wosis latest](https://data.isric.org/geonetwork/srv/metadata/2f99e10f-183c-11e9-aba8-a0481ca9e724/formatters/xml)
- [Rainfall Chirps](https://explorer.digitalearth.africa/stac/collections/rainfall_chirps_daily/items/d5bb6b02-0979-5112-8dd6-9aef6638fb73)
- [Soil excavation Assen](https://data.europa.eu/api/hub/repo/datasets/dataset-bodem-ontgravingskaart-bovengrond-assen.ttl)
- [Keileem Drenthe](https://demo.pygeoapi.io/master/collections/dutch-metadata/items/ffffffaa-4087-59ec-9ea7-8416f58e99dd?f=jsonld)
:::

#### Data

Most common in data science is to provide a packaged version of a dataset and deploy it on a repository like Zenodo or Dataverse where it can be downloaded. However in the spatial and earth observation domain we tend to work with large files and the use of data api's which allow to request subsets of the data are very common. The Open Geospatial Consortium has defined a number of standards for these API's, so the API's itself are interoperable. The table below shows some of the common API's. In the first column the older API's, developed in the 90's, in the second column their updated representative, recently adopted or still in development. 

| Service | OGC API | Description |
| --- | --- | --- |
| Web Map Service ([WMS](https://www.ogc.org/standard/wms/)) | [Maps](https://ogcapi.ogc.org/maps/) | Provides a visualisation of a subset of the data |
| Web Feature Service ([WFS](https://www.ogc.org/standard/wfs/)) | [Features](https://ogcapi.ogc.org/features/) | API to request a subset of the vector features |
| Web Coverage Service ([WCS](https://www.ogc.org/standard/wcs/)) | [Coverages](https://ogcapi.ogc.org/coverages/) | API to interact with grid sources |
| Sensor Observation Service ([SOS](https://www.ogc.org/standard/sos)) | [Sensorthings](https://www.ogc.org/standard/sensorthings/) | Retrieve subsets of sensor observations |

From the Earth Observation domain, an alternative mechanism is increasingly getting adopted. Complete files are stored on a public file repository, but by creating an index on the file and enabling range requests, users are able to fetch subsets from the file directly.

This mechanism is enabled by new formats such as [Cloud Optimised GeoTiff](https://www.cogeo.org/), [GeoZarr](https://github.com/zarr-developers/geozarr-spec), and [GeoParquet](https://geoparquet.org/).

### The protocol allows for an authentication and authorisation procedure, where necessary

FAIR endorses open access, however in some cases it is not possible to share some data to the global audiance (privacy, economic, or safety concerns). It is still relevant to publish the data, so those authorised can access it. This requires a proper level of autorisation and authentication being set up.

### Metadata are accessible, even when the data are no longer available

Metadata models usually have a status field, which enables you to indicate that a resource has been archived. The metadata would still be available, so users are aware it once existed.

---

## Interoperable

Data typically are integrated with other data, as well as interoperate with applications or workflows for analysis, storage, and processing.

### (Meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation.

The soil community has a long history of interoperability efforts for soil profile data. Such as:

- [Globalsoilmap](https://www.isric.org/projects/globalsoilmapnet), 
- [e-Soter](#e-soter), 
- [iso28258:2013](#iso282582013) 


#### e-Soter

The ESoter model has been developed in the [e-Soter Research project](https://esoter.net), based on principles of previous Soil Terrain (SOTER) initiatives. e-Soter is a relational database model, usually implemented as a [Microsoft Access](https://www.microsoft.com/en-us/microsoft-365/access) database. Some examples of eSoter implementations:

- [Malawi](https://data.isric.org/geonetwork/srv/eng/catalog.search#/metadata/60803da0-a15f-4cc5-9cb5-172fa2460af3)
- [Kenya](https://data.isric.org/geonetwork/srv/eng/catalog.search#/metadata/73e27136-9efe-49e4-af35-fd98b841d467)
- [Southern Africa](https://data.isric.org/geonetwork/srv/eng/catalog.search#/metadata/3571c1f3-159d-442c-b324-0af53d03f12e)
- [Senegal and Gambia](https://data.isric.org/geonetwork/srv/eng/catalog.search#/metadata/a6320590-0899-4b60-bf4d-f80282bbb72c)

#### iso28258:2013

In 2012 various experts in the soil domain grouped around the development of the first formally standardised domain model on soil data, published as [ISO28258](https://www.iso.org/standard/44595.html). 
ISO28258 adopted the [Observations & Measurements](https://www.ogc.org/standard/om/) conventions of OGC. Each observation on a site, profile, horizon or soil sample is considered as an observation. For each observation on a specimen, the measured property and the procedure are captured. 

![Observations and measurements overview](./img/om2.png){.w-50}

Various initiatives adopted ISO28258, and serialised and specialised the model for their community:

- [INSPIRE Soil](https://inspire.ec.europa.eu/Themes/127/2892) (Europe) and [ANZSoilML](https://github.com/ANZSoilData/ANZSoilML) (Australia) are implementations of iso28258 serialised as GML. 
- [ISO28258-relational](https://git.wur.nl/isric/databases/iso28258-public) is an implementation of ISO28258 modelled as a relational database.
- [Glosis Web Ontology](https://github.com/glosis-ld/glosis) is an iso28258 implementation, using common ontologies from the web, such as [semantic sensor network](https://www.w3.org/TR/vocab-ssn/).

Some examples of iso28258 implementations:

- [Soil Berlin](https://fbinter.stadt-berlin.de/fb/atom/SO/SO_BoKw2015.zip)
- [Soil chemistry Flanders](https://www.dov.vlaanderen.be/geoserver-inspire/wfs?typeNames=so:chemicalParameter&service=wfs&version=2.0.1&request=getfeature&count=10)
- [Soil Poland](http://mapy.geoportal.gov.pl/wss/service/ATOM/httpauth/download/?fileId=07dc98d25569532b4de0d85b84f52a08&name=pomorskie_5k.zip)

:::{.callout-tip}
Download a Soil GML file and try to open it in [QGIS](https://qgis.org). QGIS usually is able to display the profile locations. Alternatively you can use the [GML Appschema format in OGR](https://gdal.org/drivers/vector/gmlas.html) to generate first a SQLite database of the file, before opening it in QGIS.
:::

### (Meta)data use vocabularies that follow FAIR principles

A number of common vocabularies are relevant to the soil domain.

The [World Reference Base for soil resources](https://github.com/iuss-wrb/wrb/releases/download/v4.0-2022/WRB_fourth_edition_2022-12-18.pdf) provides a framework of soil vocabularies. These lists are partially published in [Agrovoc](https://agrovoc.fao.org/browse/agrovoc/en/page/?clang=nb&uri=c_89f35c33) and partially in the [Glosis web ontology](https://vocab.isric.org/glosis_cl).

:::{.callout-tip}
Examine the concept [Durisols](
http://aims.fao.org/aos/agrovoc/c_51ec138f) in agrovoc.

- Notice that the agrovoc page on [Durisols](https://agrovoc.fao.org/browse/agrovoc/en/page/c_51ec138f?clang=nb) looks much nicer, still it is important to use the persistent identifier when linking to the concept, why?
- Notice that Agrovoc contains many translations for each concept and linkage to wider and smaller terms. These are some of the benefits of linking to a keyword from a common thesaurus.
:::

### Metadata include qualified references to other metadata

The context of a dataset gets more clear if you link it to datasets which were used as a source, documents in which it is described, tools with which it has been produced or which tool can be used to view/process it, policies for which it has been created, etc. Consider that users also may traverse the link, to find datasets relevant to a certain policy or tool. 

---

## Reusable

Reuse of data is the main goal of FAIR, facilitated by documentation of the data, for different audiences.

### Use a clear and accessible data usage license

Users are very interested to know if and how they can use the data. This process is facilitated by adoption of a commonly available license, such as [odbl](https://opendatacommons.org/licenses/odbl/) or [cc-by](https://creativecommons.org/licenses/by/4.0/deed.en), so users (and machines) can identify the applicable license without reading a full document.

:::{.callout-tip}
Does your organisation provide guidance on which license to use on various data sources? Is it clear when, and when **not** to use an open license? Are you aware of any data sources which currently do not yet have an assigned data license?
:::

### Data are associated with detailed provenance

Provenance is the process of creation and curation of a data source. Which data sources or procedures were used to create the data source. Which processing steps have been applied to the data. What is the lifecycle of the dataset (when will it be archived).

This information is very relevant to potential users of the data, because they can understand if the data has been produced according to their expectations. 

In academia provenance is usually described in scientific articles, but note that you can also capture it (with much more detail) in a metadata record of a data source. Some tools (for example ArcGIS and SPSS) create a processing log automatically.

---

## Summary

In this section you learned about the FAIR principles and how this applies to the soil data community. In the next sections we will introduce a data management strategy we use on some of our projects. We expect some of the presented tools may be worthwile to have a closer look at, to see if it can support you in your daily tasks.