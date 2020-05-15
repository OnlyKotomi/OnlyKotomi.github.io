clc 
subplot(2,1,2)

t1=[0 0.1]; %同时输入两个点，两点一线
m1=0.5*t1;
p = plot(t1,m1,'-b','MarkerSize',5);   

axis([0 5 0 1.5]);
grid on;
x=-3:0.01:6; 
y=zeros(1,length(x));  % x,y 的初始化
n=1;
j=1;  %定义两个计数变量

%定义一个函数h（x）
ft=f(x,0,1);  
subplot(2,1,1)

h=plot(x,ft);
txt=text (1,1.06,'h(x)');
axis([x(1),x(end),0,1.5]);
grid on;
hold on;  %在同一个figure下绘制g（x）

%绘制g（x）
plot(x,f(x,0,0.5),'m');
L=text (1,0.56,'g(x)');
pause(2);

%把x变为τ，反褶h（τ）
k=plot(x,f(-x,0,1),'r');
axis([x(1),x(end),0,1.5]);
txt2=text(-1,1.06,'h(-τ)');
grid on;
pause(1);
delete(h);  %清除h（x）的图像
delete(L);
text (1,0.56,'g(τ)');
delete (txt)
pause(0.5);

%令h（x-τ）动态右移
delete(k);  
delete (txt2)
for i=0:0.01:4
    subplot(2,1,1) 
    m=plot(x,f(-x,-i,1),'r')
     axis([x(1),x(end),0,1.5]);
     grid on;
     txt=text (-1+i,1.06,'h(x-τ)');
     if i<2
     y=0.5*(x==i)  
    u(n)= plot(x,y,'k')  %用直线填充函数交汇的地方
    n=n+1;
     elseif j<=200 
         delete (u(j))  %删除不交汇区域的直线
         j=j+1      
     end
    pause(0.01);
    delete(m);
    delete(txt);  %删除前一个函数绘制后一个函数实现动态移动
    subplot(2,1,2)
    hold on
     t1=t1+0.01; %下一段线
     if i<1.9
         m1=0.5*t1;
          p = plot(t1,m1,'-b','MarkerSize',5); 
     elseif i>1.97
         m1=-0.5*t1+2
          p = plot(t1,m1,'-b','MarkerSize',5); 
     end
       

    axis([0 5 0 1.5]);
    pause(0.0001);   
    
end
 subplot(2,1,1) 
plot(x,f(-x,-4,1),'r')
text (4,1.06,'h(x-τ)'); 



%绘制宽度为2，位置随i变化，高度随q变化的脉冲子函数
function[y]=f(x,i,q)
y=zeros(1,length(x));
x_pos=find((x>=(0+i))&(x<(2+i)));
y(x_pos)=q;
end