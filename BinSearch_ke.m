function [ke]=BinSearch_ke(low,high)
global F  Pt u l V Rr
mid=(low+high)/2;
[V,Rr]=solve_V(mid);
if abs((u*trace(V*V')+l*trace(F*Rr*F'))-Pt)<10^-4
    ke=mid;
elseif ((u*trace(V*V')+l*trace(F*Rr*F'))-Pt)>10^-4
    ke=BinSearch_ke(mid,high);
else
    ke=BinSearch_ke(low,mid);
end
