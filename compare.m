clear
figure
load('result1_joint.mat');
plot(i,R,'-g*','LineWidth',1);
hold on
load('svd_rzf.mat')
plot(i,R,'-m^','LineWidth',1)
hold on
clear
load('svd_zf.mat')
plot(i,R,'-ks','LineWidth',1)
hold on
clear
load('svd_mf.mat')
plot(i,R,'-rd','LineWidth',1)
hold on
clear
load('Naive_AF.mat')
plot(i,R,'-bo','LineWidth',1)
hold on
clear
legend('Proposed-joint','SVD+RZF','SVD+ZF','SVD+MF','Naive AF')
xlabel('SNR(dB)')
ylabel('WSR(bps/Hz)')
grid on