%Conor Nailos
%2/11/16
%The computer will try to guess the player's number. The player tells the
%computer if its guess was too high, too low, or correct.
clear;clc;clf
rng('shuffle');
%% Parameters
isWrong=true;
low=1;
hi=20;
guess=randi(hi);
guessCt=0;
%% Set Initial Bounds
disp('Let''s play a game. Think of a number between 1 and 20 and I''ll try to guess what it is. Say h for too high, l for too low, and c for correct');
disp(num2str(guess));
status=input('How was my guess? ','s');
switch status
    case 'h' 
        hi=guess;
        guessCt=guessCt+1;
    case 'l'
        low=low+guess;
        guessCt=guessCt+1;
    case 'c'
        isWrong=false;
        guessCt=guessCt+1;
    otherwise
end
%% Binary Search
%Binary Search is very efficient at guessing once the bounds of its search
%are known
while(isWrong)
    midPoint=floor(low+((hi-low)/2)); %mimics integer division in most programming languages, since matlab auto floats
    guess=midPoint;
    disp(num2str(guess));
    status=input('How was my guess? ','s');
    switch status
        case 'h'
            hi=midPoint-1;
            guessCt=guessCt+1;
        case 'l'
            low=midPoint+1;
            guessCt=guessCt+1;
        case 'c'
            isWrong=false;
            guessCt=guessCt+1;
        otherwise
    end
end
disp(['Alright, I won! It only took me ',num2str(guessCt), ' guesses to do it.']);