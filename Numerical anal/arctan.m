clear;
n=30;%指定迭代次數
n5_1=zeros(n,1);
n5_2=zeros(n,1);
n5_3=zeros(n,1);
n5_4=zeros(n,1);
n5_5=zeros(n,1);
n5_6=zeros(n,1);
n5_1(1)=4*((1/2)+1/3);
n5_2(1)=4*(2*(1/2)-1/7);
n5_3(1)=4*(2*(1/3)+1/7);
n5_4(1)=4*(4*(1/5)-1/239);
n5_5(1)=4*(12*(1/18)+8*(1/57)-5*(1/239));
n5_6(1)=4*(183*(1/239)+32*(1/1023)-68*(1/5832)+12*(1/113021)-100*(1/6826318)-12*(1/33366019650)+12*(1/43599522992503626068));
for i=2:n
    n5_1(i)=n5_1(i-1)+4*((-1)^(i-1)*(1/2)^(2*i-1)/(2*i-1)+(-1)^(i-1)*(1/3)^(2*i-1)/(2*i-1));
    n5_2(i)=n5_2(i-1)+4*(2*(-1)^(i-1)*(1/2)^(2*i-1)/(2*i-1)-(-1)^(i-1)*(1/7)^(2*i-1)/(2*i-1));
    n5_3(i)=n5_3(i-1)+4*(2*(-1)^(i-1)*(1/3)^(2*i-1)/(2*i-1)+(-1)^(i-1)*(1/7)^(2*i-1)/(2*i-1));
    n5_4(i)=n5_4(i-1)+4*(4*(-1)^(i-1)*(1/5)^(2*i-1)/(2*i-1)-(-1)^(i-1)*(1/239)^(2*i-1)/(2*i-1));
    n5_5(i)=n5_5(i-1)+4*(12*(-1)^(i-1)*(1/18)^(2*i-1)/(2*i-1)+8*(-1)^(i-1)*(1/57)^(2*i-1)/(2*i-1)-5*(-1)^(i-1)*(1/239)^(2*i-1)/(2*i-1));
    n5_6(i)=n5_6(i-1)+4*(183*(-1)^(i-1)*(1/239)^(2*i-1)/(2*i-1)+32*(-1)^(i-1)*(1/1023)^(2*i-1)/(2*i-1)-68*(-1)^(i-1)*(1/5832)^(2*i-1)/(2*i-1)+12*(-1)^(i-1)*(1/113021)^(2*i-1)/(2*i-1)-100*(-1)^(i-1)*(1/6826318)^(2*i-1)/(2*i-1)-12*(-1)^(i-1)*(1/33366019650)^(2*i-1)/(2*i-1))+12*(-1)^(i-1)*(1/43599522992503626068)^(2*i-1)/(2*i-1);
end


pis=zeros(n,1);
for i=1:n
    pis(i)=pi;
end
n5_1=abs(n5_1-pis);
n5_2=abs(n5_2-pis);
n5_3=abs(n5_3-pis);
n5_4=abs(n5_4-pis);
n5_5=abs(n5_5-pis);
n5_6=abs(n5_6-pis);

figure(1)
plot((1:n),log(n5_1)/log(10),'r-x','LineWidth',2);
hold on
plot((1:n),log(n5_2)/log(10),'y-x','LineWidth',2);
plot((1:n),log(n5_3)/log(10),'b-x','LineWidth',2);
plot((1:n),log(n5_4)/log(10),'g-x','LineWidth',2);
plot((1:n),log(n5_5)/log(10),'black-x','LineWidth',2);
plot((1:n),log(n5_6)/log(10),'c-x','LineWidth',2);
legend({"n5_1","n5_2","n5_3","n5_4","n5_5","n5_6"})
xlabel('N','FontSize',14)
ylabel('log error','FontSize',14)
grid on
hold off