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

%% Move some pixels
bottom=grayMeme(1:1400,:);
top=grayMeme(1401:end,:);
left=grayMeme(:,1:2000);
right=grayMeme(:,2001:end);
newMeme=[bottom;right,left;top];
figure(2);
axis;
hax2=gca;
imshow(newMeme,'InitialMagnification','fit','Parent',hax2);