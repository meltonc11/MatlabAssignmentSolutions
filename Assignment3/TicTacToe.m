%%Tic-Tac-Toe Script
%Caitlin Melton
%9/13/16 
%Due Date: 9/27/16
%This script enables the user to play a computer in a Tic Tac Toe match and
%will have the computer moves generated automatically

%%  Welcome Message for the User
disp('Ready or Not, Here We Go!') 
%%  Show Game Board
Board = ['-' '-' '-'; '-' '-' '-'; '-' '-' '-'];
disp(Board)
%%  Player Chooses Which Character (either X or O)
user = input('Do you want to be X or O:\n>','s')
if user == 'X'
    comp = 'O'
else
    comp = 'X'
end
%%  Another Player Cannot Move into a taken spot

%%  Computer Moves First


%%  Display Updated Game Board

%%  Prompt User for Move
prompt2 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
response1 = 'Enter your choice of row and column.'
spot1 = inputdlg(prompt2,response1)
c1 = str2num(spot1{2})
r1 = str2num(spot1{1})
Board(r1,c1) = user
%%  Keep Going Until There is a Winner or no More Available Moves
%User is prompted for their second turn
prompt2 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
response2 = 'Enter your choice of row and column.'
spot2 = inputdlg(prompt2,response2)
c2 = str2num(spot2{2})
r2 = str2num(spot2{1})
Board(r2,c2) = user
%User is prompted for their third and final turn
prompt3 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
response3 = 'Enter your choice of row and column.'
spot3 = inputdlg(prompt3,response3)
c3 = str2num(spot3{2})
r3 = str2num(spot3{1})
Board(r3,c3) = user
%%  Show Final Prompt with Game Result and a Finishing Message

