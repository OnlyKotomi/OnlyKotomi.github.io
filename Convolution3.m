
clc
clear

f=@(x) (x.*0+1).*(x>=0 & x<1)+0;
g=@(x) (x.*0+2).*(x>=0 & x<1)+0;

x_of_f=-3:0.01:3;
y_of_f=f(x_of_f);
figure(1)
hold on
grid on
plot(x_of_f,y_of_f,'r');
axis ([-3 3 0 3]) 
xlabel('¦Ó','FontSize',16);
x_of_g=-3:0.01:3;

for t = -3:0.04:3 
    y_of_g=g(t-x_of_g);
    y_of_g_plot=plot(x_of_g,y_of_g,'b');
    pause(0.001);
    delete(y_of_g_plot);
   
    sum=0;
    for tao=-3:0.01:3
        sum=sum+0.01*(f(tao)*g(t-tao));
    end
    disp(sum);
    plot(t,sum,'.');
end
hold off