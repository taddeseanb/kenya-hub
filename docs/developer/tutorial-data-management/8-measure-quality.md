---
title: Quality of Service
summary: Page content is derived from https://github.com/ejpsoil/soildata-assimilation-guidance
author: Paul van Genuchten
date: 2022-11-10
---
 
# Quality of service

Quality of service monitoring practices support data providers to understand strengths and weaknesses of a system. Aspects which are monitored are:

- Availability (% of the time that the service has been available)
- Performance and capacity 
- Usage (how much are the services used)

Quality of service monitoring is a standard activity in IT. Therefore consult your IT department or hosting company if they have tools available to assess these aspects. Confirm with them on how to extend and/or share with you these measurements for the requested parameters. Combine these reports into monthly or quarterly reports to facilitate policy development. Below exersizes

---

## Availability Monitoring Exercise

To assess the availability of a service, it requires to monitor the availability of the service at intervals. A basic availability-test every 5 minutes is usually sufficient. Many software exists for availability monitoring, such as [Zabbix](https://zabbix.com/), [Nagios](https://nagios.org/), [CheckMK](https://checkmk.com/), [pingdom](https://www.pingdom.com/). A special mention for the Python based [GeoHealthCheck](https://geohealthcheck.org/) package, which includes the capability on WMS/WFS services to drill down to the data level starting from the GetCapabilities operation.

This exersize assumes docker desktop to be installed. Alternatively you can create a personal account at https://demo.geohealthcheck.org (click register in the login page). 

- Start by setting up a local GeoHealthCheck container:

```bash
docker run --name ghc -p 80:80 geopython/geohealthcheck
```
- Visit http://localhost
- Login as user: admin, password: admin
- Click `ADD +` on the top bar right, select `WMS`
- Add a WMS url, for example https://maps.isric.org/mapserv?map=/map/wrb.map
- On the next screen add `WMS Drilldown` (so all layers are validated)
- Click `Save and test`
- When finished, click Details to see the test result

This test is automatically repeated at intervals (as long the service is running). You can return to the test page to evaluate a diagram of availability over time.

---

## Performance & Capacity testing

To know the capacity and performance of a service you can perform some load tests prior to moving to production. An alternative approach to evaluate performance is to extract the access logs of the service into an aggregation tool like [Kibana](https://www.elastic.co/kibana) and evaluate the number of requests exceeding the limits.

[!NOTE]  
A common challenge to service performance is the provision of a WMS service on a big dataset. When requesting that dataset on a continental or national level, the server runs into problems drawing all the data at once. In such case consider to set up some cache/aggregation mechanism for larger areas. Setting proper min/max scale denominators may be a solution also.

[jmeter](https://jmeter.apache.org/) is a utility which can run a series of performance and capacity tests on a webservice.
Jmeter is a java program, which can run on most platforms. 

- Download the latest version from the [apache website](https://jmeter.apache.org/download_jmeter.cgi). 
- Unzip the archive and run `jmeter.bat` from bin directory.
- Follow the [build web test plan](https://jmeter.apache.org/usermanual/build-web-test-plan.html) tutorial. 
- Customise the web test plan for your mapserver service

[!NOTE]  
Do not perform a load test against a production url, it wil severely impact the performance of that service. 

---

## Usage monitoring

To capture the usage of a service you can extract the usage logs and import them in a tool like [Kibana](https://www.elastic.co/kibana), [Splunk](https://www.splunk.com/), [Matomo](https://matomo.org/) or [AW stats](https://awstats.sourceforge.io/). For spatial data, it is interesting to define rules to extract the requested layer name from a WMS request. 

[AWStats](https://awstats.sourceforge.io/) is a basic utility to report on service usage. 

- Navigate to an empty folder, place a [sample log file](https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs) in the folder, rename the file to `access.log`.
- Start a container

```
docker run -d --restart always --publish 3000:80 --name awstats --volume $(pwd):/var/local/log:ro pabra/awstats
```

- Parse the logs:

```
docker exec awstats awstats_updateall.pl now
```

- View the dashboard at http://localhost:3000, navigate to `May 2015` to see the parsed logs from the sample.

---

### Search Engine Optimisation

As part of usage monitoring it is also of interest to understand how users find your data via search engines. The popular search engines offer [tooling](https://search.google.com/search-console) to report on how the crawlers navigate through your data and how users find your services. You need to [verify ownership](https://support.google.com/webmasters/answer/9008080?hl=en) of a domain either via a DNS property or by uploading an identification string to the website. 

You can also use [Google rich result test](https://search.google.com/test/rich-results) to extract structured data from a website. Or go to the [dataset search engine](https://datasetsearch.research.google.com/) to understand if and how the search engine finds your data.

---

## Summary

In this section you learned about various mechanisms to evaluate, report about and improve service quality. This concludes the main part of the workshop. In the [last section](./9-advanced-options.md) we collected some advanced options in case you want to learn more details about data management.