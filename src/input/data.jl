
############################ Reads Data from Excel ########################
################################################################################
#**
function get_Cost_Data()
    ks=cost_ks()
    ks.ldc=0.5175# changed from 1.775 on 8/12/21 to reflect cost in ENTSO-e
    ks.lac=0.5175# changed from 0.32 on 3/12/21 to reflect cost in ENTSO-e
    ks.opx_c=0.025#OPEX percent
    return ks
end

#ABB XLPE Submarine Cable Systems Attachment to XLPE Land Cable Systems not subsea - User´s Guide Table:49
#500: 0.14microF/km 0.43mH/km
#630: 0.16microF/km 0.41mH/km
#800: 0.17microF/km 0.40mH/km
#1000: 0.19microF/km 0.38mH/km
#Capacity: table 34
#400: 590
#500: 655
#630: 715
#800: 775
#1000: 825
#resistances:
#500: 0.0490ohms/km
#630: 0.0391ohms/km
#800: 0.0323ohms/km
#1000: 0.0273ohms/km
#costs: Centre for Sustainable Electricity and Distributed Generation
#500: 515*1.16(gbp/euro)
#630: 550
#800: 675
#1000: 700
#***Data for 1600 is taken from FEM simulation while cost is linear interpolation
function get_220kV_cables()#[kv, mm, mOhms/km, picoF/km, Amps, kE/km, mH/km]
    cbls220=[[220.0, 400.0, 40.1, 122.0, 590.0, 496.48, 0.457], [220.0, 500.0, 49.0, 140.0, 655.0, 597.4, 0.43], [220.0, 630.0, 39.1, 160.0, 715.0, 638.0, 0.41], [220.0, 800.0, 32.3, 170.0, 775.0, 783.0, 0.4], [220.0, 1000.0, 27.3, 190.0, 825.0, 812.0, 0.38], [220.0, 1600.0, 17.9, 190.0, 950.0, 1162.0, 0.35]]
    return cbls220
end

#**#[kv, mm, mOhms/km, picoF/km, Amps, kE/km, mH/km]
function get_500kV_cables()
    cbls500=[[500, 500, 46.7, 0.7, 1072, 510, 0.7], [500, 630, 36.1, 0.7, 1246, 516.5, 0.7], [500, 800, 28.2, 0.7, 1438, 525, 0.7], [500, 1000, 22.4, 0.7, 1644, 535, 0.7], [500, 1200, 19.3, 0.7, 1791, 545, 0.7], [500, 1400, 16.4, 0.7, 1962, 555, 0.7], [500, 1500, 15.4, 0.7, 2042.5, 560, 0.7], [500, 1600, 14.4, 0.7, 2123, 565, 0.7], [500, 1800, 12.9, 0.7, 2265, 575, 0.7], [500, 2000, 11.5, 0.7, 2407, 604, 0.7], [500, 2200, 10.3, 0.7, 2540, 633, 0.7], [500, 2400, 9.6, 0.7, 2678, 662, 0.7], [500, 2500, 9.2, 0.7, 2746, 719, 0.7], [500, 2600, 8.7, 0.7, 2814, 776, 0.7], [500, 2800, 7.8, 0.7, 2937, 890, 0.7], [500, 3000, 6.9, 0.7, 3066, 1004, 0.7]]
    return cbls500
end

