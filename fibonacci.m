%Conor Nailos
%1/27/16
%Finds first N fibonacci numbers using for loops. Recursion would be
%quiker, but does matlab even know what that is?
clear;clc
%% Parameters
num = 1; %first two fibonacci numbers
num2 = 1;
N=10; %number of fibonacci numbers to find
fibNum=0; %placeholder value
fibSum=num+num2; %sum of fibonacci values
%% The loop
for(loop=1:N)
   fibNum = num + num2;
   num = num2;
   num2 = fibNum;
   fibSum=fibSum+fibNum;
end
disp(num2str(fibSum));