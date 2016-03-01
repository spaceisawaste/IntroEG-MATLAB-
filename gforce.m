%Finds the gravitational force between two people
%Conor Nailos
% 1/15/16
clear;clc
%% Variables and stuff
G=6.67300*10^-11; %Nm^2/kg^2

dist=2; %meters
mass1=80; %kilograms
mass2=60; %kilograms

%person1Custom=input('Enter your mass in kg: ');
%person2Custom=input('Enter your mass in kg: ');
%distanceCustom=input('How far apart are they in meters? ');
%% Calculations
forceGrav=((G*mass1*mass2)/(dist^2));

%forceGravCustom=((G*person1Custom*person2Custom)/(distanceCustom^2));
%% Outputs
disp(['The Force of Gravity between them is ', num2str(forceGrav), ' Newtons']);
%disp(['The Force of Gravity between them is ', num2str(forceGravCustom), ' Newtons']);