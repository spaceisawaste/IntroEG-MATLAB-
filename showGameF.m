function showGameF(handles,iComputerPlay,iHumanPlay,gameResult)
computerMove=' ';
playerMove=' ';
tempHuman='Human plays ';
tempCPU='Computer plays ';

switch iComputerPlay
    case 1
        computerMove=' Rock';
    case 2
        computerMove=' Paper';
    case 3
        computerMove=' Scissors';
end
switch iHumanPlay
    case 1
        playerMove=' Rock';
    case 2
        playerMove=' Paper';
    case 3
        playerMove=' Scissors';
end

humanMove=strcat(tempHuman,playerMove);
CPUMove=strcat(tempCPU,computerMove);
set(handles.humanMoveText,'String',humanMove);
set(handles.computerMoveText,'String',CPUMove);
switch gameResult
    case 'tie'
        set(handles.outcomeText,'String','It''s a Tie!');
        handles.tieText.String=num2str(str2double(handles.tieText.String)+1);
    case 'computerWon'
        set(handles.outcomeText,'String','Computer wins!');
        handles.computerScoreText.String=num2str(str2double(handles.computerScoreText.String)+1);
    otherwise
        set(handles.outcomeText,'String','Human wins!');
       handles.humanText.String=num2str(str2double(handles.humanText.String)+1);
end