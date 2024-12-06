clear;
n=1000;%指定迭代次數
start=1;%畫圖時開始的次數
dn=floor(n/200);%密度
a1=zeros(n,1);
n1=zeros(n,1);
n2=zeros(n,1);
err1=zeros(n-1,1);
err2=zeros(n-1,1);
for i=1:n
    a1(i)=6/i^2;   
end

for i=1:n
    for j=1:i
        n1(i)=n1(i)+a1(j);
    end
    for j=i:-1:1
        n2(i)=n2(i)+a1(j);
    end
    n1(i)=sqrt(n1(i));
    n2(i)=sqrt(n2(i));
end


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
legend({"正加","反加"})
xlabel('迭代次數','FontSize',14)
ylabel('"數列1正加"與pi的誤差值(取log以10為底)','FontSize',14)
grid on
hold off