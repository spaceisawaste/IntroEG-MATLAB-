%Conor Nailos
%2/11/16
%Plays Rock, Paper, Scissors with the player. We will say that for the
%computer's RNG, <.333 is rock, <.666 is paper, and all other values are
%scissors
function processRPSF(handles,iHumanPlay)
rng('shuffle');
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
