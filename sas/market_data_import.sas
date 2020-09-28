/**********************************************************
#* CATEGORY	SOFTWARE
#* GROUP	MARKET DATA
#* AUTHOR	LANCE HAYNIE <LANCE@HAYNIEMAIL.COM>
#* DATE		2020-09-06
#* PURPOSE	CONVERT MARKET DATA TABLES TO SAS DATASETS
#* FILE		MARKET_DATA_IMPORT.SAS
#**********************************************************
#* MODIFICATIONS
#* 2020-09-06 - LHAYNIE - INITIAL VERSION
#**********************************************************
#ETL Stock Market Data
#Copyright 2020 Haynie IPHC, LLC
#Developed by Haynie Research & Development, LLC
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.#
#You may obtain a copy of the License at
#http://www.apache.org/licenses/LICENSE-2.0
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.*/
libname whs '/path/to/save/datasets';

options mprint symbolgen;
%macro import(table);
  x "rm /path/to/save/csv/&table..csv";
	x "cd /path/to/market/data/python; /usr/bin/python3.6 /path/to/market/data/python/marketdata.py --export &table. /path/to/save/csv/";
	filename data "/path/to/save/csv/&table..csv";
	proc import datafile=data out=whs.&table. dbms=csv replace; GETNAMES=YES; GUESSINGROWS=MAX; run;
	filename data;
%mend import;

x "cd /path/to/market/data/python; /usr/bin/python3.6 /path/to/market/data/python/marketdata.py --daily";
x "cd /path/to/market/data/python; /usr/bin/python3.6 /path/to/market/data/python/marketdata.py --overview";

%%import(currency);
%import(exchange);
%import(security);
%import(type);

%import(overview);
%import(daily);
%import(technical);
