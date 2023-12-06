---
title: Advanced options
author: Paul van Genuchten
date: 2023-05-09
---

Various extensions are possible to tailor the system to your organisation needs.

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

---

## Tailored metadata schema in mcf / pygeometa

When using pygeometa to render a iso19139 document, you can use a [tailered output schema](https://geopython.github.io/pygeometa/tutorial/#adding-a-metadata-schema-to-the-core), to match organisation needs (for example use a hardcoded publisher section).

MCF allows to add any additional properties not listed on the json schema, which is a very easy way to extend the schema. However note that MCF validation may fail. 

GeoDataCrawler internally uses pygeometa to manage mcf, a location of a extended schema is one of the optional parameters to GeoDataCrawler.

MDME does not use the [mcf json schema](https://github.com/geopython/pygeometa/blob/master/pygeometa/schemas/mcf/core.yaml) as-is, because some of the mcf json schema elements are not supported by MDME. In case you extend the MCF schema and aim to use MDME, you need to also extend the MDME schema likewise.

---

## Publishing (extended) vocabularies 

In some cases it is relevant as a national or regional coordinator to publish a (extended) codelist which provides concepts which are only relevant within your area. users in your area can then easily link to the concepts in that vocabulary and benefit from the regional interoperability.

The SKOS ontology is a commonly accepted mechanism to create vocabularies. It allows to link concepts to similar, wider or narrower concepts. When creating a new vocabulary you typically start with a list of concepts in Excel.

The Glosis web ontology contains [a transformer script](https://github.com/glosis-ld/glosis/tree/master/utils/transformer_tool) which convert a csv (exported from Excel) file to a skos document, alternatively you can use a tool such as [skos play](https://labs.sparna.fr/skos-play/). The skos file can best be hosted on a git repository. Anybody can access it, and provide improvement suggestions.

The python [vocview library](https://github.com/ternaustralia/vocview) is able to render a skos file to a nice web layout which is easy to browse and search through by humans. See a live [implementation at tern](https://linkeddata.tern.org.au/viewer/tern/).


--- 

## Summary

With this topic we conclude our training on data management. We hope you enjoyed the materials. Notice that the training can act as a starting point to a number of other resources. Let us know via [Git issues](https://github.com/lsc-hubs/hub-core/issues) if you have improvement suggestions for the materials.