function [V,Rr]=solve_V(ke)
global A1 D1 W1 A2 D2 W2 u H l F V1 V2 snr P
V1=pinv((A1'*D1'*W1'*D1*A1+A2'*D2'*W2'*D2*A2+ke*(u*eye(4,4)+l*H'*F'*F*H)))*A1'*D1'*W1';
V2=pinv((A1'*D1'*W1'*D1*A1+A2'*D2'*W2'*D2*A2+ke*(u*eye(4,4)+l*H'*F'*F*H)))*A2'*D2'*W2';
V=[V1 V2];
Rr=H*V*V'*H'+(P/snr)*eye(4,4);