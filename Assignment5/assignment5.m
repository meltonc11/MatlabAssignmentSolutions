%% Assignment 5: Analyzing Isometric Strength Data
%   Caitlin Melton
%   10/4/2016
%   Due Date: October 20

%Uses the import function to separate data into variables
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv');
%uses the genderIsoCalc function to calculate gender individual and group
%means
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);
%uses the day comparator function to compare day1today2 and day2today3
[Day1toDay2] = dayComparator(Day1,Day2)';
[Day2toDay3] = dayComparator(Day2,Day3)';
%Normalizes the data by weight
for i = 1:25
    normDay1(i) = (Day1(i)/Weight(i));
    normDay2(i) = (Day2(i)/Weight(i));
    normDay3(i) = (Day3(i)/Weight(i));
end
%Calculates the means of the normalized data
normDay1mean = mean(normDay1);
normDay2mean = mean(normDay2);
normDay3mean = mean(normDay3);
%Creates a matrix of zeros for data to be put in before the loop
DataResults = zeros(13,9);
%puts the different variables into the results matrix
for i = 1:length(maleIsoIndMeans);
    DataResults(i,1) = maleIsoIndMeans(i)';
end
for i = 1:length(femaleIsoIndMeans);
    DataResults(i,2) = femaleIsoIndMeans(i);
end
for i = 1:length(maleGroupIsoMean);
    DataResults(i,3) = maleGroupIsoMean(i);
end
for i = 1:length(femaleGroupIsoMean);
    DataResults(i,4) = femaleGroupIsoMean(i);
end
for i = 1:length(Day1toDay2);
    DataResults(i,5) = Day1toDay2(i);
end
for i = 1:length(Day2toDay3);
    DataResults(i,6) = Day2toDay3(i);
end
for i = 1:length(normDay1mean);
    DataResults(i,7) = normDay1mean(i);
end
for i = 1:length(normDay2mean);
    DataResults(i,8) = normDay2mean(i);
end
for i = 1:length(normDay3mean);
    DataResults(i,9) = normDay3mean(i);
end
%exports the data results matrix into a csv file
csvwrite('iso_results.csv', DataResults)