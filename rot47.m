%Conor Nailos
%3/16/16
%encrypts a message using a rotation cypher and displays the cyphered text

function so=rot47(si) 
so=double(si); 
l=length(so); 
for k=1:l 
    so(k)=so(k)+47; 
    if so(k)>125 
        x=so(k)-125; 
        so(k)=31+x; 
    end
end
so=char(so);