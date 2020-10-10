clc 
subplot(2,1,2)

t1=[0 0.1]; 
m1=0.5*t1;
p = plot(t1,m1,'-b','MarkerSize',5);   

axis([0 5 0 1.5]);
grid on;
x=-3:0.01:6; 
y=zeros(1,length(x));  
n=1;
j=1;  


ft=f(x,0,1);  
subplot(2,1,1)

h=plot(x,ft);
txt=text (1,1.06,'h(x)');
axis([x(1),x(end),0,1.5]);
grid on;
hold on;  


plot(x,f(x,0,0.5),'m');
L=text (1,0.56,'g(x)');
pause(2);


k=plot(x,f(-x,0,1),'r');
axis([x(1),x(end),0,1.5]);
txt2=text(-1,1.06,'h(-而)');
grid on;
pause(1);
delete(h);  
delete(L);
text (1,0.56,'g(而)');
delete (txt)
pause(0.5);


delete(k);  
delete (txt2)
for i=0:0.01:4
    subplot(2,1,1) 
    m=plot(x,f(-x,-i,1),'r')
     axis([x(1),x(end),0,1.5]);
     grid on;
     txt=text (-1+i,1.06,'h(x-而)');
     if i<2
     y=0.5*(x==i)  
    u(n)= plot(x,y,'k') 
    n=n+1;
     elseif j<=200 
         delete (u(j))  
         j=j+1      
     end
    pause(0.01);
    delete(m);
    delete(txt);  
    subplot(2,1,2)
    hold on
     t1=t1+0.01;
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
text (4,1.06,'h(x-而)'); 

function[y]=f(x,i,q)   
y=zeros(1,length(x));
x_pos=find((x>=(0+i))&(x<(2+i)));
y(x_pos)=q;
end