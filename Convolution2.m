a=[1 2 3 7 8 3]; % 序列
b=[2 3 4 8 9 5 7 7]
8
k=length(a); % 定义长度
bk=length(b);
n=length(a)+length(b)-1; % 同样是定义长度， 不过是输出长度
a=[a zeros(1,n-k)]; % 补零矩阵， 让运算更快
b=[b zeros(1,n-bk)];
y=zeros(1,n);
for i=1:n %for 语句， 从 1 开始
temp=0; % 赋初值， 起始位置
for j=1:n
if i>=j
temp=temp+a(j).*b(i+1-j) % 公式
else
break;
end
end
y(i)=temp
end
y
subplot(2,1,1)
stem(y)