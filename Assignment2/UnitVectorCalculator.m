%%This script calculates the unit vector associated with an instantaneous
%%velocity in the x,y,and z directions
%It prompts the user for the x,y,and z direction of the particle position
%Prompt user for each of the directions of the particle position
x = input('Enter in the velocity in the x direction:');
y = input('Enter in the velocity in the y direction:');
z = input('Enter in the velocity in the z direction:');
%Calculates the unit vector based on those directions
uvec = [x y z]/(sqrt((x^2)+(y^2)+(z^2)))