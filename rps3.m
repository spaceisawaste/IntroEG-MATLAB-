%Conor Nailos
%2/11/16
%Plays Rock, Paper, Scissors with the player. We will say that for the
%computer's RNG, <.333 is rock, <.666 is paper, and all other values are
%scissors
clear;clc;clf
rng('shuffle');
%% Parameters
iHumanPlay=input();
iComputerPlay=randi(3);
gameResult;
%% Input and Game Loop
switch iHumanPlay
    case 1
        if(iComputerPlay==1)
            gameResult='tie';
        elseif(iComputerPlay==2)
            gameResult='computerWon';
        else
            gameResult='humanWon';
        end
    case 2
      if(iComputerPlay==1)
            gameResult='humanWon';
        elseif(iComputerPlay==2)
            gameResult='tie';
        else
            gameResult='computerWon';
        end
    case 3
       if(iComputerPlay==1)
            gameResult='computerWon';
        elseif(iComputerPlay==2)
            gameResult='humanWon';
        else
            gameResult='tie';
        end
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