figure
load('result1_joint.mat');
RR(1,19:1204)=RR(1,18);
RR(2,22:1204)=RR(2,21);
RR(3,21:1204)=RR(3,20);
RR(4,22:1204)=RR(4,21);
RR(5,28:1204)=RR(5,27);
RR(6,347:1204)=RR(6,346);
i=1:1203;
plot(i,RR(1,2:1204),'LineWidth',1);
hold on
plot(i,RR(2,2:1204),'LineWidth',1);
hold on
plot(i,RR(3,2:1204),'LineWidth',1);
hold on
plot(i,RR(4,2:1204),'LineWidth',1);
hold on
plot(i,RR(5,2:1204),'LineWidth',1);
hold on
plot(i,RR(6,2:1204),'LineWidth',1);
hold on
plot(i,RR(7,2:1204),'LineWidth',1);
legend('SNR=-10dB','SNR=-5dB','SNR=0dB','SNR=5dB','SNR=10dB','SNR=15dB','SNR=20dB')
xlabel('µü´ú´ÎÊý')
ylabel('WSR(bps/Hz)')

grid on
