%Conor Nailos
%2.2.16
%Approximating Pi, but better this time
clear;clc;clf
%% Paramters
N=[100 1000 1*10^6 1*10^7];
%check=100;
%% Calculation
for(count=1:4)
    answer=0;
    for(k=0:N(count))
        answer=answer+(((-1)^k)/(2*k+1));
    end
    disp([num2str(N(count)),'=',num2str(answer,6)]);
end