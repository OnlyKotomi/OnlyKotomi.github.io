a=[1 2 3 7 8 3]; % ����
b=[2 3 4 8 9 5 7 7]
8
k=length(a); % ���峤��
bk=length(b);
n=length(a)+length(b)-1; % ͬ���Ƕ��峤�ȣ� �������������
a=[a zeros(1,n-k)]; % ������� ���������
b=[b zeros(1,n-bk)];
y=zeros(1,n);
for i=1:n %for ��䣬 �� 1 ��ʼ
temp=0; % ����ֵ�� ��ʼλ��
for j=1:n
if i>=j
temp=temp+a(j).*b(i+1-j) % ��ʽ
else
break;
end
end
y(i)=temp
end
y
subplot(2,1,1)
stem(y)