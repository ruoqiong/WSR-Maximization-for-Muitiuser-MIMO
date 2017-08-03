function [F]=solve_F(lem)
global G1 D1 W1 G2 D2 W2 H V V1 V2 snr 
F1=pinv(G1'*D1'*W1*D1*G1+G2'*D2'*W2*D2*G2+lem*eye(4,4));
F2=(G1'*D1'*W1*(V1')+G2'*D2'*W2*(V2'))*H';
F3=pinv(H*V*V'*H'+(1/snr)*eye(4,4));
F=F1*F2*F3;