---
title: Catalogue publication
author: Paul van Genuchten
date: 2023-05-09
---

# Catalogue publication

Catalogues facilitate data discovery in 3 ways:

- Users can go to the catalogue website and search for data
- Applications such as QGIS and TerriaJS can let users query the catalogue, evaluate the metadata, and directly add the related data to their project
- Search engines crawl public catalogues and include the records in their search results

:::{.callout-note}
An important aspect is proper setup of autorisations for general public, partners and co-workers to access metadata as well as the actual data files behind the metadata. A general rule-of-thumb is that metadata can usually be widely shared, but data services with sensitive content should be properly protected. In some cases organisations even remove the data url from the public metadata, to prevent abuse of those urls. If a resource is not available to all, this can be indicated in metadata as 'access-constraints'.
:::

---

## Extract metadata from a network location

Now that we have a series of datasets with their sidecar metadata file (either in iso19139 or MCF). We can use GeoDataCrawler to extract these files and publish them in a catalogue product. 

Notice that GeoDataCrawler has an advanced inheriting mechanism to find default values for non provided metadata elements. GeoDataCrawler will read `index.yml` in the current folder and any parent folder to find relevant properties. This enables an option to provide a contact point, license or language property once and use it in all metadata.

- First we run a method to convert all .mcf files to iso19139:2007, these files are generated on a temporary folder.

```bash
crawl-metadata --mode=export --dir=./data --dir-out=./temp
```

---

## Catalogue frontend

Various catalogue frontends exist to facilitate dataset search, such as [geonetwork](https://geonetwork-opensource.org), [dataverse](https://dataverse.org), [ckan](https://ckan.org). Selecting a frontend depends on metadata format, target audience, types of data, maintenance aspects, personal preference.

For this workshop we are going to use [pycsw](https://pycsw.org). It is a catalogue software supporting various standardised query api's, as well as providing a basic easy-to-adjust html web interface. 

For this exersize we assume you have docker-desktop installed on your system and running.

pycsw is available as docker image, including an embedded SQLite database. In a production situation you would use a dedicated Postgres or MariaDB database for record storage. 

- Navigate your shell to the temporary folder containing iso-xml documents. This folder will be mounted into the container, in order to load the records to the pycsw database.

```bash
docker run -p 8000:8000 \
   -v $(pwd):/etc/data \
   geopython/pycsw
```

- Visit http://localhost:8000 
- Much of the configuration of pycsw (title, contact details, database connection, url) is managed in [a config file](https://github.com/geopython/pycsw/blob/master/docker/pycsw.cfg). Download the file to the current folder, adjust the title and restart docker with:

```bash
docker run -p 8000:8000 \
   -d -rm --name=pycsw \
   -v $(pwd):/etc/data \
   -v $(pwd)/pycsw.cfg:/etc/pycsw/pycsw.cfg \
   geopython/pycsw
```

:::{.callout-note}
Notice `-d` starts the docker in the background, so we can interact with the running container. To see which instances are running (in the background) use `docker ps`. `docker logs pycsw` shows the logs of a container and `docker stop pycsw` stops the container. The `-rm` option removes the container at stop, so we can easily recreate it with additional options at next runs.
:::

- For administering the instance we use a utility called `pycsw-admin.py`. Notice on the calls below a reference to a relevant config file. 
- First clear the existing database:

```bash
docker exec -it pycsw bash -c "pycsw-admin.py delete-records -c /etc/pycsw/pycsw.cfg"
```
- Notice at http://localhost:8000/collections/metadata:main/items that all records are removed.
- Load our records to the database:

```bash
docker exec -it pycsw bash -c "pycsw-admin.py load-records -p /etc/conf/data -c /etc/pycsw/pycsw.cfg -y -r"
```

- Validate at http://localhost:8000/collections/metadata:main/items if our records are loaded, else check logs to identify a problem.

---

## Summary

In this paragraph you learned how datasets can be published into a catalogue. In the next paragraph, you'll get introduced to providing mapping api's on datasets. Or check out the [advanced section](./9-advanced-options.md) on how to customise your pycsw frontend.
