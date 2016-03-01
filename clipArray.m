%Conor Nailos
%1/28/16
%Creates a 100x50 array of integers, myArray. Replaces any value in this array over
%nMx with nMax and returns how many changes it made.
clear;clc
%% Parameters
rSize=100; %row size
cSize=50; %column size
myArray=randi(100,rSize,cSize);
nMax=50; %largest size allowed in clipArray
badNum=0; %number of number >nMax

%% Array Stuff
for iRow=1:rSize
    for(iCol=1:cSize)
        if(myArray(iRow,iCol)>nMax)
            badNum=badNum+1;
            myArray(iRow,iCol)=nMax;
        end
    end
end

%% Results
disp(['There were ',num2str(badNum), ' numbers over ',num2str(nMax),'!']);
disp(myArray);