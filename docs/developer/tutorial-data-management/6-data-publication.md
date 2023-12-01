---
title: Data publication
author: Paul van Genuchten
date: 2023-09-23
---

# Data publication

In order to share a dataset with colleagues, partners or the wider public. The file should be published in a shared environment. Various technologies are available to share a file on a network. To select a relevant location mainly depends on which type of users are going to access the dataset.

The following options exist:

- A shared folder on a central server on the local intranet. Notice that this location is usually not available by remote partners. Make sure a backup is made of the network folder, in case of incidents. 
- A cloud service such as Google Drive, Mirosoft Sharepoint, Dropbox, Amazon Webservices. Such a service can also be setup locally. A minimal solution would be to set up a Webdav service.
- A data repository such as Zenodo, Dataverse, Open Science Foundation. With this option metadata of the resource is automatically collected and made searchable. Some catalogue software, such as CKAN, GeoNode, GeoNetwork offers the capability to publish data files as part of the metadata registration.

---

## Persistent identification

Select the location carefully, prevent to regularly move a file to a new location. Because with every move, users need to be notified of the new location and documentation needs to be updated. When moving is relevant, consider to set up a [forward-rule](https://en.wikipedia.org/forward-rule) on the server which redirects users to the new location. 

An interesting aspect of persistent identification is the choice of a domain and path name. A domain should represent enough credibility/authority (is this a trusted resource), and should be persistent for a longer period. A project name, for example, is not a good choice for a domain to publish a resource. 

A mechanism exists which facilitates file moves, without breaking their identification. Identifier providers such as [DOI](https://doi.org) and [W3ID](https://w3id.org) enable to create a identifier for any resource. In documentation use the provided identifier, in case the location of the resource changes, you can update the link behind the identifier. Some organisations install a identification service themselves, so they have full ownership on the domain and the contents of the service. An example of such a service is the [identification service of the German Federal Government](https://www.gdi-de.org/en/SDI/components/GDI-DE%20Registry).

---

## Include metadata

For optimal discoverability, it is important to combine data publication with metadata. Either via embedded metadata in the file, else with a separate metadata file. In case of a shared folder or cloud service, embed or place the metadata along the data files, so people browsing through the system can easily find it.

The embedded or sidecar metadata should be duplicated into catalogue software, to make it searchable by the targeted audience. This proces is further described at [catalogue publication](./3-catalog-publication.md).

---

## Conclusion

Various technologies exist to share data on a network. When selecting a mechanism, evaluate if you can facilitate identifier persistence and share metadata along with the files. In the next section we'll setup [conveniance API's](./7-providing-mapservices.md) on data to facilitate reuse of the data.