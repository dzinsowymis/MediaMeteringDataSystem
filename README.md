## Table of contents
1. [General info](#General-info)
* [About project](#About-project)
* [My personal goals](#My-personal-goals)



# General info
## About project

This is a database project. This project is constantly tested and developed.
Its purpose is to collect data on consumed electricity, water and gas.
In a real environment, data would be transferred using meters.
In my project, this was replaced by procedures placed in [pkg_meter_reading.sql](https://github.com/dzinsowymis/MediaMeteringDataSystem/blob/feature/pkg/pkg_meter_reading.sql), which will be run by the appropriate [jobs_for_add_reading.sql](https://github.com/dzinsowymis/MediaMeteringDataSystem/blob/feature/jobs/jobs_for_add_reading.sql). The procedures will run every 5 minutes and enter data into the tables.

## My personal goals