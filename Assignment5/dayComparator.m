function [ Increase ] = dayComparator( Day1, Day2)  
% %Create a function (name it dayComparator.m) that takes the subject ids and two days as
% inputs and returns a matrix with the subject IDs of the subjects who had an increase from the
% first day to the second day (it should also work for the second day to the third day). Run this
% function in your main script twice (be sure to update your inputs when you call the function
% the second time) and store the outputs as day1toDay2 and day2toDay3.
for i = 1:25; %goes through all 25 subjects
    dayComparison(i) = Day2(i) - Day1(i); %compares the two days and looks for an increase
    if dayComparison(i)> 0; %adds the increases to an individual variable
        Increase(i) = dayComparison(i);
        Increase = Increase(Increase~=0); %gets rid of the zeros from the variable set
    else
        NoIncrease(i) = dayComparison(i);  %adds the no increases to an individual variable
        NoIncrease = NoIncrease(NoIncrease~=0); %gets rid of the zeross from the variable set
    end
end

