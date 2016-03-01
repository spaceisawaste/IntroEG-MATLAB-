%Generates 5x5 array of integers, prompts user for a location in array,
%returns whether or not isprime
%Conor Nailos
%1/21/16
clear;clc
%% Get matrix location
row=input('Give me a row number between 1 and 5: ');
col=input('Give me a column number between 1 and 5: ');

%% Makes matrix

randArray=randi(100,5,5);
userNum=randArray(row,col);

if(isprime(userNum)==true)
    disp(['The element (', num2str(row),',',num2str(col),') ',num2str(userNum), ' is prime']);
else
    disp(['The element (', num2str(row),',',num2str(col),') ',num2str(userNum), ' is not prime']);
end