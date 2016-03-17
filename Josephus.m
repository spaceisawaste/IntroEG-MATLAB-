[j,m]=JosephusProblem(10,2);
for i=1:length(m)
    bar(m(i,:));
    pause(.2)
    drawnow
end