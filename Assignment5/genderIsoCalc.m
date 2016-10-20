function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
DayAvg = zeros(25,1);
femaleIsoIndMeans = zeros(25,1);
maleIsoIndMeans = zeros(25,1);

for i = 1:25;
    DayAvg(i) = ((Day1(i) + Day2(i) + Day3(i))/3); %takes the average of the three days for each individual
    femalegroup = strfind(Gender, 'F', 'ForceCellOutput', true); %identifies the female subjects
    Female = cell2mat(femalegroup); % convert cell to mat file for sum
    malegroup = strfind(Gender, 'M', 'ForceCellOutput', true); %identifies the male subjects
    Male = cell2mat(malegroup); % convert cell to mat file for sum
if femalegroup{i,1} == 1; %places the female and male averages into separate arrays.
    femaleIsoIndMeans(i) = DayAvg(i,1);
elseif malegroup{i,1} == 1;
    maleIsoIndMeans(i) = DayAvg(i,1);
end
femaleGroupIsoMean = (sum(femaleIsoIndMeans))/(sum(Female)); %calculates the group means based on the individual gender means
maleGroupIsoMean = (sum(maleIsoIndMeans))/(sum(Male));
end

