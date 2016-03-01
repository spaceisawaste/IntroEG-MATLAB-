%Calculates furniture sales and profts
%Conor Nailos
%1/20/16
clear;clc
%% Variables
Cs=[199 268 500 670]; %cost of set
Ps=[398 598 798 998]; %price sold at
Ns=[35 25 20 10]; %amount sellable

%% Input
disp('Beep boop. I''m a furniture sales bot. Let''s find out how much money we made this quarter!');
sale1=input(['How many of the first set were sold? We can sell ',num2str(Ns(1)), ' at most. ']);
sale2=input(['How many of the second set were sold? We can sell ',num2str(Ns(2)), ' at most. ']);
sale3=input(['How many of the third set were sold? We can sell ',num2str(Ns(3)), ' at most. ']);
sale4=input(['How many of the fourth set were sold? We can sell ',num2str(Ns(4)), ' at most. ']);

%% Calculations
totalSold=sale1+sale2+sale3+sale4;
revenue=sale1*Ps(1)+sale2*Ps(2)+sale3*Ps(3)+sale4*Ps(4);
profit=revenue-(sale1*Cs(1)+sale2*Cs(2)+sale3*Cs(3)+sale4*Cs(4));

%% Output
disp(['We sold ', num2str(totalSold), ' units this quarter!']);
disp(['Our revenue was ',num2str(revenue),' dollars!']);
disp(['Which means we made a profit of ',num2str(profit), ' dollars! WOW!']);