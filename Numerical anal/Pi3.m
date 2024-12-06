function [n3,P3] = Pi3(n)
n3 = 0;
sum = 1;
while n3<=n
    n3 = n3 + 1;
    A = ((2*n3)^2)/((2*n3-1)*(2*n3+1));
    sum = sum*A;
end
P3=2*sum;
end