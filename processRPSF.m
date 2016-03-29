%Conor Nailos
%2/11/16
%Plays Rock, Paper, Scissors with the player. Uses randi to determine the
%computer's move
function processRPSF(handles,iHumanPlay)

rng('shuffle');
iComputerPlay=randi(3);
gameResult='  ';
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
showGameF(handles,iComputerPlay,iHumanPlay,gameResult);
