---
title: Administration
date: 2023-11-13
author: Paul van Genuchten
---

# LSC Hub administration

## LSC Hub


## Maps


## Catalogue 

The catalogue can be linked to various information sources, without the data being stored on the LSC hub. Therefore, if you know existing information sources that are missing and should be added. Proving metadata is essential for findability and to avoid ambiguity. 

Source of catalogue records is maintained at [github](https://github.com/lsc-hubs/kenya-catalogue). Records are organised in Global, Continental, and country. Within country they are organised by portal/initiative.

Metadata records are stored in the [mcf](https://geopython.github.io/pygeometa/reference/mcf/) format, a subset of iso19115 in a conveniant yaml encoding. But you can also add them as iso19115 xml format.

A number of mechanisms is available to load records into the catalogue.

- Import records from external sources, such as data portals (zenodo, dataverse, CSW, STAC, OSF)
- Mcf records can be created using [mdme](https://osgeo.github.io/mdme)
- A [Excel template](https://github.com/lsc-hubs/kenya-catalogue/blob/main/portals/KE/LSC/index.csv) is available, on which resources can be described. A single resource per record.
- An [ODK form](https://odk.isric.org/-/single/n2Sosp1gxbXLUcOelRBWsMru72DSLFb?st=pi9NCIyCBZIeYuVU0lb812NtQfOucM34dS04qF6GFaao2FB!c3DJDl10TTRTeOUJ) is available on which users can describe resources

![ODK](./img/ODK.PNG){.w-50}  

