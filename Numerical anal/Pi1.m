function [n1,P1] = Pi1(n)
n1 = 0;
sum = 0;
P1 = 0;
while n1<=n
    n1 = n1+1;
    sum = sum + 6/(n1^2);
    P1 = sqrt(sum) ;
end
end

