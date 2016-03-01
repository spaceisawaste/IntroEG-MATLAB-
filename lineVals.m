function [slope,yint]=lineVals(x1,x2,y1,y2)
%Finds slope and y intercept for a given pair of points
slope=((y2-y1)/(x2-x1));
yint=y1-slope*x1;
end