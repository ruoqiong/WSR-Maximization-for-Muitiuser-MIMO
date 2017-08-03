close all
clc,clear
%%
%预定义（4,4*1,2*2）
global G1 D1 W1 G2 D2 W2 H V V1 V2 Rr Pr snr A1  A2  u  l F Pt P
load('test1.mat')
%%
%RS固定
c=1;
for snrdb=-10:5:20
     snr=10^(snrdb/10);
     V=sqrt(P/Mb)*eye(Mb,Mu*K); %BS矩阵的初值
     Rr=H*V*V'*H'+(P/snr)*eye(4,4);
     F=sqrt(Pr/trace(Rr))*eye(Mr,Mb);  %RS矩阵的初值
     while(1)
            %1、求D
            VV=V;
            FF=F;
            V1=V(:,1:Mu);
            V2=V(:,Mu+1:2*Mu);
            A1=G1*F*H;
            A2=G2*F*H;
            Rz1=A1*(V2*V2'*A1')+(1/snr)*(G1*(F*F')*G1'+eye(2,2));
            Rz2=A2*(V1*V1'*A2')+(1/snr)*(G2*(F*F')*G2'+eye(2,2));
            D1=V1'*A1'*(A1*(V1*V1')*A1'+Rz1)^-1;
            D2=V2'*A2'*(A2*(V2*V2')*A2'+Rz2)^-1;
            %2、求W
            E1=(eye(2,2)+V1'*A1'*(Rz1)^(-1)*A1*V1)^-1;
            E2=(eye(2,2)+V2'*A2'*(Rz2)^(-1)*A2*V2)^-1;
            W1=(w1/(2*log(2)))*(E1)^-1;
            W2=(w2/(2*log(2)))*(E2)^-1;
            %3、求V
             u=0.5;
             l=0.5;
             while(1)
                 Pt=u*P+l*Pr;
                 ke=search_ke();
                 [V,Rr]=solve_V(ke);
                 F=sqrt(Pr/trace(Rr))*eye(Mr,Mb);
                 if abs(u*(trace(V*V')-P))<=10^-4 && abs(l*(trace(F*Rr*F')-Pr))<=10^-4
                     break;
                 else
                     u=u+t*(trace(V*V')-P);
                     l=l+t*(trace(F*Rr*F')-Pr);
                 end 
                  if u<0 
                     u=0; 
                 end
                 if l<0
                     l=0;
                 end 
            end
            if trace((V-VV)*(V-VV)')<=10^-3 && trace((F-FF)*(F-FF)')<=10^-3
                break
            end
     end
     V1=V(:,1:Mu);
     V2=V(:,Mu+1:2*Mu);
     A1=G1*F*H;
     A2=G2*F*H;
     Rz1=A1*(V2*V2'*A1')+(1/snr)*(G1*(F*F')*G1'+eye(2,2));
     Rz2=A2*(V1*V1'*A2')+(1/snr)*(G2*(F*F')*G2'+eye(2,2));
     R1=(1/2)*log2(abs(det(eye(2,2)+V1'*A1'*(Rz1^-1)*A1*V1)));
     R2=(1/2)*log2(abs(det(eye(2,2)+V2'*A2'*(Rz2^-1)*A2*V2)));
     R(c)=w1*R1+w2*R2;
     c=c+1;
end
i=-10:5:20;
save('result1_bs')
plot(i,R,'-o')
hold on