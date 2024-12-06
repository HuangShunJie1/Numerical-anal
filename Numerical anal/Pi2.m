function [n2,P2] = Pi2(n)
n2 = 0;
sum = 0;
while n2<=n
    n2 = n2 + 1;
    B = 1;
    for j=1:n2
        A = j/(2*j+1);
        B = B*A;
    end
    sum = sum + B;
end
P2=2*(sum+1);
end