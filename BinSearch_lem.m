function [lem]=BinSearch_lem(low,high)
global Rr Pr 
mid=(low+high)/2;
F=solve_F(mid);
if abs((trace(F*Rr*F')-Pr))<=10^-4
    lem=mid;
elseif (trace(F*Rr*F')-Pr)>10^-4
    lem=BinSearch_lem(mid,high);
else
    lem=BinSearch_lem(low,mid);
end

    