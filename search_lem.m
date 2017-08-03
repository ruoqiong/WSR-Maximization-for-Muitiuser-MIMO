function [lem]=search_lem()
global Rr Pr 
lem=0;
F=solve_F(lem);
if (trace(F*Rr*F')-Pr)<=0
    lem=0;
else
    lem=BinSearch_lem(0,100);
end