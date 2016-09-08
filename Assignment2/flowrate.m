%This script calculates the flowrate of fluid
%It prompts the user for the flow in m^3/s
%Prompt the user for the flow in m^3/s and calculate ft^3/s based on that
%m^3/s.
mps = input('Enter the flow in m^3/s:');
ftps = mps/0.028;
%Print all variables in sentence format
fprintf('A flow rate of %.3f meters per sec\n', mps)
fprintf('is equivalent to %.3f feet per sec\n', ftps)