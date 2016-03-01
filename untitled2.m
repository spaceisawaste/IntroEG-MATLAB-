z = 0;
for ir = 1:3
    for ic = 1:4
        M(ic, ir) = z;
        z = z + 1;
    end
end
disp(M)