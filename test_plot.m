figure
load('test.mat');
i=1:101;
plot(i,RR(1,:),'LineWidth',1);
hold on
plot(i,RR(1,:),'LineWidth',1);
hold on
plot(i,RR(3,:),'LineWidth',1);
hold on
plot(i,RR(4,:),'LineWidth',1);
hold on
plot(i,RR(5,:),'LineWidth',1);
hold on
plot(i,RR(6,:),'LineWidth',1);
hold on
plot(i,RR(7,:),'LineWidth',1);
legend('SNR=-10dB','SNR=-5dB','SNR=0dB','SNR=5dB','SNR=10dB','SNR=15dB','SNR=20dB')
xlabel('µü´ú´ÎÊý')
ylabel('WSR(bps/Hz)')
grid on
