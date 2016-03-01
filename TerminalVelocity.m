%Finds a velocity, v, for an object given mass and cross-sectional area.
%Conor Nailos
%14 January 2015
 clear 
 clc
%% Variables and Constants
airDens=1.18; % kg/m^3
dragCoeff=.3;
gravity=9.81; % m/s^2
mph=2.23694; %conversion factor for m/s

mass= input('Enter the object''s mass: '); %kilograms
crossSecArea=input('Enter the object''s cross-sectional area: '); % m^2
secondCsa=input('Enter the object''s second cross-sectional area: '); % m^2
disp(' ');
%% Calculations

vel=sqrt((2*mass*gravity)/(airDens*crossSecArea*dragCoeff));
vel2=sqrt((2*mass*gravity)/(airDens*secondCsa*dragCoeff));

velMph=mph*vel;
secondVelMph=vel2*mph;

velDiff=vel-vel2;
velDiffMph=velMph-secondVelMph;
%% Output

disp(['Terminal Velocity in m/s is: ', num2str(vel)]);
disp(['Terminal Velocity in MPH is: ', num2str(velMph)]);
disp(' ');
disp(['The difference in Terminal Velocity(m/s) is ', num2str(velDiff)]);
disp(['The difference in Terminal Velocity(mph) is ', num2str(velDiffMph)]);