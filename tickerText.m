%Conor Nailos
%3/16/16
% Function that displays the string s scrolling through a text window with
% width iwidth. Parameter dt gives the length of the pause after a piece
% of text is displayed.
function text = tickertext(s,iwidth,dt) 
%% First loop
l=length(s);

for i=1:l
    if i<=iwidth
        disp([blanks(iwidth-i),s(1:i)])
    elseif i>=iwidth
        disp(s(i-iwidth+1:i))
    end
    pause(dt)
end
%% Use 2nd FOR Loop to terminate string
for k = 2:iwidth
    disp([s(i-iwidth+k:i),blanks(iwidth)])
    pause(dt)
end