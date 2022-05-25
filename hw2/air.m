clc; clear all;

filename = 'data';
T = readtable(filename);

T2020 = T(1:335, :);

Date = T2020.date;
PM25 = findNan(T2020.pm25);
PM10 = findNan(T2020.pm10);
O3 = findNan(T2020.o3);
NO2 = findNan(T2020.no2);
SO2 = findNan(T2020.so2);
CO = findNan(T2020.co);

PM25Avg = makeMatrix(PM25);
PM10Avg = makeMatrix(PM10);
O3Avg = makeMatrix(O3);
NO2Avg = makeMatrix(NO2);
SO2Avg = makeMatrix(SO2);
COAvg = makeMatrix(CO);

sub(1,PM25Avg,"PM25",'b');
title("teareng-seoul, south korea-air-quaility monthly data")
sub(2,PM10Avg,"PM10",'r');
sub(3,O3Avg,"O3",'g');
sub(4,NO2Avg,"NO2",'m');
sub(5,SO2Avg,"SO2",'b');
sub(6,COAvg,"CO",'k');
