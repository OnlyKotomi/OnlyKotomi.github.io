clc 
subplot(2,1,2)

t1=[0 0.1]; %ͬʱ���������㣬����һ��
m1=0.5*t1;
p = plot(t1,m1,'-b','MarkerSize',5);   

axis([0 5 0 1.5]);
grid on;
x=-3:0.01:6; 
y=zeros(1,length(x));  % x,y �ĳ�ʼ��
n=1;
j=1;  %����������������

%����һ������h��x��
ft=f(x,0,1);  
subplot(2,1,1)

h=plot(x,ft);
txt=text (1,1.06,'h(x)');
axis([x(1),x(end),0,1.5]);
grid on;
hold on;  %��ͬһ��figure�»���g��x��

%����g��x��
plot(x,f(x,0,0.5),'m');
L=text (1,0.56,'g(x)');
pause(2);

%��x��Ϊ�ӣ�����h���ӣ�
k=plot(x,f(-x,0,1),'r');
axis([x(1),x(end),0,1.5]);
txt2=text(-1,1.06,'h(-��)');
grid on;
pause(1);
delete(h);  %���h��x����ͼ��
delete(L);
text (1,0.56,'g(��)');
delete (txt)
pause(0.5);

%��h��x-�ӣ���̬����
delete(k);  
delete (txt2)
for i=0:0.01:4
    subplot(2,1,1) 
    m=plot(x,f(-x,-i,1),'r')
     axis([x(1),x(end),0,1.5]);
     grid on;
     txt=text (-1+i,1.06,'h(x-��)');
     if i<2
     y=0.5*(x==i)  
    u(n)= plot(x,y,'k')  %��ֱ����亯������ĵط�
    n=n+1;
     elseif j<=200 
         delete (u(j))  %ɾ�������������ֱ��
         j=j+1      
     end
    pause(0.01);
    delete(m);
    delete(txt);  %ɾ��ǰһ���������ƺ�һ������ʵ�ֶ�̬�ƶ�
    subplot(2,1,2)
    hold on
     t1=t1+0.01; %��һ����
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
text (4,1.06,'h(x-��)'); 



%���ƿ��Ϊ2��λ����i�仯���߶���q�仯�������Ӻ���
function[y]=f(x,i,q)
y=zeros(1,length(x));
x_pos=find((x>=(0+i))&(x<(2+i)));
y(x_pos)=q;
end