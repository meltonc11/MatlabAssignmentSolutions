%% Assignment 5: Analyzing Isometric Strength Data
%   Caitlin Melton
%   10/4/2016
%   Due Date: October 20
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv');
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
