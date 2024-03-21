---
title: "Land Soil Crop Hub"
sidebar: false
include-in-header:
  text: <script>var catalog = '{{< var catalog >}}';</script><script src="./js/index.js"></script><style>#title-block-header { display:none; }</style>
---

:::: {.grid}

::: {.g-col-12 .g-col-md-8 .mt-3}

# {{< var country  >}} Land, Soil and Crop Hub 

The Land, Soil and Crop (LSC) hub facilitates effective access to land soil and crop information data by making existing resources better findable, accessible, interoperable and reusable.

The LSC hub promotes improved decision-making for climate-smart agriculture at national, regional and local levels. It can be utilised, for example, for 
[soil fertility management]{(https://kenya.lsc-hubs.org/cases/isfm.html) and [soil water conservation](https://kenya.lsc-hubs.org/cases/swc.html)

The LSC hub is being developed as part of the Land, Soil and Crop Information Services (LSC-IS) to support Climate-Smart Agriculture (DeSIRA) project in East Africa. 
[Read more about the project](https://lsc-hubs.org/).

:::

::: {.g-col-12 .g-col-md-4 .mt-3}

![](./img/Kenya%20land%20soil%20crop%20data%201.svg)

:::

::::

::: {.special-section}

## Data

The LSC hub offers a diverse range of datasets, maps and documents, including observational data from field studies (e.g., soil and water samples, crop yields), aerial and space observations, administrative boundaries, economic data (price development), predictive model outputs (soil, weather, yields), and population statistics.

### Datasets {.pb-3}

Search datasets or browse by category.

<form class="pb-2" action="{{< var catalog >}}/collections/metadata:main/items" method=get>
<div class="input-group mb-3">
  <input type="text" name="q" class="form-control" >
  <div><input type=submit class="btn btn-success form-control" type="button" value=Search>
  </div>
</div>
</form>

:::: {.columns .pt-2}

::: {.column width="20%"}

![](./img/icon/land.svg) [Land]({{< var catalog >}}/collections/metadata:main/items?q=&keywords=Land)

:::

::: {.column width="20%"}

![](./img/icon/soil.svg) [Soil]({{< var catalog >}}/collections/metadata:main/items?q=&keywords=Soil)

:::

::: {.column width="20%"}

![](./img/icon/crop.svg) [Crop]({{< var catalog >}}/collections/metadata:main/items?q=&keywords=Crop)

:::

::: {.column width="20%"}

![](./img/icon/climate.svg) [Climate]({{< var catalog >}}/collections/metadata:main/items?q=&keywords=Climate)

:::

::: {.column width="20%"}

![](./img/icon/water.svg) [Water]({{< var catalog >}}/collections/metadata:main/items?q=&keywords=Water)

:::

::::


:::: {.grid}

::: {.g-col-md-6 .g-col-12 .rounded .bg-white .border .px-3 .border-secondary .shadow .mt-3}

:::: {.grid .mx-3}

::: {.g-col-8}

### Maps

The interactive mapviewer enables direct interaction with data. 
View existing, reference remote or upload local data.

:::

::: {.g-col-4}

![](./img/undraw_connected_world_wuay%201.svg){.my-3}

:::

::::

::: {.text-center .pt-3}
[Open mapviewer]({{< var maps >}}){.btn .btn-warning .rounded-pill} 
:::

:::

::: {.g-col-md-6 .g-col-12 .rounded .bg-white .px-3 .border .border-secondary .shadow .mt-3}

:::: {.grid .mx-3}

::: {.g-col-8  }

### Documentation

Documentation on how to use the hub, the data api's and other resources.

:::

::: {.g-col-4}

![](./img/Group%20856.svg){.my-3}

:::

::::

::: {.text-center .pt-3}
[View documents](/docs){.btn .btn-warning .rounded-pill} 
:::

::::

:::

:::

:::: {.grid}

::: {.g-col-md-6 .g-col-12  .mt-3}

## Information services

Information services provide dedicated information derived from relevant data to a targeted audience.

Processing raw data in many cases requires expert knowledge. To bring the value of the data to a wider audience, it is of interest to set up information services derived from that data to targeted audiences.

[Browse services]({{< var catalog >}}/collections/metadata:main/items?q=&type=service){.btn .btn-warning .rounded-pill}
[Read more](./cases/services.md){.btn .btn-success .rounded-pill}

:::

::: {.g-col-12 .g-col-md-6 .mt-3}

![](./img/Land%20soil%20crop%20information%20services%201mobile.svg)

:::

::::

### Popular services {.py-3}

:::: {.grid .text-left}

::: {.g-col .rounded .text-light .bg-dark}

Loading... 

:::

::::

::: {.text-center .mt-5}
[View all popular services]({{< var catalog >}}/collections/metadata:main/items?q=&type=service){.btn .btn-success .rounded-pill .shadow}
:::



::: {.special-section}

:::: {.grid}

::: {.g-col-md-6 .g-col-12 .mt-3}

## Predictive modeling 

Predictive modeling in the LSC hub focuses on Soil Fertility and Soil Water Conservation and is a data-driven analytical approach that involves the use of statistical or machine learning techniques to create models that can make predictions about future events or outcomes based on historical data.

[Browse models]({{< var catalog >}}/collections/metadata:main/items?q=&type=model){.btn .btn-warning .rounded-pill .shadow}
[Read more](./cases/models.md){.btn .btn-success .rounded-pill .shadow}

:::

::: {.g-col-md-6 .g-col-12 .mt-3}

![](./img/undraw_detailed_examination_re_ieui%201modelling.svg)

:::

::::

### Popular Models {.py-3}

:::: {.grid}

::: {.g-col .p-2 .bg-white .rounded .border}

Loading... 

:::

::::

::: {.text-center .mt-5}
[View all popular models]({{< var catalog >}}/collections/metadata:main/items?sortby=-updated&type=model){.btn .btn-success .rounded-pill}
:::

:::

## Use cases

The two cases below are descriptions of key applications for which the LSC hub can be used, including the main stakeholders, the main issues and the models through which ‘LSC data’ is converted into information services that support informed decision making.


:::: {.grid}

::: {.g-col-md-6 .g-col-12 .rounded .text-light .bg-dark .mt-3}

![](./img/adams-korir-5gzZo_nQBIM-unsplash%201.jpg){.w-100}

::: {.px-3 .text-light}

<div class="border rounded w-25 text-light text-center">USE CASE</div>

### [Soil Fertility Management](./cases/isfm.md){.text-light .text-decoration-none}

Current fertilizer and soil recommendations lack local context, leading to soil health decline and lower productivity. Integrated Soil Fertility Management can improve practices, boost yields, and provide climate benefits. This case aims to deliver better agronomic advice to farmers via agricultural extension services or directly, using existing data and tools.

::: {.text-center .pt-2}
[Explore this use case](./cases/isfm.md){.btn .btn-success .rounded-pill}
:::

:::

:::

::: {.g-col-md-6 .g-col-12 .rounded .text-light .bg-dark .mt-3}

![](./img/martin-yegon-Q8PAVNd36cQ-unsplash%201.jpg){.w-100}

::: {.px-3 .text-light}

<div class="border rounded w-25 text-light text-center">USE CASE</div>

### [Soil Water Conservation](./cases/swc.md){.text-light .text-decoration-none}

Soil erosion threatens sustainability, climate, and food security in hilly regions of Ethiopia, Kenya, and Rwanda. Current land practices neglect local factors and erosion risks. The goal is to inform stakeholders and promote sustainable land practices for LDN, providing catchment managers and farmers with relevant information through the LSC-hub.

::: {.text-center .pt-2}
[Explore this use case](./cases/swc.md){.btn .btn-success .rounded-pill}
:::

:::

:::

::::

---

:::: {.grid }

::: {.g-col-md-6 .g-col-12 .mt-3}



## Hub community

The heart of the knowledge hub. Here, you’ll find like-minded participants who share a passion for learning and knowledge exchange.

Join our diverse community of learners, experts, and enthusiasts to engage in discussions, share insights, and collaborate on soil fertility and soil water conservation topics. Explore, connect,  contribute and make the hub grow.

::: {.text-center .mt-2}
[Visit community]({{< var github >}}){.btn .btn-success .rounded-pill}
:::

:::

::: {.g-col-md-6 .g-col-12 .mt-3}

![](./img/land%20soil%20crop%20hub%20community%201.svg)

:::

::::

::: {.special-section}

::: {.text-light .bg-dark .px-3 .rounded}

:::: {.grid }

::: {.g-col-md-6 .g-col-12 .px-3 }


## Join our newsletter {.text-light}

Subscribe to our newsletter and be the first to receive the latest data updates and community news about the {{< var country >}} Land Soil and Crop hub.

::: {.text-center .mt-2}
[Subscribe now](https://capacity4dev.europa.eu/join-community_en){.btn .btn-success .rounded-pill}
:::

::: 

::: {.g-col-md-6 .g-col-12 .mt-2}

![](./img/undraw_content_creator_re_pt5b%201.svg)

:::

::::

:::

:::

