---
title: pycsw
date: 2023-11-13
author: Paul van Genuchten
---

[pycsw](https://pycsw.org) is a catalogue implementation in python, supporting a range of record exchange standards (CSW, oai-pmh, STAC, Opensearch) for optimal interoperability. Backend is PostGres, MariaDB or SQLite.

- Website: <https://pycsw.org>
- Github: <https://github.com/geopython/pycsw>

## pycsw in LSC-Hubs

[pycsw](https://{{< var country >}}.lsc-hubs.org) has been set up with a PostGres backend. Every time records are updated on the [git repository](https://github.com/lsc-hubs/{{< var country >}}-catalogue) a CI/CD action updates the records in the database. The skin is based on a tailored skin, available on [github](https://github.com/pvgenuchten/pycsw-skin).