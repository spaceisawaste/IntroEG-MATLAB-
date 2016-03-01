%Conor Nailos
%1/26/16
%

clear;clc
%% Input
magicSize=5;
xVals=magic(magicSize);
%% Row Calculation
rowSum=0;
chosenRow=2;
for row=1:magicSize
    rowSum=rowSum+xVals(row,chosenRow);
end
%disp(num2str(rowSum));
%% Column
colSum=0;
chosenCol=2;
for col=1:magicSize
    colSum=colSum+xVals(chosenCol,col);
end
%disp(num2str(colSum));
%% Diag
diag=0;
for i=1:magicSize
   diag=diag+xVals(i,i);
end
%disp(num2str(diag));
%% Disp
disp(['The row sum for ',num2str(chosenRow), ' is ', num2str(rowSum),'. ']);
disp(['The column sum is ',num2str(colSum), '.']);
disp(['The diagonal sum is ',num2str(diag),'.']);
