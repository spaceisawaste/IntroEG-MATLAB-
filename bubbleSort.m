%Conor Nailos
%3/16/16
% Function that examines each element of the vector and the element to
% its right. If they are in wrong order they will be swapped (assuming
% the right order is ascending order).
function vout=bubbleSort(v)
%% Set Parameters
l=length(v);
a = 1;

%% Use FOR Loop to Examine and Rearrange Vector

while a ~= 0
    b=0;
    for i=1:l-1
        if v(i)>v(i+1);
            v([i i+1]) = v([i+1 i]);
            b=b+1;
        end
    end
    if b == 0
        a=0;
    end
end
disp(v)
