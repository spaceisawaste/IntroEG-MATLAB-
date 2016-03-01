%Conor Nailos
%2/4/16
%Lets you play a guessing game
clear;clc;clf
rng('shuffle');
%%
check=randi(20);
guessCt=0;
x=true;
while(x)
guess=input('Guess my number ');
    if guess==check
        disp('NICE!');
        x=false;
    elseif guess<check
        disp('Too small');
    else 
        disp('That''s too big');
    end
    guessCt=guessCt+1;
end
disp(['It took you ',num2str(guessCt),' tries']);