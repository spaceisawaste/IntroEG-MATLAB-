%Conor Nailos
%1/21/16
clear;clc
%% Get age
age=input('How old are you? ');
%% Witty responses
if(age<17)
    disp('You''re still a child');
elseif(age==17)
    disp('cool, you are getting closer to adulthood');
elseif(age>100)
    disp('Man, you''re old af');
else
    disp('Congrats on being an adult');
end
