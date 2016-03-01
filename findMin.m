%Conor nailos
%1/31/16
%Finds the first smallest value in an array and displays its value and position.
%Doesn't use min. Will not display repeats, does show how many values equal
%min tho
clear;clc;clf
%% Parameters

nRows=20;
nCol=40;
nMax=200;
array=randi(nMax,nRows,nCol);
tMin=nMax; %temporary min
minXPos=0;%pretty self-explainitory. X/Row position of min
minYPos=0;%see above but for Y/Column
repeat=1;
%% Calculation

for(countX=1:nRows) %finds first min
    for(countY=1:nCol)
        if(array(countX,countY)<tMin)
            tMin=array(countX,countY);
            minXPos=countX;
            minYPos=countY;
        end
    end
end

locations=[num2str(minXPos),', ',num2str(minYPos)]; %remembers wehre first min was

for(countX=minXPos:nRows) %finds the rest of the mins and locations
    for(countY=minYPos+1:nCol)
        if(array(countX,countY)==tMin)
          repeat=repeat+1;
          locations=[locations,'; ',num2str(countX),', ',num2str(countY)];
        end
    end
end
%% Output
%disp(min(array));
disp(['The first min is ',num2str(tMin),' at ',num2str(minXPos),',',num2str(minYPos)]);
disp(['The array has this value ',num2str(repeat),' times at ',num2str(locations)]);