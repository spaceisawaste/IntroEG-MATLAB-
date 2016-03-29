function pictureTransformF(handles)
%% Get the meme
filename='trump.jpg';
niceMeme=imread(filename);

%% Make it gray
grayMeme=rgb2gray(niceMeme);

%% Display the meme
figure(1)
axis;
hax=gca;
imshow(grayMeme,'InitialMagnification','fit','Parent',hax);

%% set threshold and width
x0=122.5;
width=1;

%% define filter function as logistic
logistic=@(x) 1./(1+exp(-(double(x)-x0)/width));
%% get new values and plot
x=linspace(0,255,200);
transferFunction=255*logistic(x);

figure(2)
plot(x,transferFunction);
axis([0 255 0 255]);
xlabel('pixel input level');
ylabel('pixel output level');
title('Transfer Function');
%% transform!
figure(3)
hax3=gca;
MS=255*logistic(grayMeme);
imshow(MS,'InitialMagnification','fit','Parent',hax3);
