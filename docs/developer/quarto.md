---
title: quarto
date: 2023-11-13
author: Paul van Genuchten
---

[Quarto](https://quarto.org) is a content management framework. Content is maintained as markdown files. Python or R scripts can be included within markdown to create diagrams or maps. A [visual studio plugin](https://marketplace.visualstudio.com/items?itemName=quarto.quarto) is available, which enables html previews within Visual Studio. You can also render the content to .docx, .pdf, .pptx and .revealjs.

- Website: <https://quarto.org>
- Github: <https://github.com/quarto-dev/quarto>

## Quarto in LSC-hubs

This documentation, as well as the hub website are generated with Quarto. The markdown files are stored on a [git repository](https://github.com/lsc-hubs/hub-core). CI/CD [action](https://github.com/lsc-hubs/hub-core/blob/main/.github/workflows/main.yml) has been set up, so with every push to the git repository, a new set of html pages is created and published to an online environment.

