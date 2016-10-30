function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Caitlin Melton
%
%         DUE: November 3rd
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced  %Found while trying to play that it was always giving an error because of the either/or usage (||). I changed them both to &&.    
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner       % Found that there was only one equal sign instead of two like below with the moderate case while I was reading through.              

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;     %Was reading through and found that the variable advancedHighest was advancedhighest originally.     
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(1 + (highest - 1).*rand(1));     %Could not guess number so found this bug that was creating a number outside the actual limits given. Changed the structure of the rand function to be right.

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest); 
userGuess = input('');
while userGuess < 1 || userGuess > highest %was reading through and found that it was giving an error for greater than or equal to the highest number. which is a boundary issue. changed it to being greater than the highest value.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest); 

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made


% report whether the user's guess was high, low, or correct

if userGuess < secretNumber  %was reading through and saw that this sign was originally a greater than sign rather than a less than sign
fprintf('Sorry, %d is too low.\n', userGuess);
numOfTries = numOfTries + 1; %moved number of tries into the if statement. The number of tries was 1 too high when I won(I won in 2 but it said 3, so that's how I found it.
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
numOfTries = numOfTries + 1;
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); %Found once I won that it was saying that I guessed the number at game over tries. So I added in the numOfTries variable.
end   %Reading through and found that there was no end to the if statement.

end % end of guessing loop should be up here so that the game continues without saying game over after each guess.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');



% end of game