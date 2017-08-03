figure 
clear
load('result1_joint.mat');
plot(i,R,'-b*','LineWidth',1);
hold on
clear
load('result1_bs.mat');
plot(i,R,'-k^','LineWidth',1)
hold on
clear
load('result1_rs.mat');
plot(i,R,'-ro','LineWidth',1)
xlabel('SNR(dB)')
ylabel('Sun rate(bps/Hz)')
legend('Proposed-joint','Proposed-BS','Proposed-RS')
xlabel('SNR(dB)')
ylabel('WSR(bps/Hz)')
grid on



