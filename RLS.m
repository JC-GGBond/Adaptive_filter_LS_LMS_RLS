% As shown in RLS algorithm
% Initialization
% constant 
delta=0.004;
lambda=0.98;
w=zeros(M,L+1);
% variable
epsilon=zeros(L,1);
P1=eye(M)/delta;%单位矩阵eye(M)  就是单位阵I；书中给的是乘法，这里写的是除法，可能是便于收敛更快吧。

%实际上想要实现RLS有一个重要步骤就是对数据项进行处理，就是把采集到的数据经过变换成为u(n)
%RLS
for k=1:L
    PIn=P1*A(:,k);%第一次循环为P(0)
    denok=lamda+A(:,k)'*PIn;
    kn=PIn/denok;
    epsilon(k)=b(k)-w(:,k)'*A(:,k);
    %conj()返回每个元素的复共轭
    w(:,k+1)=w(:,k)+kn*conj(epsilon(k));
    P1=P1/lambda-kn*A(:,k)'*P1/lambda;
end
