---
title: Advanced options
author: Paul van Genuchten
date: 2023-05-09
---

# Advanced options

Various extensions are possible to tailor the system to your organisation needs.

## pycsw

The pycsw [configuration file](https://github.com/geopython/pycsw/blob/45f6c5ca4b19e6e2be4dfc7237b5d834500054ae/default-sample.cfg#L55-L76) has a number of configuration options to tailer the title, abstract, etc, of the application. But you can also tailor the [jinja2 templates](https://github.com/geopython/pycsw/tree/master/pycsw/ogc/api/templates). We published a tailored set of templates as a [pycsw skin on github](https://github.com/pvgenuchten/pycsw-skin).

pycsw allows to extend the internal metadata schema [via mapping configuration](https://github.com/geopython/pycsw/blob/master/etc/mappings.py) or map its model to an existing database. This configuration can facilitate additional queryables or extra elements on metadata records, etc.

## TerriaJS

[TerriaJS](https://terria.io) is a modern web gis application, which includes a widget to query a catalogue. From the catalogue search results the data can be added to the TerriaJS map.

The main [docker image definition](https://github.com/TerriaJS/TerriaMap/blob/main/deploy/docker/Dockerfile) can be used to build and run terriaJS locally.

```
git clone https://github.com/TerriaJS/TerriaMap
cd TerriaMap
docker build -t local/terria .
docker run -p 3001:3001 local/terria
```

Visit http://localhost:3001 to see TerriaJS in action. 

## Tailored metadata schema in mcf / pygeometa

When using pygeometa to render a iso19139 document, you can use a [tailered output schema](https://geopython.github.io/pygeometa/tutorial/#adding-a-metadata-schema-to-the-core), to match organisation needs (for example use a hardcoded publisher section).

MCF allows to add any additional properties not listed on the json schema, which is a very easy way to extend the schema. However note that MCF validation may fail. 

GeoDataCrawler internally uses pygeometa to manage mcf, a location of a extended schema is one of the optional parameters to GeoDataCrawler.

MDME does not use the [mcf json schema](https://github.com/geopython/pygeometa/blob/master/pygeometa/schemas/mcf/core.yaml) as-is, because some of the mcf json schema elements are not supported by MDME. In case you extend the MCF schema and aim to use MDME, you need to also extend the MDME schema likewise.