---
title: terria js
date: 2023-11-13
author: Paul van Genuchten
---

[TerriaJS](https://terria.io) is a web based vizualisation tool. This document describes how terriajs has been customised and deployed to fit the needs of LSC Hubs. 

TerriaMap is a ready-made web environment for the the terriaJS library.

A docker container definition for TerriaMap is available at [github](https://github.com/TerriaJS/TerriaMap/blob/main/Dockerfile).

On the container a number of files need to be overridden with tailored changes (to update titles, logo's colors).

- [wwwroot/about.html](https://github.com/TerriaJS/TerriaMap/blob/main/wwwroot/about.html) contains the text of the about page
- [wwwroot/config.json](https://github.com/TerriaJS/TerriaMap/blob/main/wwwroot/config.json) contains the config of the main application
- [init/simple.json](https://github.com/TerriaJS/TerriaMap/blob/main/wwwroot/init/simple.json) and other map files in this folder can be used as predefined maps

You can either override these files as part of the container build process or add the files st container deployment.