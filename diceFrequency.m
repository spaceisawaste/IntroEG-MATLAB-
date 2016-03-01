%Conor Nailos
%1/26/16
%Rolls a die n number of times and records the roll values. Plots results
%on bar graph
clear;clc
%% Paramaters
n=200; %# of rolls
dice1=randi(6,1,n); %die 1
dice2=randi(6,1,n); %die 2

nScore=zeros(1,12); %possible roll scores

%% Sum
for iScore=1:n
    tempSum=dice1(1,iScore)+dice2(1,iScore);
    nScore(1,tempSum)=nScore(1,tempSum)+1; %why is there no increment command >.<
end

%% Graph
freq=zeros(1,12);
for i=1:12
    freq(1,i)=nScore(1,i)/n*100;
end

bar(1:12,freq);
xlabel('Roll Value')
ylabel('Frequency (%)')
