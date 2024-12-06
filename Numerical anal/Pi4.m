function [n4,P4] = Pi4(n)
n4 = 0;
sum = 0;
while n4<=n
    sum = sum + (4*((-1)^n4))/(2*n4+1);
    n4 = n4 + 1;
end
P4=sum;
end