clear;
logn=10;
n=10^logn;%指定迭代次數
start=1;%畫圖時開始的次數
n3=ones(logn,1);
n3b=ones(logn,1);
n3s=ones(logn,1);

for i=1:logn
    
    for j=1:10^i
        n3s(i)=n3s(i)*2*j/(2*j+1);
        n3b(i)=n3b(i)*2*j/(2*j-1);
    end
    fprintf("n=%2.0f DONE!\n",i);
    n3(i)=n3s(i)*n3b(i);
end
n3=2*n3;


pis=zeros(logn,1);
for i=1:logn
    pis(i)=pi;
end

n3=abs(n3-pis);
N=zeros(logn,1);
for i=(1:logn)
    N(i)=n3(i);
end
figure(1)
plot((1:logn),log(N)/log(10),'r-x','LineWidth',2);
hold on
legend({"nnn3分開乘"})
xlabel('logN','FontSize',14)
ylabel('nn3','FontSize',14)
grid on
hold off


%%%跟估計的一樣，(log(n),log(error1))會成一條直線。