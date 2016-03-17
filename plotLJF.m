% Conor Nailos
%3/16/16
%Function form of PlotLJ
function plotLJF(handles)
%% Set Parameters

T = 1;
a = handles.widthSlidera.Value;
b = handles.widthSliderb.Value;
r = 3;
phi = handles.widthSliderphi.Value;
Nf = 300;
tf = 20;
t = linspace(1,tf,Nf);
animateOn = true;
%% Calculate Coordinates

for it=1:Nf;
    x(it) = r*cos(a*2*pi*t(it)/T);
    y(it) = r*sin(b*2*pi*t(it)/T + phi);
end

%% Plot Graphs
if animateOn
    for it=1:Nf;
        plot(handles.plotAxes,x(1:it),y(1:it),'g',...
            x(it),y(it),'ro')
        axis(handles.plotAxes,1.2*[-r r -r r])
        axis square
        grid(handles.plotAxes,'on')
        drawnow
    end
else
    plot(handles.plotAxes,x,y)
    axis(handles.plotAxes,1.2*[-r r -r r])
    axis square
    grid(handles.plotAxes,'on')
end