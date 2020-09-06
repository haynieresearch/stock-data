# Market Data [![Build Status](https://travis-ci.com/haynieresearch/stock-data.svg?branch=master)](https://travis-ci.com/haynieresearch/stock-data) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/729efafdf51b47adab28e5d5a83ae067)](https://app.codacy.com/gh/haynieresearch/stock-data?utm_source=github.com&utm_medium=referral&utm_content=haynieresearch/stock-data&utm_campaign=Badge_Grade_Dashboard)
This program is designed to extract data from a stock market API (currently [AlphaVantage](http://www.alphavantage.co)) and store it into a MySQL database.

## REQUIREMENTS
* A MySQL/MariaDB master server and read replica with proper access rights. Currently, we are using Amazon AWS RDS.
* An AlphaVantage API key. Depending on your use, you will need the premium data access due to the high volume of API calls.
* Python 3.5+
* Comfortable with terminal environments, this is intended to be an automated tool.

This project is still in the early development phase and we will update this document accordingly as required.

## INSTALL
pip3 install -r requirements.txt\
rename example.settings.yaml to settings.yaml and update with your credentials\
load sql files into your MySQL database\

## SETTINGS
In the settings.yaml file you will notice two databases. The first, marketdata, is the master MariaDB server where write privileges are executed. The second, marketdw (data warehouse), is a read replica of the master MariaDB server. The purpose of this is to allow read only operations such as the export functionality to happen on the read only server vs. the master. If you do not want to setup both a master and replica database; simply put the same credentials for both marketdata and marketdw.

The datasources section for the most part you can leave as-is with the exception of adding your specific API keys.

## USAGE
marketdata.py --exchange nyse (update symbol list for NYSE)\
marketdata.py --exchange nasdaq (update symbol list for NASDAQ)\
marketdata.py --daily (update daily price data)\
marketdata.py --technical (update technical data)\
marketdata.py --overview (update overview/fundamental data)\
marketdata.py --export table_name /path/to/save/csv/ (export mysql table as csv)

## GOAL
The goal of this project is to enable the creation of time series market datasets for statistical and quantitative analysis, as well as model development. Currently, there are many datasets that exist for historical price data (open, high, low, close), but none that include technical and fundamental data as well in the same observation.

## LICENSE
Copyright (c) 2020 Haynie IPHC, LLC\
Developed by Haynie Research & Development LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
