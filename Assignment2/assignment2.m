% Caitlin Melton
% Due Date: 09/15/16
% KINE 6803: Assignment 2

%% Chapter 1 Exercises
% 1.)CuAW = 63.55
% 2.)myage = 23
%    myage - 2
%    myage + 1
% 3.)CharacterMax = namelengthmax
% 4.)ounces = 72
%    pounds = 4.5
%    who
%    whos
%    clear ounces
%    who 
%    whos
% 5.)Min32 = intmin('uint32')
%    Max32 = intmax('uint32')
%    Min64 = intmin('uint64')
%    Max64 = intmax('uint64')
% 6.)variablechange = 4.5
%    variablechanged = int32(variablechange)
% 11.)lbs = 135
%     kilos = lbs/2.2
% 12.)ftemp = 32
%     ctemp = (ftemp - 32)*(5/9)
% 13.)inches = 36
%     feet = inches/12
% 14.)sind(90)
%     sin(1.57)
% 15.)R1=100
%     R2=200
%     R3=300
%     RT=R1+R2+R3
% 22.)lowercase letters come before upercase letters
% 24.)1,1,1,0 so false
% 25.)x=6
%     y=22
%     xor(x>5,y<10)
% 26.)3*(10^5)==3e5
% 27.)log10(10000)==4

%% Chapter 2 Exercises
% 1.)vec1 = 2:7
%    vec2 = 1.1:.2:1.7
%    vec3 = 8:-2:2
% 2.)vec4 = linspace(0,2*pi,50)
% 3.)vec5 = linspace(2,3,6)
% 4.)vec6 = -5:-1
%    vec7 = linspace(5,9,3)
%    vec8 = linspace(8,4,3)
% 6.)vec9 = (-1:0.5:1)'
% 7.)odd6 = vec6(1:2:end) %has odd number of total elements
%    odd3 = vec3(1:2:end) %has even number of total elements
% 8.)mat = [7:10; 12:-2:6]
%    matex1 = mat(1,3)
%    matex2 = mat(2,:)
%    matex3 = mat(:, 1:2)
% 9.)mat = [1:4; 4:7]
%    numel(mat)
% 10.)mat = [4:7; 1:4]
%     mat(1,:) = [1:4]
% 12.)rows = randi([1,5],1,1)
%     cols = randi([1,5],1,1)
%     zeromat = zeros(rows,cols)
% 23.)vec23 = (3:2:11)
%     sum23 = sum(vec23)
% 26.)num = (3:2:9)
%     den = (1:4)
%     sum26 = sum(num./den)
% 30.)vec30 = randi([-10,10],1,5)
%     sub30 = (vec30 - 3)
%     pos30 = numel(find(vec30>0))
%     abs30 = abs(vec30)
%     max30 = max(vec30)
% 31.)mat31 = randi([1,10],3,5)
%     maxcol31 = max(mat31)
%     maxrow31 = max(mat31')
%     max31 = max(max(mat31))

%% Chapter 3 Exercises
% 1.)RO= randi([10,15],1,1) %the outer radius randomly generated
%    RI= randi([10,15],1,1)%the inner radius randomly generated
%    volume = ((4*pi)/3)*((RO^3)-(RI^3)) %the volume of the hollow sphere based 
%    on the randomly generated inner and outer radius
% 4.)mat = input('Enter a matrix: ')
%    Enter a matrix: randi([10,50],4,5)
%    mat =
%     35    49    49    27    36
%     13    49    29    47    11
%     21    16    42    42    44
%     32    49    15    49    48
% 6.)
% 8.)
% 13.)