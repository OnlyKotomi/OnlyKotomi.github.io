function y=Convolution(x,h)
x= [1 2 3 7 8 3];h=[2 3 4 8 9 5 7 7] 
N=length(x); 
M=length(h); 
L=N+M-1; 
n=0; 
while(n<L) 
n=n+1;
y(n)=0; 
m=0; 
while(m<M)
m=m+1;
k=n-m+1;
if(k>=1&k<=N)
y(n)=y(n)+h(m)*x(k); 
end
end
end
nx=0:N-1; 
nh=0:M-1;
ny=0:L-1;
subplot(131);
stem(nx,x,'.k');xlabel('n');ylabel('x(n)');grid on; 
subplot(132);
stem(nh,h,'.k');xlabel('n');ylabel('h(n)');grid on;
subplot(133);
stem(ny,y,'.k');xlabel('n');ylabel('y(n)');grid on;