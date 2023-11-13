---
title: User documentation LSC Hubs
date: 2023-11-13
author: Paul van Genuchten
---

This document describes the components of a LSC Hub from a user perspective.

A typical LSC hub consists of 3 components:

- A [content section](#content-section) providing a user welcome, project attribution and documentation 
- A [catalogue section](#catalogue-section) which provides a search interface on the resources relevant to the hub
- A [map vizualisation](#map-vizualization) section for easy access to data

## Content section

The entry point of the hub are some webpages with general information about the project.

More content is available in the [documentation section](./docs). 

![LSC hub homepage](./img/home.png)

Notice that every page or resource on the hub provides an option to provide feedback and/or ask a question related to the content. Contributions to the hub require a [Github login](https://github.com/signup?ref_cta=Sign+up).

## Catalogue section

The central catalogue contains references to all relevant resources in the hub. For each reference a number of metadata properties are provided, such as abstract, keywords, usage constraints, contact information.

![Hub catalogue](./img/catalogue.png)

Resources are categorised in:

- Datasets
- Software 
- Model
- Services (Web services, API's, SMS, phone and onsite services)

The catalogue allows to filter a resultset by relevant filters. 

Some records provide linkage to a preview option of the resource in the [map vizualization](#map-vizualization) component.

Read more about the capabilities of the catalogue component at [pycsw](https://docs.pycsw.org/en/latest/).

## Map vizualization

Spatial data can be viewed and compared in a webbased map viewer. You can open one of the existing map contexts via the `related maps` menu. Or create a map from scratch by combining datasets found in the catalogue or from other sources.

![Hub map vizualisation](./img/map.png)

A listing of available functionalities:

- The Sidebar
    - `Explore map data` shows a listing of datasets which can be added to the map, either via a catalogue search or directly from a configured map service. If the panel is empty, select an alternative map from `related maps`.
    - `Upload` provides the option to open a dataset from the local computer. Note that this data is not uploaded to a server, so this data is not shared with colleagues. You can also reference `web data` from this panel.
    - As soon as layers are loaded on the map, you can set the order of the layers, view a legend of the layer, zoom to its extent, set its opacity and view the metadata of the data. 
- The vertical toolbar on the top right
    - Zoom in and out, and back to a full world zoom
    - Zoom to your current location
    - Split the map in a left and right, to compare 2 datasets
    - Measure a distance on the map
- The top menu
    - Get more information `about` the map viewer
    - Select one of a set of `related maps`
    - `Map settings` allows to select a different base map
    - `Help` opens the viewer documentation
    - A `Story` is a series of views on various datasets with comments
    - `Share` generates a link to the current map, which you can share with collegues  

Read more about the capabilities of the component at [terriajs](https://docs.terria.io/guide/).
