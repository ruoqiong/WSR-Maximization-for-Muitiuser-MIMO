figure
load('test.mat');
i=1:101;
plot(i,RR(7,:),'LineWidth',1);
hold on
RR1=RR(7,:);
load('result1_joint.mat');
i=1:101;
plot(i,RR(7,2:102),'LineWidth',1);
hold on
plot(i,RR(7,2:102)/2+RR1/2,'LineWidth',1);
hold on
plot(i,RR(7,2:102)/4+3*RR1/4,'LineWidth',1);
grid on
xlabel('µü´ú´ÎÊý')
ylabel('WSR(bps/Hz)')
grid on