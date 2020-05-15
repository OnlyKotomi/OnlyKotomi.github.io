%任意函数卷积过程演示
clc
clear
%定义函数
f=@(x) (x.*0+1).*(x>=0 & x<1)+0;%0-1的阶跃 高1
g=@(x) (x.*0+2).*(x>=0 & x<1)+0;%0-1的阶跃 高2
%计算并画出f，仅计算[-3,3]
x_of_f=-3:0.01:3;
y_of_f=f(x_of_f);
figure(1)
hold on
grid on
plot(x_of_f,y_of_f,'r');
axis ([-3 3 0 3]) %调整坐标显示范围
xlabel('τ','FontSize',16);
x_of_g=-3:0.01:3;%这个区域下计算g

for t = -3:0.04:3 %定义conv(t)=f(t)*g(t)，下面描绘不同t下的情况，构成动画
    y_of_g=g(t-x_of_g);%tao为自变量反折后平移t，这里是一个向量，一组tao
    y_of_g_plot=plot(x_of_g,y_of_g,'b');%画出g
    pause(0.001);%暂停
    delete(y_of_g_plot);%删除原曲线
    %求卷积，仅在-3，3区间积分即可
    sum=0;
    for tao=-3:0.01:3
        sum=sum+0.01*(f(tao)*g(t-tao));
    end
    disp(sum);
    plot(t,sum,'.');
end
hold off