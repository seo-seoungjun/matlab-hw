clc; clear all;

rand = textread('prob1_rand.txt').';
date=textread('prob2_date.txt').';
mon=textread('prob2_mon.txt').';
temp=textread('prob2_temp.txt').';
time=textread('prob2_time.txt').';

% 1.(1)
minus = rand < 0;
minusNum = sum(minus);
fprintf("%d개\n", minusNum);
% 1.(2)
maxNum = min(rand);
fprintf("최댓값: %d\n", maxNum);
% 1.(3)
[minNum,minNumIndex] = min(rand);
fprintf("최솟값: %d 인덱스:%d \n", minNum,minNumIndex);
% 2.(1)
[minTemp,minTempindex] = min(temp);
minTempMon = mon(minTempindex);
minTempDate = date(minTempindex);
minTempTime = time(minTempindex);
fprintf("%d월 %d일 %d시 \n", minTempMon,minTempDate,minTempTime);
% 2.(2)
minTempAvgIndex=1;
tempAvg=0; minTempAvg=0; dataNum = 8784;

for i=1:24
    minTempAvg = minTempAvg+temp(i);
end

minTempAvg=(minTempAvg/24);

for j=25:24:dataNum
    for k=j:j+23
        tempAvg = tempAvg + temp(k);
    end
    if minTempAvg > (tempAvg/24)
    minTempAvg = (tempAvg/24);
    minTempAvgIndex = j;
    tempAvg = 0;
    else
    tempAvg = 0;
    end
end

minTempAvgMon = mon(minTempAvgIndex);
minTempAvgDate = date(minTempAvgIndex);

fprintf("%d월 %d일 %f도 \n", minTempAvgMon,minTempAvgDate,minTempAvg);

% 2.(3)
dailyTempAvgIndex=1;
morningTempAvg=0; nightTempAvg=0;

for i=8:13
    morningTempAvg = morningTempAvg+temp(i);
end
for i=14:19
    nightTempAvg = nightTempAvg+temp(i);
end
morningTempAvg = morningTempAvg/6;
nightTempAvg = nightTempAvg/6;
dailyTemp=nightTempAvg-morningTempAvg;
nightTempAvg=0; morningTempAvg=0;

for j=25:24:dataNum
    for k=j+7:j+12
        morningTempAvg = morningTempAvg+temp(k);
    end
    morningTempAvg = morningTempAvg/6;
    for k=j+13:j+18
        nightTempAvg = nightTempAvg+temp(k);
    end
    nightTempAvg = nightTempAvg/6;
    if dailyTemp < (nightTempAvg-morningTempAvg)
    dailyTemp = (nightTempAvg-morningTempAvg);
    dailyTempAvgIndex = j;
    nightTempAvg=0; morningTempAvg=0;
    else
    nightTempAvg=0; morningTempAvg=0;
    end
end

dailyTempMon = mon(dailyTempAvgIndex);
dailyTempDate = date(dailyTempAvgIndex);

fprintf("%d월 %d일 %f도", dailyTempMon, dailyTempDate, dailyTemp);

