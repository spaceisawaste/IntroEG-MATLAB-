%Takes a height in feet and inches and displays it in centimeters
%Conor Nailos
%14 January 2016

clear; clc

%% variables and paramaters

ftHeight=5;
inHeight=9;

%% Calculations

feetConv=30.48;
inchesConv=2.54;

ft2cent=ftHeight*feetConv;
in2cent=inHeight*inchesConv;

centHeight=ft2cent+in2cent;


%% Output
disp(['The total height is ', num2str(centHeight), ' cm.']);