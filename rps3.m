%Conor Nailos
%2/11/16
%Plays Rock, Paper, Scissors with the player. We will say that for the
%computer's RNG, <.333 is rock, <.666 is paper, and all other values are
%scissors
clear;clc;clf
rng('shuffle');
%% Parameters
winP=0; %win count for player
winCPU=0; %win count for computer
draw=0; %number of ties
isPlaying=true;
%% Input and Game Loop
disp('Do you want to play a game of Rock, Paper, Scissors? Great! Let''s go!');
disp('Press r for rock, p for paper, s for scissors, and q to quit');
while(isPlaying)
    disp('Rock, Paper, Scissors');
    user=input('Shoot! ','s');
    comp=rand(1);
    switch user
        case 'r'
            if(comp<.333)
                disp('Rock?! It''s a Draw!');
                draw=draw+1;
            elseif(comp<.666)
                disp('Paper! I win!');
                winCPU=winCPU+1;
            else
                disp('Darn, you got my scissors.');
                winP=winP+1;
            end
        case 'p'
            if(comp<.333)
                disp('You covered my rock!.');
                winP=winP+1;
            elseif(comp<.666)
                disp('Draw!');
                draw=draw+1;
            else
                disp('Scissors cut paper, I win!');
                winCPU=winCPU+1;
            end
        case 's'
            if(comp<.333)
                disp('Rock beats scissors!');
                winCPU=winCPU+1;
            elseif(comp<.666)
                disp('You cut my paper!');
                winP=winP+1;
            else
                disp('We both picked scissors? It''s a draw!');
                draw=draw+1;
            end
        case 'q'
            isPlaying=false;
        otherwise
            disp('Hey buddy, you gotta use the proper input commands');
    end
    %it seems weird to tell the player they played zero times, they know
    %that. We'll make them feel guilty for not playing instead
    if(winP+winCPU+draw==0)
        disp(' ');
        disp('Aw, won''t you play at least once?');
    else
        disp(' ');
        disp(['So far, I''ve beaten you ',num2str(winCPU), ' times, you''ve beaten me ',num2str(winP),' times, and ',num2str(draw), ' times have been draws.']);
        disp(' ');
    end
end

%% Results
 if(winP+winCPU+draw==0)
        disp('D:');
    else
disp(' ');
disp(['What a fun game. I beat you ',num2str(winCPU), ' times, you beat me ',num2str(winP),' times, and ',num2str(draw), ' of the times were draws.']);
 end