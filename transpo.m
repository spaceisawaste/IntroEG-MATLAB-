%Asks user for distance to destination and if they can ride their bike
%Conor Nailos
%1/21/16
clear;clc
%% Inputs
dist=input('How far are you travelling today? ');
canRide=input('Can you ride a bike? Answer y or n. ','s');

%% Suggestion

if(dist>150)
    disp('You should take a plane');
elseif(dist>20)
    disp('you should drive a car there');
elseif(dist<=20&&canRide=='y')
    disp('Ride your bike!');
else
    disp('Take a walk. It''s not far at all.');
end