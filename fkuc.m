clear;clc
stash(1)=100;
spin(1)=1;
Pwin=18/38;
bet=10;
%% Ye ho
i=1;
while stash(i)>=bet
  r=rand();
  if(r<Pwin)
      stash(i+1)=stash(i)+bet;
      disp('epic win');
  else
      stash(i+1)=stash(i)-bet;
      disp('loser');
  end
  i=i+1;
  spin(i)=i;
  
  plot(spin(1:i),stash(1:i)),'b';
  axis([0 1.2*i 0 inf])
  line
  drawnow
end