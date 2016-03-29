function procImageF(handles)
%% Get the meme
filename='trump.jpg';
nicePic=imread(filename);

%% Make it gray
grayPic=rgb2gray(nicePic);

%% Display original
hax=handles.origAxes;
imshow(grayPic,'InitialMagnification','fit','Parent',handles.origAxes);

%% set threshold and width
x0=handles.thresholdSlider.Value;
width=handles.widthSlider.Value;

%% define filter function as logistic
logistic=@(x) 1./(1+exp(-(double(x)-x0)/width));
%% get new values and plot
x=linspace(0,255,200);
transferFunction=255*logistic(x);
plot(handles.plotAxes,x,transferFunction);
axis([0 255 0 255]);
xlabel(handles.plotAxes,'pixel input level');
ylabel(handles.plotAxes,'pixel output level');
title(handles.plotAxes,'Transfer Function');
%% transform!
hax3=handles.procAxes;
MS=255*logistic(grayPic);
imshow(MS,'InitialMagnification','fit','Parent',hax3);
