function quad=quadFunc(a,b,c)
%Solves quadratic equations. Tells user if the ansers are real, equal, or
%complex
%conor nailos, 2/16/16
x1=(-b+sqrt(b^2-4*a*c))/(2*a);
x2=(-b-sqrt(b^2-4*a*c))/(2*a);

if sqrt(b^2-4*a*c)>0
    disp('Two real roots');
elseif sqrt(b^2-4*a*c)==0
    disp('Equal Roots');
else
   disp('Complex roots');
end
disp(num2str(x1));
disp(num2str(x2));
end