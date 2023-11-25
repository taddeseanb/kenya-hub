---
title: FAIR data
author: Paul van Genuchten
date: 2023-11-23
---

The [FAIR principles](https://www.go-fair.org/fair-principles/) are considered a good practice on data sharing in academic communities and beyond. 
Similar initiatives exist which may be more relevant for dedicated communities or scenarios:

- [W3C Data on the web best practices](https://www.w3.org/TR/dwbp/)
- [Open government data principles](https://public.resource.org/8_principles.html)
- [European INSPIRE Directive](https://inspire.ec.europa.eu/inspire-directive/2)

In this paragraph we present a number of exercises around the FAIR principles. FAIR Data is:

- [Findable](#findable)
- [Accessible](#accessible)
- [Interoperable](#interoperable)
- [Reusable](#reusable)

## Findable

Metadata and data should be easy to find for both humans and computers, by:

### Data and metadata have a unique persistent identifier

- A local identifier is usually combined with a namespace, to create a globally unique identifier (URI). 
- Do not use product names, project names, group names in uri's, it is difficult to maintain persistence.
- Frameworks such as [DOI](https://doi.org) and [W3ID](https://w3id.org/) offer a persistent identification layer for online resources.

:::{.callout-tip}
For the following datasets, review the uniqueness and persistence of their identifier as well as of their metadata

- Locate some datasets on your local machine or organisation network
- Locate some datasets on the web
:::

### Describe the resource with rich metadata

Rich metadata includes aspects such as, title, abstract, keywords, who is the author/owner of the resource, when was the resource created, 
are there any usage constraints, how does the resource relate to other resources.

:::{.callout-tip}
To evaluate if a tiff-dataset containing `texture-clay` is relevant to answer your question on soil water availability, 
which aspects would you expect a metadata description of that dataset to include?
:::

### Metadata are searchable in a catalogue

In order to find metadata efficiently, metadata records should be listed in a intuitive search interface

:::{.callout-tip}
Navigate to <https://www.geoportal.org/> and search for a dataset on texture in your area. Note down which aspects you would like to see improved 
to locate a dataset, or know when to stop searching, because you assume you have located the best match in the catalogue. 
:::

## Accessible

### (Meta)data are retrievable by their identifier using a standardised communications protocol

### The protocol allows for an authentication and authorisation procedure, where necessary

### Metadata are accessible, even when the data are no longer available

## Interoperable

### (Meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation.

### (Meta)data use vocabularies that follow FAIR principles

### (Meta)data include qualified references to other (meta)data

## Reusable

### (Meta)data are richly described with a plurality of accurate and relevant attributes

### (Meta)data are released with a clear and accessible data usage license

### (Meta)data are associated with detailed provenance

### (Meta)data meet domain-relevant community standards
