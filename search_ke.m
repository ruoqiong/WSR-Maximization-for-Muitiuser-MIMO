function [ke]=search_ke()
global u l Pt F 
ke=0;
[V,Rr]=solve_V(ke);
if ((u*trace(V*V')+l*trace(F*Rr*F'))-Pt)<=0
    ke=0;
else
    ke=BinSearch_ke(0,100);
end