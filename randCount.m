%Conor Nailos
%2/16/16
%Generates a random value between 0 and 1. Keeps track of how long it takes this
%value to be .6<=x<=.7. Repeats 1000 times and finds the average. 

%The Law of Large Numbers suggests the frequency of these values will be equal to how much
%of the range of the set they occupy. .6-.7 is 1/10 of the range 0-1, so 10% of the time
%the value should be in that range. This explains why the average number of
%values is always very close to 10, since the desired range occurs only
%1/10 of the time, averaged out over a large set of numbers.

clear;clc;clf
rng('shuffle')
%% Parameters
iCt=1000; %iteration count
tries(1)=0;%time to reach desired range per iteration
lowR=.6;
hiR=.7; %upper and lower bounds
sum=0;
%% Generate Values
for y=1:iCt
    notInRange=true;
    counter=1;
    while(notInRange)
        rNum=rand;
        if(lowR<=rNum&&rNum<=hiR)
            notInRange=false;
            tries(y)=counter;
        else
            counter=counter+1;
        end
    end
end
%% Find average
for j=1:iCt
    sum=sum+tries(j);
end
average=sum/iCt;
disp(['The average number of random values generated is ',num2str(average)]);