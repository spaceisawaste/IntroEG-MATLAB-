%Conor Nailos
%2/16/16
%it's a magic 8 ball. Randomly picks from 10 possible responses
clear;clc
rng('shuffle')
%% Parameters
responses{1}='It is certain';
responses{2}='Yes-definitely';
responses{3}='Most likely';
responses{4}='Sings point to yes';
responses{5}='Better not tell you now';
responses{6}='Don''t count on it';
responses{7}='Outlook not so good';
responses{8}='It is decidedly so';
responses{9}='Very Doubtful';
responses{10}='Reply hazy, try again';
asking=true;
%% Output
while asking
    question=input('Ask the magic conch shell a question. Press q to quit ','s');
    if question=='q'
        asking=false;
    else
        disp(responses{randi(10)});
    end
end
disp('Later man');