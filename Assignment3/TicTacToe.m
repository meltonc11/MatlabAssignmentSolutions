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
% Randomly generates a row and column value
c0 = randi([1,3])
r0 = randi([1,3])
Board(r0,c0) = comp
%%  Display Updated Game Board

%%  Prompt User for Move
prompt1 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'};
response1 = 'Enter your choice of row and column.';
spotuser1 = inputdlg(prompt1,response1);
cuser1 = str2num(spotuser1{2});
ruser1 = str2num(spotuser1{1});
if cuser1==c0 && ruser1==r0
    ('Input new spot choice')
   prompt1 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
   response2 = 'Error: You have entered a previously used spot. Please enter a different choice of row and column.'
   spotuser1 = inputdlg(prompt1,response2)
   cuser1 = str2num(spotuser1{2})
   ruser1 = str2num(spotuser1{1})
   Board(ruser1,cuser1) = user
end
Board(ruser1,cuser1) = user
%%  Keep Going Until There is a Winner or no More Available Moves
%Computer completes its second turn
ccomp2 = randi([1,3])
rcomp2 = randi([1,3])
Board(rcomp2,ccomp2) = comp
%User is prompted for their second turn
prompt1 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
response1 = 'Enter your choice of row and column.'
spotuser2 = inputdlg(prompt1,response1)
cuser2 = str2num(spotuser2{2})
ruser2 = str2num(spotuser2{1})
Board(ruser2,userc2) = user
if cuser2==c0 && ruser2==r0
    ('Input new spot choice')
   prompt1 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
   response2 = 'Error: You have entered a previously used spot. Please enter a different choice of row and column.'
   spotuser2 = inputdlg(prompt1,response2)
   cuser2 = str2num(spotuser2{2})
   ruser2 = str2num(spotuser2{1})
   Board(ruser2,cuser2) = user
else if c2==cuser1 && r2==ruser1
    ('Input new spot choice')
   prompt1 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
   response2 = 'Error: You have entered a previously used spot. Please enter a different choice of row and column.'
   spot2 = inputdlg(prompt1,response2)
   c2 = str2num(spot2{2})
   r2 = str2num(spot2{1})
   Board(r2,c2) = user
      end
end
%Computer completes its third turn
%User is prompted for their third and final turn
prompt3 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
response3 = 'Enter your choice of row and column.'
spot3 = inputdlg(prompt3,response3)
c3 = str2num(spot3{2})
r3 = str2num(spot3{1})
Board(r3,c3) = user
if c3==cuser1||c3==c2||c3==c0 && r3==ruser1||r3==r2||r3==r0
    ('Input new spot choice')
   prompt3 = {'ROW (1, 2, or 3)', 'COLUMN (1, 2, or 3)'}
   response3 = 'Error: You have entered a previously used spot. Please enter a different choice of row and column.'
   spot3 = inputdlg(prompt3,response3)
   c3 = str2num(spot3{2})
   r3 = str2num(spot3{1})
   Board(r3,c3) = user
end
%%  Show Final Prompt with Game Result and a Finishing Message

