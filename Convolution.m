function y=Convolution(x,h) % 定义函数文件 jch.m
x= [1 2 3 7 8 3];h=[2 3 4 8 9 5 7 7] % 给 X H 付值
N=length(x); %N 的最大长度为 X
M=length(h); %M 的最大长度为 H
L=N+M-1; % 输出序列的长度为 L
n=0; % 赋初值， y(n) 的起始位置
while(n<L) % 循环语句（ n<L ）
n=n+1;
y(n)=0; %y(n) 的初值
m=0; % 反折
while(m<M)
m=m+1;
k=n-m+1; % 移位
if(k>=1&k<=N)
y(n)=y(n)+h(m)*x(k); % 相乘， 求和
end
end
end
nx=0:N-1; % 范围
nh=0:M-1;
ny=0:L-1;
subplot(131);
stem(nx,x,'.k');xlabel('n');ylabel('x(n)');grid on; % 杆图
subplot(132);
stem(nh,h,'.k');xlabel('n');ylabel('h(n)');grid on;
subplot(133);
stem(ny,y,'.k');xlabel('n');ylabel('y(n)');grid on;