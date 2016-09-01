%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Caitlin Melton
%
% Due: September 8, 2016
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL
helpURL = ['http://www.mathworks.com/help/matlab/']



% 2. What does the command 'clear all' do?
%
% Answer: Clears out all of the variables from the workspace 
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.
thirdexsum = [1 7 21 32 67 32453];
averageAnswer = mean(thirdexsum)


% 4. What command would you type to see a list of all installed toolboxes?
ver


% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 
help images


% 6. On the line below figure (line 44), write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
plot (x, y)
        %<- command goes here

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

%
% Answer: take_der to take the derivative of data, used to derive position data into
% velocity and then into acceleration. 
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: The for and while loops. The difference between the two is that
% the number of times around the loop is known during the for loop and
% during the while loop the number is determined while the loop is being
% carried out.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: It stands of Not-a-Number and can happen during arithmetic
% operations like division of 0/0 or Inf/Inf.
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = nansum(A) 


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs

% 12. What happens if you type why and hit enter in the command window?
% Repeat this a few times and copy your result below (Make sure everything
% commented out).

%
% Answer: Why provides a random answer as to "why".
% why
% Joe told some terrified engineer.
% why
% To please me.
% why
% For the love of Penny.
% why
% He wanted it that way.
% why
% For the approval of Pete.
% why
% Don't ask!
% why
% Some programmer knew it was a good idea.
% why
% Why not?
% why
% To satisfy some terrified programmer.
% why
% Pete knew it was a good idea.
% why
% Don't you have something better to do?
% why
% He suggested it.
% why
% A terrified and good and not very rich engineer helped the bald programmer.
% why
% To fool some kid.
% why
% I obeyed the tall and young system manager.
% why
% Joe insisted on it.
% why
% Some smart kid wanted it.
%


%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line
disp ('Hello World')
helloresponse = input('Do Not Ignore That Nice Hello')



%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)