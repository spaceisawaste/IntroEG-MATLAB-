%Conor Nailos
%2/11/16
% Makes 50 valentines candy conversation hearts and finds % that have
% specific parameters on them.

clear;clc;clf
rng('shuffle');
%% Parameters
numHearts=50;
countA=0;
countB=0;

%% Makes some cell arrays
for j=1:numHearts
    messageNum=randi(5);
    switch messageNum
        case 1
            message='Be Mine';
        case 2
            message='True Love';
        case 3
            message='All Mine';
        case 4
            message='BFF';
        case 5
            message='You Rock';
    end
    messageList{j}=message;
end

for j=1:numHearts
    colorNum=randi(5);
    switch colorNum
        case 1
            color='red';
        case 2
            color='yellow';
        case 3
            color='purple';
        case 4
            color='orange';
        case 5
            color='white';
    end
    colorList{j}=color;
end

%% Find %Be mine and %red/you rock

% num of hearts with be mine on them
for i=1:numHearts
    if strcmp(messageList{i},'Be Mine')
        countA=countA+1;
    end
end

%Checks num of red hearts with you rock on them
for j=1:numHearts
    if strcmp(messageList{j},'You Rock') && strcmp(colorList{j},'red')
        countB=countB+1;
    end
end
%finds percentages
percentA=countA/50*100;
percentB=countB/50*100;

%% Output
disp(['Be Mine is on ',num2str(percentA,3),'% of the hearts created.']);
disp([num2str(percentB,3),'% of the hearts are red and have the message You Rock.']);