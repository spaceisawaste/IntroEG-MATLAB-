%Conor Nailos
%3/16/16
% Creates a visual representation of the function bubbleSort
function vout=bubbleSortVisualized(v)
%% Use Code from bubbleSort function but add pause and disp commands
l=length(v);
a = 1;
while a ~= 0
    b=0;
    for i=1:l-1
        if v(i)>v(i+1);
            v([i i+1]) = v([i+1 i]);
            b=b+1;
        end
        disp(v)
        pause(0.1)
    end
    if b == 0
        a=0;
    end
    
end

