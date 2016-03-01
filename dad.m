clear;clc
 num=8;
   if num>0 && num<5
       response = 'a';
   elseif num>10 && num<70
       response = 'b';
   elseif num>85
       response = 'c';
else
       response='None of the above';
   end
   disp(response)
