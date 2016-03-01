%Takes a customers orders for thurgins
%Conor Nailos
%1/20/16
%Adapted from Professor Lent's original takeorder example
clear;clc
%% Get Name
disp('Good Day!');
persName=input('What is your name? ','s');
disp(' ');
disp(['Good to see you today, ',persName, '!']);
%% Get order
disp('We have serval types of thurgins available today.');
numNurv=input('How many nurvils would you like? ');
numWeen=input('How many weenives would you like? ');
numToms=input('And how many tombits would you like? ');
disp(' ');
%% Order Summary
cWeen=1.23;
cNurv=.55;
cToms=.45;
cost=numNurv*cNurv+numWeen*cWeen+numToms*cToms;
numThurgs=numNurv+numWeen+numToms;
disp(['That''s ',num2str(numThurgs),' thurgins in all.']);
disp(['That will cost ' num2str(cost), ' dollars.']);
disp(['They''ll be right out, ' persName, '.']);