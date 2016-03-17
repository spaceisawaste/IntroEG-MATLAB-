%Conor Nailos
%3/17/16
%Plots the results of JosephusProblem
clear;clc;clf
%%
[j,m]=JosephusProblem(41,3);
for i=1:length(m)
    pause(.1)
    bar(m(i,:));
    pause(.1)
    drawnow
end