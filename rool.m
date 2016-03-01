% roulette.m
%  simulate roulette game, betting always on red/black

% stash 100  90  80  90  ...
% spin    1   2   3   4
%    stash(k) is the remaining $ before the kth spin

clear;clc;clf
rng('shuffle')

%% Set Parameters

stash(1) = 100;
spin(1) = 1;

bet = 5;

Pwin = 18/38

ispin = 1;

%% Roll the dice
while stash(ispin) >= bet
    ispin = ispin + 1;
    spin(ispin) = ispin;
    
    r = rand();
    if r < Pwin
        stash(ispin) = stash(ispin-1) + bet;
        %disp('won')
    else
        stash(ispin) = stash(ispin-1) - bet;
        %disp('lost')
    end
    
    
    
    plot(spin(1:ispin),stash(1:ispin),'b',...
        spin(ispin),stash(ispin),'ro');
    line([0 ispin], [stash(1) stash(1)],'Color','r');
    axis([0 1.1*ispin 0 inf]);
    xlabel('Spin number');
    ylabel('Stash ($)');
    drawnow
end



