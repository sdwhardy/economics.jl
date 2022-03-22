#=import economics; const _ECO = economics#economics package backend - under development

cb=_ECO.DC_cbl(1500,50) # verified
cb=_ECO.AC_cbl(500,50) 
cb.costs.ttl
println(cb.elec)
((cb.elec.ohm/cb.num)*cb.length)
((cb.elec.xl/cb.num)*cb.length)
(cb.num*cb.elec.mva)
 _ECO.get_220kV_cables()=#