---
title: User Guideline LSC Hubs
date: 2023-11-20
author: Paul van Genuchten, Thaïsa van der Woude
---

This document is a guideline for the components of a LSC Hub.

A typical LSC hub consists of 3 components:

- A [homepage](#homepage) providing a user welcome, project attribution and documentation; 
- A [catalogue](#catalogue) which provides a search interface on the resources relevant to the hub;
- A [map viewer](#map-viewer) section for easy access to data.

Moreover, there are 2 services important for the LSC hub:
- Providing [feedback](#feedback) to improve the LSC-hub
- Providing [Additional information](#additionalinformation) to enrich the LSC-hub.


## Homepage

The entry point of the hub is a webpage with general information about the project.
The LSC-hub for Rwanda can be accessed at https://lsc-hubs.org/hubs/rwanda/.

When arriving on the homepage, you can see 6 sections:
- **Data** to find data in the [catalogue](https://rwanda.lsc-hubs.org/) or go to the [mapviewer](https://maps.lsc-hubs.org/#lsc-rwanda)
- **Predictive modelling** to find modelling software in the [hub catalogue](https://rwanda.lsc-hubs.org/collections/metadata:main/items?type=model).
- **Policy** Which [policies](https://lsc-hubs.org/hubs/rwanda/policy/) are relevant to the hub, and can the hub support policy development?
- **Information Services** to find [agricultural knowledge and innovation systems](https://lsc-hubs.org/hubs/rwanda/akis/) in Rwanda
- **Use Cases** to explore the [use cases](https://lsc-hubs.org/hubs/rwanda/usecases/) of the LSC hub
- **Hub community** to find other users in the [stakeholder list](https://lsc-hubs.org/hubs/rwanda/stakeholders/)

![LSC hub homepage](./img/homeRwanda.PNG)

**Exercise 1:** Explore the homepage of the LSC hub. Click on the links, and explore which info is in there.



## Catalogue

The central catalogue contains references to all relevant resources in the hub. 
The catalogue of Rwanda can be reached by clicking under _DATA_ on _Catalogue_ or directly by https://rwanda.lsc-hubs.org/ 

![Hub catalogue](./img/catalogueRwanda.PNG)

When you click on submit, the available records will appear.

![Hub catalogue overview](./img/cataloguerecords.PNG)

Resources are categorised into:

- Datasets
- Software 
- Model
- Services (Web services, APIs, SMS, phone and onsite services)

The catalogue allows the filtering of keywords. The 3 main keywords are: 
1. category ( _such as soil, crop, etc._),
2. spatial scope (_such as Global, National, district, etc._ ),
3. the type (_such as dataset, software, etc_).

Second, any other keyword linked to the resource can be used to search in the catalogue, for example, _land use_ or _crop yield_. This depends on which keywords are given to the resources.

**Exercise 2:** Try the keywords. Type in the search bar various keywords, such as _soil or Land use_ or click on the keywords on the side.

![Hub catalogue search](./img/cataloguesearch.png)


For each record, a number of metadata properties are provided, such as abstract, used datasets, keywords, usage constraints, and contact information.

Some records link directly to the [map viewer](#map-viewer) component. Under the image, it will say: Open _record_ in the LSC map and you will be directed to the map viewer.

**Exercise 3:** Explore the records. Click, after searching on keywords, on one of the appeared records and explore the provided information. Click on the links in the records

![Hub catalogue record](./img/cataloguepHrecord.PNG) 


## Map viewer
Spatial data can be viewed and compared in a web-based map viewer. The map viewer can be accessed on the homepage of the LSC hub, under _DATA_ and then click on _Go the map viewer_.
The map viewer can also directly be accessed at https://maps.lsc-hubs.org/#lsc-rwanda 

![Hub map vizualisation](./img/map.png)

The map viewer can used for the visualisation of existing maps listed in the LSC catalogue, your own data and web data. In this guideline, we will take you through the available functionalities of the map viewer.

**The top menu**
![mapviewer top bar](./img/mapviewer_topbar.PNG)

1. Get more information `about` the map viewer. The introduction, disclaimer and data attributes are described.
2. the `related maps` show other available maps, such as the LSC Ethiopia, LSC Keny and LSC Rwanda. If you click on one of these maps, it will zoom to those locations.
 ![mapviewer related maps](./img/mapviewer_relatedmaps.PNG)

3. `Map settings` allows you to select a different base map, such as natural earth maps or aerial maps. This depends on which base map you prefer to work with.
 ![mapviewer map settings](./img/mapviewer_mapsettings.PNG)
  
4. `Help` gives useful tips on how to use the map viewer. It provides a tour through the map viewer and a step-by-step guide. This is an interactive guideline and shows the main functionalities.
 ![mapviewer help](./img/mapviewer_help.PNG)
  
5. A `Story` is a function that allows you to create and share interactive stories directly from your map. It contains a video with an explanation of how to create them.
 ![mapviewer story](./img/mapviewer_story.PNG)
  
6. `Share/Print` generates a link to your created map, which you can share with colleagues. Anything that you have added to the map viewer will be shown in the shareable link.
      You can also use this button to download your created map as an image.   
 ![mapviewer share](./img/mapviewer_share.PNG)




**The vertical toolbar on the top right**
 ![mapviewer rightbar](./img/mapviewer_rightbar.png) 

1. Zoom in and out, and back to a full world zoom
2. Zoom to your current location
3. Compare two map data side-by-side. We will go into detail within the next section on _explore map data_.
 ![mapviewer compare](./img/mapviewer_compare.png)

4. Measure the distance on the map between two locations.
 ![mapviewer measure](./img/mapviewer_measure.png)
  
5. Provide feedback on the map viewer. Feedback is essential to improve the map viewer and to ensure that the map viewer fits the user's needs. If you have any feedback on the map viewer, you can give it by this button.
 ![mapviewer feedback](./img/mapviewer_feedback.png)


**Exercise 4:** Explore the basic settings of the mapviewer. Change the map settings, take the tour at the help button, download your current map, measure distances and go to your location.


**The Sidebar**
The sidebar is the main location for adding maps to the map viewer and visualising your own data or any other web data.

   - `Search for locations` allows you to search for a specific location and go to your area of interest.
 ![mapviewer location](./img/mapviewer_location.png)
     
   - `Explore map data` shows a listing of datasets that can be added to the map via a catalogue search or directly from available maps. If the panel is empty, select an alternative map from `related maps`.
      ![mapviewer explore](./img/mapviewer_explore.png)

     Under the available maps, you can click on a property map to which you would like to add the viewer. It shows, for example, for the property pH, 4 maps: the 5% prediction value, the 95% prediction value, the median of predictions and the pH map.
     The values are given for pH*10 for better visualisation. Under the data preview, the metadata of the map is given. You can add the map to the map viewer by clicking on `Add to the map`. 

![mapviewer add](./img/mapviewer_add.png)
    
   You can add as many maps to the Mapviewer as you want. For example, you add another map of Organic Carbon.
![mapviewer add2](./img/mapviewer_add2.png)

   If you now click on the `compare` button as described in the previous section, and put one layer to the left and the other to the right, you can compare the layers side-by-side.
![mapviewer compare2](./img/mapviewer_compare2.png)

   `About data` brings you back to the Explore map Data, and shows you the metadata describing the map. The description gives in addition which datasets are used to generate the maps.
   
   - `Upload` provides the option to open a dataset from the local computer. Note that this data is not uploaded to a server, so this data is not shared with anyone else. You can also add `web data` from this panel to the map viewer.
![mapviewer localweb](./img/mapviewer_localweb.png)

     For local files, you first need to select a file type. The file should have a spatial component and/or coordinates in order to add it to the map viewer. In step 2, you browse your file on your local computer.
![mapviewer local](./img/mapviewer_local.PNG)

     For web data, you first need to select the file or web service type. In step 2, you will add the URL in order to add the web data. For example, you can add the ESA land cover map as a WMS layer. The URL is: https://worldcover2020.esa.int/geoserver/gwc/service/wms?SERVICE=WMS&VERSION=1.1.1

     You can compare these maps with other added maps, through the compare button.
 ![mapviewer web](./img/mapviewer_web.PNG)  

    
   - As soon as layers are loaded on the map, you can set the order of the layers, view a legend of the layer, zoom to its extent, set its opacity and view the metadata of the data. 

**Exercise 5:** 



## Feedback to LSC hub

Notice that every page or resource on the hub provides an option to provide feedback and/or ask a question related to the content. Contributions to the hub require a [Github login](https://github.com/signup?ref_cta=Sign+up).


## Additional information
The stakeholders keep ownership in the LSC hub. The catalogue can be linked to various information sources, without that the data is stored on the LSC hub. Therefore, if you know existing information sources that are missing and should be added, there is a way to add the information by using an ODK form.

An Open Data Kit (ODK) form is a form that provides a structured way to collect and provide information. Typically forms are used by data collectors via an online link. The LSC-hub ODK form can accessed by: [ODK form LSC-IS](https://odk.isric.org/-/single/n2Sosp1gxbXLUcOelRBWsMru72DSLFb?st=pi9NCIyCBZIeYuVU0lb812NtQfOucM34dS04qF6GFaao2FB!c3DJDl10TTRTeOUJ)
