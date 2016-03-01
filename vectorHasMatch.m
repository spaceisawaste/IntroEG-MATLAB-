function hasMatch = vectorHasMatch( inputVector )
% vectorHasMatch( v ) returns true if
% any two values in the vector are identical

N = length( inputVector );
k = 1;
hasMatch = false;

sortedVector = sort( inputVector );

while (k < N) && (~hasMatch)
    if sortedVector(k) == sortedVector(k+1)
        hasMatch = true;
    end
    k = k + 1;
end