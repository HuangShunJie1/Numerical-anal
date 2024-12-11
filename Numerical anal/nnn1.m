clear;
logn=10;
n=10^logn;%指定迭代次數
start=1;%畫圖時開始的次數
n1=zeros(logn,1);

for i=1:logn
    
    for j=1:10^i
        n1(i)=n1(i)+6/j^2;
    end
    n1(i)=sqrt(n1(i));
end


pis=zeros(logn,1);
for i=1:logn
    pis(i)=pi;
end

n1=abs(n1-pis);
N=zeros(logn,1);
for i=(1:logn)
    N(i)=n1(i);
end
figure(1)
plot((1:logn),log(N)/log(10),'r-x','LineWidth',2);
hold on
legend({"nnn1"})
xlabel('logN','FontSize',14)
ylabel('nn1','FontSize',14)
grid on
hold off


%%%跟估計的一樣，(log(n),log(error1))會成一條直線。