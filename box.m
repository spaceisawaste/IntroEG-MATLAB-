%Asks user for a box's dimmensions, then reports the SA and volume
%Conor Nailos
%1/19/16
clc;
clear;
%% Variables and Parameters
dimmH=input('Enter the box''s height: ');
dimmL=input('Enter the box''s length: ');
dimmW=input('Enter the box''s width: ');

%% Calculations
vol=dimmH*dimmL*dimmW;
SA=2*dimmL*dimmH + 2*dimmW*dimmH+2*dimmW*dimmL;

%% Outputs

disp(['The dimmensions are: ', num2str(dimmH), ' x ', num2str(dimmL), ' x ', num2str(dimmW)]);
disp(['The volume is: ', num2str(vol)]);
disp(['The surface area is: ', num2str(SA)]);