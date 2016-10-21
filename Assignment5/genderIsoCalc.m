function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
% %Create a function (name it genderIsoCalc.m) that returns four outputs. The first set of outputs
% (one for males and one for females) should return a matrix with individual mean isometric
% strength values across all 3 days of lifting for the appropriate group. The second set of
% outputs will return the single mean value for each group (mean of subject means). Call this
% function in your main script and store the results with variable names maleIsoIndMeans,
% femaleIsoIndMeans, maleGroupIsoMean and femaleGroupIsoMean. These data should not be
% normalized.
DayAvg = zeros(25,1); %creates variables before the loop
femaleIsoIndMeans = zeros(25,1);
maleIsoIndMeans = zeros(25,1);

for i = 1:25; %goes through all 25 subjects
    DayAvg(i) = ((Day1(i) + Day2(i) + Day3(i))/3); %takes the average of the three days for each individual
    femalegroup = strfind(Gender, 'F', 'ForceCellOutput', true); %identifies the female subjects
    Female = cell2mat(femalegroup); % convert cell to mat file for sum
    malegroup = strfind(Gender, 'M', 'ForceCellOutput', true); %identifies the male subjects
    Male = cell2mat(malegroup); % convert cell to mat file for sum
if femalegroup{i,1} == 1; %places the females into a separate variable.
    femaleIsoIndMeans(i) = DayAvg(i,1); %takes the three day average of the female group
    femaleIsoIndMeans = femaleIsoIndMeans(femaleIsoIndMeans~=0).'; %gets rid of the zeros from the female averages that represent the males
elseif malegroup{i,1} == 1; %places the males into a separate variable
    maleIsoIndMeans(i) = DayAvg(i,1); %takes the three day average of the male group 
    maleIsoIndMeans = maleIsoIndMeans(maleIsoIndMeans~=0);%gets rid of the zeros from the male group that represents the females
end
femaleGroupIsoMean = (sum(femaleIsoIndMeans))/(sum(Female)); %calculates the group means based on the individual gender means
maleGroupIsoMean = (sum(maleIsoIndMeans))/(sum(Male));
end

