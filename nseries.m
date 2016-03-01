%Conor Nailos
%2/2/16
%Counts up from n0 to N in a for loop. Displays the results as a string,
%separated by commas and spaces.
clear;clc;clf
%% Parameters
n0=5;
N=10;

%% Generate numbers
result=num2str(n0); %this way result ends with a number and not a ,_
for(x=n0+1:N)
   result=[result,', ',num2str(x)]; %for how accomodating matlab usually is, concatenating strings is a real pain. result+=x, how i long for you
end
%% Output
disp(result);