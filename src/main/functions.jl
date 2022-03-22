function AC_cbl(mva,km)
    cbl=cable();cbl.mva=mva;cbl.wnd="Norther"
    ac_cbl=optimal_ac_cable(cbl,get_220kV_cables(),km,get_Cost_Data())
    if (ac_cbl.num<1); ac_cbl.costs.cpx_p=1e12; end
    return ac_cbl
end


function DC_cbl(mva,km)
    cbl=cable();cbl.mva=mva;cbl.wnd="Norther"
    dc_cbl=optimal_hvdc_cable(cbl,get_500kV_cables(),km,get_Cost_Data())
    #
    return dc_cbl
end