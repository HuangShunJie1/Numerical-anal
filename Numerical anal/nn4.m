clear;
n=100000;%指定迭代次數
start=1;%畫圖時開始的次數
dn=floor(n/200);%密度
a1=zeros(n,1);
a1p=zeros(n,1);
a1n=zeros(n,1);
n1=ones(n,1);
n2=ones(n,1);
err1=zeros(n-1,1);
err2=zeros(n-1,1);
for i=1:n
    a1(i)=(-1)^(i-1)/(2*i-1); 
    if a1(i)>0
        a1p(i)=a1(i);
    else
        a1n(i)=a1(i);
    end

end

for i=1:n
    n1(i)=sum(a1(1:i));
    n2(i)=sum(a1p(1:i))+sum(a1n(1:i));
end
n1=4*n1;
n2=4*n2;


pis=zeros(n,1);
for i=1:n
    pis(i)=pi;
end

n1=abs(n1-pis);
n2=abs(n2-pis);

figure(1)
plot((start:dn:n),log(n1(start:dn:n))/log(10),'r-x','LineWidth',2);
hold on
plot((start:dn:n),log(n2(start:dn:n))/log(10),'b-.','LineWidth',2);
legend({"正加","正負號分開加"})
xlabel('迭代次數','FontSize',14)
ylabel('nn4','FontSize',14)
grid on
hold off