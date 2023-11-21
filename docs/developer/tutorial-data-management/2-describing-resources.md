---
title: Describing resources
author: Paul van Genuchten
date: 2023-05-09
---

When describing a resource, consider which user groups are expected to read the information. This analyses will likely impact the style of writing in the metadata. The UK Geospatial Commission has published some [practical recommendations](https://www.gov.uk/government/publications/search-engine-optimisation-for-publishers-best-practice-guide) on this topic.

When tagging the dataset with keywords, preferably use keywords from controlled vocabularies like Agrovoc, Wikipedia, etc. Benefit of controlled vocabularies is that the term is not ambigue and it can be made available in multiple languages. 

## MCF editing

MCF documents can best be written in a text editor like [Visual Studio Code](https://code.visualstudio.com). Consider to install the [YAML plugin](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) for instant YAML validation. 

Another option to create and update mcf files is via [MDME](https://github.com/osgeo/mdme). MDME is a webbased software package providing a dynamic metadata edit form. An operational package is available at [osgeo.github.io](https://osgeo.github.io/mdme). Notice that if you install the package locally, you can customize the metadata schema and initial template to your organisational needs.

Open mdme and populate the form, now save the MCF file and place it in your sample data repository. Notice that MDME also offers capabilities to export directly as iso19139, it uses a webservice based on pygeometa to facilitate this workflow.

## MCF validation

[pygeometa](https://geopython.github.io/pygeometa/) is the library build around the mcf format. pygeometa has options to import from and export to mcf for various metadata schemas. pygeometa also has a validate method to validate if an mcf document is properly structured.

pygeometa has already been installed, while installing geodatacrawler, else you can install it with `pip install pygeometa`.

``` 
pygeometa validate path/to/file.yml
```

Notice that the validator is quite strict, it expects a number of metadata properties to be present. Notice that you can customise this validation at implementation.

## Summary

In this paragraph you are introduced to the MDME MCF editor and pygeometa library. In the [next section]() we are looking at bulk metadata imports.
