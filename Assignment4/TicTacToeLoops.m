%%Tic-Tac-Toe w/ Loops Script
%Caitlin Melton
%10/1/16 
%Due Date: 10/06/16
%This script enables the user to play a computer in a Tic Tac Toe match and
%will have the computer moves generated automatically utilizing loops.
%%  Welcome Message for the User
nextgame = 'Y';
while nextgame == 'Y';
disp('Ready or Not, Here We Go!'); 
%%  Show Game Board
Board = ['-' '-' '-'; '-' '-' '-'; '-' '-' '-'];
disp(Board)
%%  Player Chooses Which Character (either X or O)
user = input('Do you want to be X or O? (Please enter your answer with uppercase/capital letters ONLY):\n>','s');
if user == 'X';
    comp = 'O';
else
    comp = 'X';
end
%%  Computer Moves First
% Randomly generates a row and column value
c0 = randi([1,3]);
r0 = randi([1,3]);
Board(r0,c0) = comp;
disp(Board)
%%  Prompt User for First Move
disp('Please input your first spot choice into the pop up dialogue box.')
prompt1 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'};
response1 = 'Enter your choice of row and column.';
spotuser1 = inputdlg(prompt1,response1);
cuser1 = str2double(spotuser1{2});
ruser1 = str2double(spotuser1{1});
while Board(ruser1,cuser1) ~= '-';
   spotuser1 = inputdlg(prompt1,response1);
cuser1 = str2double(spotuser1{2});
ruser1 = str2double(spotuser1{1});
end
Board(ruser1,cuser1) = user;
disp(Board)
%% Computer completes its second turn
disp('Computer completes its second turn.')
if Board(1,1) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,1) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,1) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(1,1) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(1,1) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(1,2) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,2) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(1,2) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(1,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,3) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,3) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(1,3) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,3) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(1,3) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(2,1) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,1) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,1) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(2,1) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(2,2) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,2) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,2) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(2,2) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(2,2) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board (2,2) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(2,2) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(2,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,3) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,3) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,3) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,1) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(3,1) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,1) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(3,1) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,1) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(3,1) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(3,2) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(3,2) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(3,2) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(3,2) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(3,3) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,3) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(3,3) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(3,3) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(3,3) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
end
disp(Board)
%%  Prompt User for Second Move
disp('Please input your second spot choice into the pop up dialogue box.')
spotuser2 = inputdlg(prompt1,response1);
cuser2 = str2double(spotuser2{2});
ruser2 = str2double(spotuser2{1});
while Board(ruser2,cuser2) ~= '-';
   spotuser2 = inputdlg(prompt1,response1);
   cuser2 = str2double(spotuser2{2});
   ruser2 = str2double(spotuser2{1});
   if Board(ruser2,cuser2) == '-';
       Board(ruser2,cuser2) = user;
       break
   end
end
Board(ruser2,cuser2) = user;
disp(Board)
%% Computer completes its third turn by trying to either put three in a row or block the user from doing so
disp('Computer completes its third turn')
if Board(1,1) == comp && Board(1,2) == comp && Board(1,3) == '-';
    Board(1,3) = comp; % starts trying to connect its own
elseif Board(1,1) == comp && Board(1,3) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,1) == comp && Board(2,1) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == comp && Board(3,1) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(1,1) == comp && Board(2,2) == comp && Board(3,3) == '-';
    Board(3,3) = comp ;
elseif Board(1,1) == comp && Board(3,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == comp && Board(2,2) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(1,2) == comp && Board(3,2) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == comp && Board(1,3) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,3) == comp && Board(2,2) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,3) == comp && Board(3,1) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,3) == comp && Board (3,3) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(1,3) == comp && Board(2,3) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(2,1) == comp && Board(3,1) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,1) == comp && Board(2,2) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(2,1) == comp && Board(2,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,2) == comp && Board(3,2) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(2,2) == comp && Board(2,3) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == comp && Board(3,3) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,2) == comp && Board(3,1) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,3) == comp && Board(3,3) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(3,1) == comp && Board(3,2) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,1) == comp && Board(3,3) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,2) == comp && Board(3,3) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == user && Board(1,2) == user && Board(1,3) == '-'; % starts looking to block
    Board(1,3) = comp;
elseif Board(1,1) == user && Board(1,3) == user && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,1) == user && Board(2,1) == user && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == user && Board(3,1) == user && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(1,1) == user && Board(2,2) == user && Board(3,3) == '-';
    Board(3,3) = comp ;
elseif Board(1,1) == user && Board(3,3) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == user && Board(2,2) == user && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(1,2) == user && Board(3,2) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == user && Board(1,3) == user && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,3) == user && Board(2,2) == user && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,3) == user && Board(3,1) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,3) == user && Board (3,3) == user && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(1,3) == user && Board(2,3) == user && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(2,1) == user && Board(3,1) == user && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,1) == user && Board(2,2) == user && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(2,1) == user && Board(2,3) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,2) == user && Board(3,2) == user && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(2,2) == user && Board(2,3) == user && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == user && Board(3,3) == user && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,2) == user && Board(3,1) == user && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,3) == user && Board(3,3) == user && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(3,1) == user && Board(3,2) == user && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,1) == user && Board(3,3) == user && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,2) == user && Board(3,3) == user && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == '-'; %no strategic move available so computer puts it in the first available spot
    Board(1,1) = comp;
elseif Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,3) == '-';
    Board(3,3) = comp;
end
disp(Board)
if Board(1,1) == comp && Board(1,2) == comp && Board(1,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == comp && Board(2,1) == comp && Board(3,1) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == comp && Board(2,2) == comp && Board(3,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,2) == comp && Board(2,2) == comp && Board(3,2) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == comp && Board(2,2) == comp && Board(3,1) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == comp && Board(2,3) == comp && Board(3,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(2,1) == comp && Board(2,2) == comp && Board(2,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(3,1) == comp && Board(3,2) == comp && Board(3,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
else
%%  Prompt User for Third Move
disp('Please input your third spot choice into the pop up dialogue box.')
spotuser3 = inputdlg(prompt1,response1);
cuser3 = str2double(spotuser3{2});
ruser3 = str2double(spotuser3{1});
while Board(ruser3,cuser3) ~= '-';
   spotuser3 = inputdlg(prompt1,response1);
cuser3 = str2double(spotuser3{2});
ruser3 = str2double(spotuser3{1});
    if Board(ruser3,cuser3) == '-';
       Board(ruser3,cuser3) = user;
       break
   end
end
Board(ruser3,cuser3) = user;
disp(Board)
if Board(1,1) == user && Board(1,2) == user && Board(1,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == user && Board(2,1) == user && Board(3,1) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == user && Board(2,2) == user && Board(3,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,2) == user && Board(2,2) == user && Board(3,2) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == user && Board(2,2) == user && Board(3,1) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == user && Board(2,3) == user && Board(3,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(2,1) == user && Board(2,2) == user && Board(2,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(3,1) == user && Board(3,2) == user && Board(3,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
else
%% Computer completes its fourth turn by trying to either put three in a row or block the user from doing so
disp('Computer completes its fourth turn')
if Board(1,1) == comp && Board(1,2) == comp && Board(1,3) == '-';
    Board(1,3) = comp; % starts trying to connect its own
elseif Board(1,1) == comp && Board(1,3) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,1) == comp && Board(2,1) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == comp && Board(3,1) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(1,1) == comp && Board(2,2) == comp && Board(3,3) == '-';
    Board(3,3) = comp ;
elseif Board(1,1) == comp && Board(3,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == comp && Board(2,2) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(1,2) == comp && Board(3,2) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == comp && Board(1,3) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,3) == comp && Board(2,2) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,3) == comp && Board(3,1) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,3) == comp && Board (3,3) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(1,3) == comp && Board(2,3) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(2,1) == comp && Board(3,1) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,1) == comp && Board(2,2) == comp && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(2,1) == comp && Board(2,3) == comp && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,2) == comp && Board(3,2) == comp && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(2,2) == comp && Board(2,3) == comp && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == comp && Board(3,3) == comp && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,2) == comp && Board(3,1) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,3) == comp && Board(3,3) == comp && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(3,1) == comp && Board(3,2) == comp && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,1) == comp && Board(3,3) == comp && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,2) == comp && Board(3,3) == comp && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == user && Board(1,2) == user && Board(1,3) == '-'; % starts looking to block
    Board(1,3) = comp;
elseif Board(1,1) == user && Board(1,3) == user && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,1) == user && Board(2,1) == user && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == user && Board(3,1) == user && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(1,1) == user && Board(2,2) == user && Board(3,3) == '-';
    Board(3,3) = comp ;
elseif Board(1,1) == user && Board(3,3) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == user && Board(2,2) == user && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(1,2) == user && Board(3,2) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,2) == user && Board(1,3) == user && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,3) == user && Board(2,2) == user && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,3) == user && Board(3,1) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(1,3) == user && Board (3,3) == user && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(1,3) == user && Board(2,3) == user && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(2,1) == user && Board(3,1) == user && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,1) == user && Board(2,2) == user && Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(2,1) == user && Board(2,3) == user && Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,2) == user && Board(3,2) == user && Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(2,2) == user && Board(2,3) == user && Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == user && Board(3,3) == user && Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(2,2) == user && Board(3,1) == user && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,3) == user && Board(3,3) == user && Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(3,1) == user && Board(3,2) == user && Board(3,3) == '-';
    Board(3,3) = comp;
elseif Board(3,1) == user && Board(3,3) == user && Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,2) == user && Board(3,3) == user && Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(1,1) == '-'; %no strategic move available so computer puts it in the first available spot
    Board(1,1) = comp;
elseif Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,3) == '-';
    Board(3,3) = comp;
end
disp(Board)
if Board(1,1) == comp && Board(1,2) == comp && Board(1,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == comp && Board(2,1) == comp && Board(3,1) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == comp && Board(2,2) == comp && Board(3,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,2) == comp && Board(2,2) == comp && Board(3,2) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == comp && Board(2,2) == comp && Board(3,1) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == comp && Board(2,3) == comp && Board(3,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(2,1) == comp && Board(2,2) == comp && Board(2,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(3,1) == comp && Board(3,2) == comp && Board(3,3) == comp;
    disp('Game Over. Computer Wins!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
else
%%  Prompt User for Fourth Move
disp('Please input your fourth and final spot choice into the pop up dialogue box.')
spotuser4 = inputdlg(prompt1,response1);
cuser4 = str2double(spotuser4{2});
ruser4 = str2double(spotuser4{1});
while Board(ruser4,cuser4) ~= '-';
   spotuser4 = inputdlg(prompt1,response1);
cuser4 = str2double(spotuser4{2});
ruser4 = str2double(spotuser4{1});
    if Board(ruser4,cuser4) == '-';
       Board(ruser4,cuser4) = user;
       break
   end
end
Board(ruser4,cuser4) = user;
disp(Board)
if Board(1,1) == user && Board(1,2) == user && Board(1,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == user && Board(2,1) == user && Board(3,1) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,1) == user && Board(2,2) == user && Board(3,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,2) == user && Board(2,2) == user && Board(3,2) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == user && Board(2,2) == user && Board(3,1) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(1,3) == user && Board(2,3) == user && Board(3,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(2,1) == user && Board(2,2) == user && Board(2,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
elseif Board(3,1) == user && Board(3,2) == user && Board(3,3) == user;
    disp('Game Over. You Win!')
    nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
else
%% Computer completes its fifth turn by trying to either put three in a row or block the user from doing so
disp('Computer completes its fifth turn') %simply fills the last available slot
if Board(1,1) == '-';
    Board(1,1) = comp;
elseif Board(1,2) == '-';
    Board(1,2) = comp;
elseif Board(1,3) == '-';
    Board(1,3) = comp;
elseif Board(2,1) == '-';
    Board(2,1) = comp;
elseif Board(2,2) == '-';
    Board(2,2) = comp;
elseif Board(2,3) == '-';
    Board(2,3) = comp;
elseif Board(3,1) == '-';
    Board(3,1) = comp;
elseif Board(3,2) == '-';
    Board(3,2) = comp;
elseif Board(3,3) == '-';
    Board(3,3) = comp;
end
disp(Board)
%% Check for a Draw
freecells=0;
for i = 1:3;
    for j = 1:3;
        if Board(i,j) == '-';
            freecells=freecells+1;
        end
    end
end
if freecells == 0
    disp('Game Over. It is a Draw.')
end
nextgame = input('Do you want to play a new game? (Please enter a capital Y for yes or a capital N for no.):\n>','s');
end
end
end
end
end
