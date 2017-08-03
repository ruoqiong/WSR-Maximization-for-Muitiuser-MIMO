close all
clc,clear
%%
%预定义（4,4*1,2*2）
Mb=4;   %基站的天线数
Mr=4;    %中继的天线数
N=1;      %中继的个数
Mu=2;   %用户的天线数
K=2;      %用户的个数
P=1;      %基站传输功率最大值
Pr=P/N; %中继传输功率最大值
w1=1/4;%用户1权值
w2=3/4;%用户2权值
t=0.17;    %步长
c=1;
H=(randn(Mr,Mb)+1i*randn(Mr,Mb))/sqrt(2);  %衰落信道预定义
G1=(randn(Mu,Mr)+1i*randn(Mu,Mr))/sqrt(2); 
G2=(randn(Mu,Mr)+1i*randn(Mu,Mr))/sqrt(2); 
save('test1.mat')

