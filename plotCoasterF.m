function plotCoasterF(handles)
% Uses the coasterFunc function to find the position and
% velocity on a roller coaster.  Plots the position, velocity,
% or both (depending on plotChoice).
clc
%% Set Parameters
d=handles.dSlider.Value;  % d should be between 0.05 and 0.3
tmin = 0;   % start time (seconds)
tmax = 60;  % end time (seconds)
Nt = 200;

doGrid = handles.gridCheckbox.Value;  % Grid on or off

%% Calculate Values
% Calculate the time points and then use coasterFunc to find the
% position and velocity at each time.

t = linspace(tmin, tmax, Nt);
[y, v] = coasterFunc(t, d);

%% Plot

switch handles.plotPopUp.Value
    case 1  % plot the function
        plot(handles.plotAxes,t, y)
        ylabel(handles.plotAxes,'Height (ft)')
    case 2  % plot the derivative
        plot(handles.plotAxes,t,v)
        ylabel(handles.plotAxes,'Velocity (mph)')
    case 3  % plot both (special plotting command)
        plot(handles.plotAxes,t, y, t, v, '--');
        ylabel(handles.plotAxes,'Height or Velocity')
        legend(handles.plotAxes,'Height (ft)', 'Velocity (mph)')
end
xlabel(handles.plotAxes,'Time (sec)')

if doGrid
    grid(handles.plotAxes, 'on')
else
    grid(handles.plotAxes, 'off')
end
