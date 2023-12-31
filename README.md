
## Table of contents
1. [General info](#General-info)
* [About project](#About-project)
* [My personal goals](#My-personal-goals)
* [Built with](Built-with)
* [How to star](how-to-start)



# General info
## About project

This is a database project. This project is constantly tested and developed.
Its purpose is to collect data on consumed electricity, water and gas.
In a real environment, data would be transferred using meters.
In my project, this was replaced by procedures placed in [pkg_meter_reading.sql](https://github.com/dzinsowymis/MediaMeteringDataSystem/blob/feature/pkg/pkg_meter_reading.sql), which will be run by the appropriate [jobs_for_add_reading.sql](https://github.com/dzinsowymis/MediaMeteringDataSystem/blob/feature/jobs/jobs_for_add_reading.sql). The procedures will run every 5 minutes and enter data into the tables.

## My personal goals

1. Learning to work with the DataModeler program. The effect of my work can be seen [here](https://github.com/dzinsowymis/MediaMeteringDataSystem/blob/main/date_schema.png)

2. Learning how to code and solve problems in Oracle database environment using PL/SQL and SQL

## Built with

Tools:
* `Oracle Database 18c Express Edition Release 18.0.0.0.0`
* `PL/SQL`
* `SQL`
* `Data Modeler`
* `Sql Developer`
* `Notepad++`


## How to star

Prerequisites
1. To download `SQL Developer` You need a free `Oracle Account`. You can create one [here](https://profile.oracle.com/myprofile/account/create-account.jspx).
2. `SQL Developer` is an Oracle's cross-platform client application designed for working with databases. You can download it [here](https://www.oracle.com/database/sqldeveloper/technologies/download/) from Oracle's website.
It's important to work with tool which can present basic graphical table schema of database. You can use Oracle's text-based SQLPlus but I don't recommend it for the reason above.
There are many other IDEs such as Toad, PL/SQL Developer or DataGrip but if You want to use it You will have to find out how to connect with Oracle's Autonomous Database on your own.


Installing SQL Developer on Windows
Process of instalation is quite simple, but if You would have a problem [here](https://docs.oracle.com/en/database/oracle/sql-developer/22.2/rptug/sql-developer-concepts-usage.html#GUID-156BEBA3-2F9B-4CE0-8E91-728581FF46AB) is documentation on the subject.









