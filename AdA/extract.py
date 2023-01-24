# script to read the xls sheets of all permanent and temporary stations and to generate text files with stations having specific properties for plotting by GMT
import pandas as pd
import math
import os
import simplekml

# the two inventories need to be in the same folder as the script itself
inventoryP   = pd.read_excel("InventoryPermanent.xls", sep=",", header=[2]) # the inventory is read as DataFrame, the header of the sheet has 3 rows (0,1,2)
inventoryT   = pd.read_excel("InventoryTemporary.xls", sep=",", header=[2]) # so the sheet is read from the 4th row on
# it creates 3 folders, if they don't exist: PERM, TEMP, GOOG and saves ASCII text files into these folders

ts = '1.5'  # text size of station-name labels for GMT
kmlPerm030 = simplekml.Kml()
kmlPerm040 = simplekml.Kml()
kmlPerm060 = simplekml.Kml()
kmlPerm120 = simplekml.Kml()
kmlPerm240 = simplekml.Kml()
kmlPermUNKN  = simplekml.Kml()
kmlPermSPOT  = simplekml.Kml()
kmlPermNOSP  = simplekml.Kml()
kmlPermFUTU  = simplekml.Kml()
kmlPermUPGR  = simplekml.Kml()
kmlPermWHIT  = simplekml.Kml()
kmlTemp030 = simplekml.Kml()
kmlTemp040 = simplekml.Kml()
kmlTemp060 = simplekml.Kml()
kmlTemp120 = simplekml.Kml()
kmlTemp240 = simplekml.Kml()
kmlPermAll = simplekml.Kml()
kmlTempAll = simplekml.Kml()
kmlPermOut = simplekml.Kml()
kmlTempDep = simplekml.Kml()
kmlTempNot = simplekml.Kml()

counterTOTL   = 0
counterBB30   = 0
counterBB30o  = 0
counterBB40   = 0
counterBB40o  = 0
counterBB60   = 0
counterBB60o  = 0
counterUNKN   = 0
counterUNKNo  = 0
counterSPOT   = 0
counterSPOTo  = 0
counterFUTU   = 0
counterFUTUo  = 0
counterUPGR   = 0
counterNOSP   = 0
counterWHIT   = 0
counterWHITo  = 0
counterEIDAno = 0
counterEIDAnoBB = 0 # number of BB stations, which are NOT in EIDA
counterEIDAysBB = 0 # number of BB stations, which ARE in EIDA
counterEIDAys = 0
counterEIDAzz = 0

if not os.path.exists('PERM'):
    os.makedirs('PERM')

outBB30   = open("PERM/pBB30.txt"         , "w")  # output files for inputing to the GMT
labBB30   = open("PERM/pBB30label.txt"    , "w")
outBB30o  = open("PERM/pBB30o.txt"        , "w")  # "o" means "out" of the AdA region
labBB30o  = open("PERM/pBB30olabel.txt"   , "w")
csvBB3030 = open("GOOG/pBB30-30.csv"      , "w")  # csv for stations IN the area 30 km
csvBB3040 = open("GOOG/pBB30-40.csv"      , "w")  # csv for stations IN the area 40 km
outBB40   = open("PERM/pBB40.txt"         , "w")
labBB40   = open("PERM/pBB40label.txt"    , "w")
outBB40o  = open("PERM/pBB40o.txt"        , "w")
labBB40o  = open("PERM/pBB40olabel.txt"   , "w")
csvBB4030 = open("GOOG/pBB40-30.csv"      , "w")
csvBB4040 = open("GOOG/pBB40-40.csv"      , "w")
outBB60   = open("PERM/pBB60.txt"         , "w")
labBB60   = open("PERM/pBB60label.txt"    , "w")
outBB60o  = open("PERM/pBB60o.txt"        , "w")
labBB60o  = open("PERM/pBB60olabel.txt"   , "w")
csvBB6030 = open("GOOG/pBB60-30.csv"      , "w")
csvBB6040 = open("GOOG/pBB60-40.csv"      , "w")
pBB060120 = open("PERM/pBB060-120.txt"    , "w")
pBB120240 = open("PERM/pBB120-240.txt"    , "w")
pBB240    = open("PERM/pBB240.txt"        , "w")
outUNKN   = open("PERM/pUNKN.txt"         , "w")
labUNKN   = open("PERM/pUNKNlabel.txt"    , "w")
outUNKNo  = open("PERM/pUNKNo.txt"        , "w")
labUNKNo  = open("PERM/pUNKNolabel.txt"   , "w")
outSPOT   = open("PERM/pSPOT.txt"         , "w")
labSPOT   = open("PERM/pSPOTlabel.txt"    , "w")
outSPOTo  = open("PERM/pSPOTo.txt"        , "w")
labSPOTo  = open("PERM/pSPOTolabel.txt"   , "w")
csvSPOT30 = open("GOOG/pSPOT-30.csv"      , "w")
csvSPOT40 = open("GOOG/pSPOT-40.csv"      , "w")
outFUTU   = open("PERM/pFUTU.txt"         , "w")  # FUTUre permanent stations
labFUTU   = open("PERM/pFUTUlabel.txt"    , "w")
outFUTUo  = open("PERM/pFUTUo.txt"        , "w")
labFUTUo  = open("PERM/pFUTUolabel.txt"   , "w")
csvFUTU30 = open("GOOG/pFUTU-30.csv"      , "w")
csvFUTU40 = open("GOOG/pFUTU-40.csv"      , "w")
outUPGR   = open("PERM/pUPGR.txt"         , "w")
labUPGR   = open("PERM/pUPGRlabel.txt"    , "w")
csvUPGR30 = open("GOOG/pUPGR-30.csv"      , "w")
csvUPGR40 = open("GOOG/pUPGR-40.csv"      , "w")
outNOSP   = open("PERM/pNOSP.txt"         , "w")
labNOSP   = open("PERM/pNOSPlabel.txt"    , "w")
outWHIT   = open("PERM/pWHIT.txt"         , "w")
labWHIT   = open("PERM/pWHITlabel.txt"    , "w")
outWHITo  = open("PERM/pWHITo.txt"        , "w")
labWHITo  = open("PERM/pWHITolabel.txt"   , "w")
EIDAno    = open("PERM/EIDAno.txt"        , "w") # not in EIDA all stations
EIDAys    = open("PERM/EIDAys.txt"        , "w") # in EIDA all stations
EIDAzz    = open("PERM/EIDAzz.txt"        , "w") # not known
EIDAnoBB  = open("PERM/EIDAnoBB.txt"      , "w") # not in EIDA - BB only
labEInoBB = open("PERM/pEIDAnoBBlabel.txt", "w")
EIDAysBB  = open("PERM/EIDAysBB.txt"      , "w") # in EIDA - BB only

# BB30, BB40, BB60, UNKN, WHIT have two options based on column 0: inside or outside of AdA area
# SPOT, UPGR, NOSP dont have these options, because by definition, these are always inside

for n in inventoryP.index:                     # loop over all lines in the xls sheet
    if (not math.isnan(inventoryP.iloc[n,3])): # the last loop is going over the last line
        counterTOTL = counterTOTL + 1
        # BB30 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 30 and inventoryP.iloc[n,11] < 40: # the 1st column (0th here) says, if it is IN the region (=1) or out (=0)
            counterBB30 = counterBB30 + 1                                                            # the 10th column (11 here) contains the corner periods
            outBB30.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))  # station coordinates for GMT psxy
            csvBB3030.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvBB3040.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labBB30.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2]))) # station labels for GMT pstext
            pnt = kmlPerm030.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,0) # yellow
            pnt = kmlPermAll.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red
            if inventoryP.iloc[n,19] == 0: # 20th column (19th here) has a flag = 1 if in EIDA, = 0 if not in EIDA
                counterEIDAnoBB = counterEIDAnoBB + 1
                EIDAnoBB.write ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
                labEInoBB.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            if inventoryP.iloc[n,19] == 1: # IN the region, corner period >= 30 and < 40 s, in EIDA
                counterEIDAysBB = counterEIDAysBB + 1
                EIDAysBB.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
        # BB30 out
        if inventoryP.iloc[n,0] == 0 and inventoryP.iloc[n,11] >= 30 and inventoryP.iloc[n,11] < 40: # OUT of the region, corner period >= 30 and < 40 s
            counterBB30o = counterBB30o + 1
            outBB30o.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labBB30o.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermOut.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(100,100,100) # grey
        # BB 40 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 40 and inventoryP.iloc[n,11] < 59: # IN the region, corner period >= 40 and < 59 s
            counterBB40 = counterBB40 + 1
            outBB40.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))            
            csvBB4030.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvBB4040.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labBB40.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPerm040.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,174,0) # orange
            pnt = kmlPermAll.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red            
            if inventoryP.iloc[n,19] == 0: # IN the region, corner period >= 40 and < 59 s, not in EIDA
                counterEIDAnoBB = counterEIDAnoBB + 1
                EIDAnoBB.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
                labEInoBB.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            if inventoryP.iloc[n,19] == 1: # IN the region, corner period >= 40 and < 59 s, in EIDA
                counterEIDAysBB = counterEIDAysBB + 1
                EIDAysBB.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
        # BB 40 out
        if inventoryP.iloc[n,0] == 0 and inventoryP.iloc[n,11] >= 40 and inventoryP.iloc[n,11] < 59: # OUT of the region, corner period >= 40 and < 59 s
            counterBB40o = counterBB40o + 1
            outBB40o.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labBB40o.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermOut.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(100,100,100) # grey            
        # BB 60 in - includes all longer then 60s
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 59: # IN the region, corner period >= 59 s
            counterBB60 = counterBB60 + 1
            outBB60.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            csvBB6030.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvBB6040.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labBB60.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            if inventoryP.iloc[n,19] == 0: # IN the region, corner period >= 59 s, not in EIDA
                counterEIDAnoBB = counterEIDAnoBB + 1
                EIDAnoBB.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
                labEInoBB.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            if inventoryP.iloc[n,19] == 1: # IN the region, corner period >= 59 s, in EIDA
                counterEIDAysBB = counterEIDAysBB + 1
                EIDAysBB.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            pnt = kmlPermAll.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red                
        # BB 60 out - includes all longer then 60s
        if inventoryP.iloc[n,0] == 0 and inventoryP.iloc[n,11] >= 59: # OUT of the region, corner period >= 59 s
            counterBB60o = counterBB60o + 1
            outBB60o.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labBB60o.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermOut.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(100,100,100) # grey            
        # BB 060 - 120 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 59 and inventoryP.iloc[n,11] < 120: # IN the region, corner period >= 59 s and < 120 s
            pBB060120.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            pnt = kmlPerm060.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red
        # BB 120 - 240 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 120 and inventoryP.iloc[n,11] < 240: # IN the region, corner period >= 120 s and < 240 s
            pBB120240.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            pnt = kmlPerm120.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(166,16,76) # dark red
        # BB 240 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 240: # IN the region, corner period >= 240 s
            pBB240.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            pnt = kmlPerm240.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(135,0,135) # purple
        # UNKN in
        if inventoryP.iloc[n,0] == 1 and math.isnan(inventoryP.iloc[n,11]) and math.isnan(inventoryP.iloc[n,12]): # if corner period is empty and possible spot is also empty, then it is unknown
            counterUNKN = counterUNKN + 1
            outUNKN.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labUNKN.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermUNKN.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,0,0) # black
            pnt = kmlPermAll.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red
        # UNKN out
        if inventoryP.iloc[n,0] == 0 and math.isnan(inventoryP.iloc[n,11]) and math.isnan(inventoryP.iloc[n,12]): # unknown out of the region
            counterUNKNo = counterUNKNo + 1
            outUNKNo.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labUNKNo.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermOut.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(100,100,100) # grey            
        # SPOT in
        if inventoryP.iloc[n,0] == 1 and math.isnan(inventoryP.iloc[n,11]) and inventoryP.iloc[n,12] == 1: # if corner is empty and possible spot =1, then it is unequipped spot
            counterSPOT = counterSPOT + 1
            outSPOT.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            csvSPOT30.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvSPOT40.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labSPOT.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermSPOT.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,255) # cyan
        # SPOT out
        if inventoryP.iloc[n,0] == 0 and math.isnan(inventoryP.iloc[n,11]) and inventoryP.iloc[n,12] == 1: # unequipped spots OUT of the region
            counterSPOTo = counterSPOTo + 1
            outSPOTo.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labSPOTo.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
        # FUTU in
        if inventoryP.iloc[n,0] == 1 and math.isnan(inventoryP.iloc[n,11]) and inventoryP.iloc[n,12] == 2: # if corner period is empty and possible spot = 2, then this is a future station
            counterFUTU = counterFUTU + 1
            outFUTU.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            csvFUTU30.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvFUTU40.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labFUTU.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermFUTU.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,150,0) # dark green
        # FUTU out
        if inventoryP.iloc[n,0] == 0 and math.isnan(inventoryP.iloc[n,11]) and inventoryP.iloc[n,12] == 2: # future stations OUT of the region
            counterFUTUo = counterFUTUo + 1
            outFUTUo.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labFUTUo.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermOut.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(100,100,100) # grey            
        # UPGR - always in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] < 30 and inventoryP.iloc[n,12] == 1: # if corner period < 30 s and possible spot = 1, then this is a station for upgrade
            counterUPGR = counterUPGR + 1
            outUPGR.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            csvUPGR30.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvUPGR40.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labUPGR.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermUPGR.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green
        # NOSP - always in
        if inventoryP.iloc[n,11] < 30 and inventoryP.iloc[n,12] == 0:               # if corner period < 30 s and possible spot = 0, then this is a station not available or suitable for upgrade
            counterNOSP = counterNOSP + 1
            outNOSP.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labNOSP.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermNOSP.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(150,150,150) # grey
        # WHIT in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] < 30 and math.isnan(inventoryP.iloc[n,12]): # if corner < 30 s and possible spot is empty, then it is SP/SM station not needed for upgrade
            counterWHIT = counterWHIT + 1
            outWHIT.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labWHIT.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermWHIT.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,255) # white
        # WHIT out
        if inventoryP.iloc[n,0] == 0 and inventoryP.iloc[n,11] < 30 and math.isnan(inventoryP.iloc[n,12]): # station not needed for upgrade OUT of the region
            counterWHITo = counterWHITo + 1
            outWHITo.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labWHITo.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
        # EIDA no
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,1] != 'ZZZ' and inventoryP.iloc[n,19] == 0: # IN the region, not ZZZ (unequipped spot), and NOT in EIDA
            counterEIDAno = counterEIDAno + 1
            EIDAno.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
        # EIDA yes
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,1] != 'ZZZ' and inventoryP.iloc[n,19] == 1: # IN the region, not ZZZ (unequipped spot), and in EIDA
            counterEIDAys = counterEIDAys + 1
            EIDAys.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
        # EIDA not known
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,1] != 'ZZZ' and math.isnan(inventoryP.iloc[n,19]): # IN the region, not ZZZ (unequipped spot), and EIDA is empty
            counterEIDAzz = counterEIDAzz + 1
            EIDAzz.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
# end of the loop over all the lines in the sheet

sumcounter   = counterBB30 + counterBB30o + counterBB40 + counterBB40o + counterBB60 + counterBB60o + counterUNKN + counterUNKNo + counterSPOT + counterSPOTo + counterFUTU + counterFUTUo + counterUPGR + counterNOSP + counterWHIT + counterWHITo
sumcounterIN = counterBB30 +                counterBB40 +                counterBB60 +                counterUNKN +                                                                          counterUPGR + counterNOSP + counterWHIT
sumEIDA      = counterEIDAys   + counterEIDAno + counterEIDAzz
sumEIDAbb    = counterEIDAnoBB + counterEIDAysBB
sumBBin      = counterBB30 +                counterBB40 +                counterBB60

print (' ')
print ('---------- PERMANENT STATIONS ---')
print ('BB30     = ', counterBB30)
print ('BB30 out = ', counterBB30o)
print ('BB40     = ', counterBB40)
print ('BB40 out = ', counterBB40o)
print ('BB60     = ', counterBB60)
print ('BB60 out = ', counterBB60o)
print ('UNKN     = ', counterUNKN)
print ('UNKN out = ', counterUNKNo)
print ('SPOT     = ', counterSPOT)
print ('SPOT out = ', counterSPOTo)
print ('FUTU     = ', counterFUTU)
print ('FUTU out = ', counterFUTUo)
print ('UPGR     = ', counterUPGR)
print ('NoSP     = ', counterNOSP)
print ('WHIT     = ', counterWHIT)
print ('WHIT out = ', counterWHITo)
print ('--------------------')
print ('counting the lines   = ', counterTOTL)
print ('length of inventory  = ', len(inventoryP))
print ('sum of categories    = ', sumcounter)
print ('sum of IN AdA region = ', sumcounterIN)
print ('--------------------')
print ('EIDA yes (all) = ', counterEIDAys)
print ('EIDA no (all)  = ', counterEIDAno)
print ('EIDA not known = ', counterEIDAzz)
print ('sum of EIDA    = ', sumEIDA)
print ('EIDA yes BB    = ', counterEIDAysBB)
print ('EIDA no BB     = ', counterEIDAnoBB)
print ('sum of EIDA BB = ', sumEIDAbb)
print ('sum of BB in   = ', sumBBin)

outBB30.close()
labBB30.close()
outBB30o.close()
labBB30o.close()
csvBB3030.close()
csvBB3040.close()
outBB40.close()
labBB40.close()
outBB40o.close()
labBB40o.close()
csvBB4030.close()
csvBB4040.close()
outBB60.close()
labBB60.close()
outBB60o.close()
labBB60o.close()
csvBB6030.close()
csvBB6040.close()
pBB060120.close()
pBB120240.close()
pBB240.close()
outUNKN.close()
labUNKN.close()
outUNKNo.close()
labUNKNo.close()
outSPOT.close()
labSPOT.close()
outSPOTo.close()
labSPOTo.close()
csvSPOT30.close()
csvSPOT40.close()
outFUTU.close()
labFUTU.close()
outFUTUo.close()
labFUTUo.close()
csvFUTU30.close()
csvFUTU40.close()
outUPGR.close()
labUPGR.close()
csvUPGR30.close()
csvUPGR40.close()
outNOSP.close()
labNOSP.close()
outWHIT.close()
labWHIT.close()
outWHITo.close()
labWHITo.close()
EIDAno.close()
EIDAys.close()
EIDAzz.close()
EIDAnoBB.close()

# ----- TEMPORARY STATIONS -----

counterWEST   = 0
counterSTEA   = 0
counterCENT   = 0
counterNORT   = 0
counterEAST   = 0
sumGROUPS     = 0
sumPOOLS      = 0
counterIGCZ   = 0
counterAARH   = 0
counterBARC   = 0
counterBOCH   = 0
counterBOLO   = 0
counterCSSC   = 0
counterETHZ   = 0
counterRESF   = 0
counterHELS   = 0
counterEPSS   = 0
counterIRSM   = 0
counterKIEL   = 0
counterMUNI   = 0
counterTWEN   = 0
counterBRZG   = 0
counterOGSI   = 0
counterOULU   = 0
counterPOLA   = 0
counterPOUA   = 0
counterWIEN   = 0
counterMNEP   = 0
counterKOSV   = 0
counterNIEP   = 0
counterKITP   = 0
counterDPLO   = 0
counterNONE   = 0

if not os.path.exists('TEMP'):
    os.makedirs('TEMP')

west       = open("TEMP/mwest.txt"       , "w")   # output files for inputing to the GMT
westlabel  = open("TEMP/mwest-label.txt" , "w")
stea       = open("TEMP/mstea.txt"       , "w")
stealabel  = open("TEMP/mstea-label.txt" , "w")
cent       = open("TEMP/mcent.txt"       , "w")
centlabel  = open("TEMP/mcent-label.txt" , "w")
nort       = open("TEMP/mnort.txt"       , "w")
nortlabel  = open("TEMP/mnort-label.txt" , "w")
east       = open("TEMP/meast.txt"       , "w")
eastlabel  = open("TEMP/meast-label.txt" , "w")
igcz       = open("TEMP/igcz.txt"        , "w")
igczD      = open("TEMP/igczD.txt"       , "w")
igczlab    = open("TEMP/igczLabel.txt"   , "w")
aarh       = open("TEMP/aarh.txt"        , "w")
aarhD      = open("TEMP/aarhD.txt"       , "w")
barc       = open("TEMP/barc.txt"        , "w")
barcD      = open("TEMP/barcD.txt"       , "w")
boch       = open("TEMP/boch.txt"        , "w")
bochD      = open("TEMP/bochD.txt"       , "w")
bolo       = open("TEMP/bolo.txt"        , "w")
boloD      = open("TEMP/boloD.txt"       , "w")
cssc       = open("TEMP/cssc.txt"        , "w")
csscD      = open("TEMP/csscD.txt"       , "w")
ethz       = open("TEMP/ethz.txt"        , "w")
ethzD      = open("TEMP/ethzD.txt"       , "w")
resf       = open("TEMP/resf.txt"        , "w")
resfD      = open("TEMP/resfD.txt"       , "w")
hels       = open("TEMP/hels.txt"        , "w")
helsD      = open("TEMP/helsD.txt"       , "w")
epss       = open("TEMP/epss.txt"        , "w")
epssD      = open("TEMP/epssD.txt"       , "w")
irsm       = open("TEMP/irsm.txt"        , "w")
irsmD      = open("TEMP/irsmD.txt"       , "w")
kiel       = open("TEMP/kiel.txt"        , "w")
kielD      = open("TEMP/kielD.txt"       , "w")
muni       = open("TEMP/muni.txt"        , "w")
muniD      = open("TEMP/muniD.txt"       , "w")
twen       = open("TEMP/twen.txt"        , "w")
twenD      = open("TEMP/twenD.txt"       , "w")
brzg       = open("TEMP/brzg.txt"        , "w")
brzgD      = open("TEMP/brzgD.txt"       , "w")
ogsi       = open("TEMP/ogsi.txt"        , "w")
ogsiD      = open("TEMP/ogsiD.txt"       , "w")
oulu       = open("TEMP/oulu.txt"        , "w")
ouluD      = open("TEMP/ouluD.txt"       , "w")
pola       = open("TEMP/pola.txt"        , "w")
polaD      = open("TEMP/polaD.txt"       , "w")
poua       = open("TEMP/poua.txt"        , "w")
wien       = open("TEMP/wien.txt"        , "w")
wienD      = open("TEMP/wienD.txt"       , "w")
mnep       = open("TEMP/mnep.txt"        , "w")
mnepD      = open("TEMP/mnepD.txt"       , "w")
kosv       = open("TEMP/kosv.txt"        , "w")
kosvD      = open("TEMP/kosvD.txt"       , "w")
niep       = open("TEMP/niep.txt"        , "w")
niepD      = open("TEMP/niepD.txt"       , "w")
kitp       = open("TEMP/kitp.txt"        , "w")
kitpD      = open("TEMP/kitpD.txt"       , "w")
none       = open("TEMP/none.txt"        , "w")
numofdep   = open("AUXI/numofdep.txt"    , "w")
net1Y      = open("AUXI/net1Y.txt"       , "w")
net2Y      = open("AUXI/net2Y.txt"       , "w")
net4P      = open("AUXI/net4P.txt"       , "w")
net7B      = open("AUXI/net7B.txt"       , "w")
net9H      = open("AUXI/net9H.txt"       , "w")
netY5      = open("AUXI/netY5.txt"       , "w")
netY8      = open("AUXI/netY8.txt"       , "w")
netZ6      = open("AUXI/netZ6.txt"       , "w")
netRF      = open("AUXI/netRF.txt"       , "w")
netXX      = open("AUXI/netXX.txt"       , "w")
tmpBB030   = open("TEMP/tBB030.txt"      , "w")
tmpBB040   = open("TEMP/tBB040.txt"      , "w")
tmpBB060   = open("TEMP/tBB060-120.txt"  , "w")
tmpBB120   = open("TEMP/tBB120-240.txt"  , "w")
tmpBB240   = open("TEMP/tBB240.txt"      , "w")
notDepl    = open("TEMP/notDepl.txt"     , "w")

for n in inventoryT.index:                        # loop over all lines in the xls sheet
    if (not math.isnan(inventoryT.iloc[n,3])):    # the last loop is going over the last line
        # regional subgroups
        if inventoryT.iloc[n,25] == 'WEST':
            counterWEST = counterWEST + 1
            west.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))  # station coordinates for GMT psxy
            westlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green
        if inventoryT.iloc[n,25] == 'SOUTHEAST':
            counterSTEA = counterSTEA + 1
            stea.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            stealabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        if inventoryT.iloc[n,25] == 'CENTER':
            counterCENT = counterCENT + 1
            cent.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            centlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        if inventoryT.iloc[n,25] == 'NORTH':
            counterNORT = counterNORT + 1
            nort.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            nortlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        if inventoryT.iloc[n,25] == 'EAST':
            counterEAST = counterEAST + 1
            east.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            eastlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        # particular mobile pools
        if inventoryT.iloc[n,16] == 'IG CAS CZ':
            igcz.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))            
            counterIGCZ = counterIGCZ + 1
            if inventoryT.iloc[n,0] == 1:
                igczD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Denmark':
            aarh.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterAARH = counterAARH + 1
            if inventoryT.iloc[n,0] == 1:
                aarhD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Barcelona':
            barc.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterBARC = counterBARC + 1
            if inventoryT.iloc[n,0] == 1:
                barcD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Bochum':
            boch.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterBOCH = counterBOCH + 1
            if inventoryT.iloc[n,0] == 1:
                bochD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Bologna':
            bolo.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterBOLO = counterBOLO + 1
            if inventoryT.iloc[n,0] == 1:
                boloD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'CSS':
            cssc.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterCSSC = counterCSSC + 1
            if inventoryT.iloc[n,0] == 1:
                csscD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'ETH':
            ethz.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterETHZ = counterETHZ + 1
            if inventoryT.iloc[n,0] == 1:
                ethzD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Resif-Sismob':
            resf.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterRESF = counterRESF + 1
            if inventoryT.iloc[n,0] == 1:
                resfD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Helsinki':
            hels.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterHELS = counterHELS + 1
            if inventoryT.iloc[n,0] == 1:
                helsD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'EPSS':
            epss.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterEPSS = counterEPSS + 1
            if inventoryT.iloc[n,0] == 1:
                epssD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'IRSM CAS CZ':
            irsm.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterIRSM = counterIRSM + 1
            if inventoryT.iloc[n,0] == 1:
                irsmD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Kiel':
            kiel.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterKIEL = counterKIEL + 1
            if inventoryT.iloc[n,0] == 1:
                kielD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Munich':
            muni.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterMUNI = counterMUNI + 1
            if inventoryT.iloc[n,0] == 1:
                muniD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Twente':
            twen.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterTWEN = counterTWEN + 1
            if inventoryT.iloc[n,0] == 1:
                twenD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'BerZag':
            brzg.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterBRZG = counterBRZG + 1
            if inventoryT.iloc[n,0] == 1:
                brzgD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'OGS':
            ogsi.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterOGSI = counterOGSI + 1
            if inventoryT.iloc[n,0] == 1:
                ogsiD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Oulu':
            oulu.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterOULU = counterOULU + 1
            if inventoryT.iloc[n,0] == 1:
                ouluD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1     
        if inventoryT.iloc[n,16] == 'PL':
            pola.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterPOLA = counterPOLA + 1
            if inventoryT.iloc[n,0] == 1:
                polaD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'POUA': # stations in Poland to be moved to Ukraine
            poua.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterPOUA = counterPOUA + 1
        if inventoryT.iloc[n,16] == 'UniWien':
            wien.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterWIEN = counterWIEN + 1
            if inventoryT.iloc[n,0] == 1:
                wienD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'MNE pool':
            mnep.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterMNEP = counterMNEP + 1
            if inventoryT.iloc[n,0] == 1:
                mnepD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1                
        if inventoryT.iloc[n,16] == 'Kosovo pool':
            kosv.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterKOSV = counterKOSV + 1
            if inventoryT.iloc[n,0] == 1:
                kosvD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1                                
        if inventoryT.iloc[n,16] == 'NIEP':
            niep.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterNIEP = counterNIEP + 1
            if inventoryT.iloc[n,0] == 1:
                niepD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1                                
        if inventoryT.iloc[n,16] == 'KIT':
            kitp.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterKITP = counterKITP + 1
            if inventoryT.iloc[n,0] == 1:
                kitpD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterDPLO = counterDPLO + 1                                
        if inventoryT.iloc[n,16] == 'N-A': # not assigned to any pool in the moment
            none.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            counterNONE = counterNONE + 1
        # network codes
        if inventoryT.iloc[n,1] == '1Y':
            net1Y.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == '2Y':
            net2Y.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == '4P':
            net4P.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == '7B':
            net7B.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == '9H':
            net9H.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == 'Y5':
            netY5.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == 'Y8':
            netY8.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == 'Z6':
            netZ6.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == 'RSF': # to be RESIF network in the future
            netRF.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == 'AC' or inventoryT.iloc[n,1] == 'HA' or inventoryT.iloc[n,1] == 'x' or inventoryT.iloc[n,1] == 'TV':
            netXX.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >=  30 and inventoryT.iloc[n,11] <  40: # if the station is deployed already and corner is between 30 and 40 s
            tmpBB030.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp030.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,0) # yellow
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >=  40 and inventoryT.iloc[n,11] <  60: # if the station is deployed already and corner is between 40 and 60 s
            tmpBB040.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp040.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,174,0) # orange
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >=  60 and inventoryT.iloc[n,11] < 120: # if the station is deployed already and corner is between 60 and 120 s
            tmpBB060.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp060.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >= 120 and inventoryT.iloc[n,11] < 240: # if the station is deployed already and corner is between 120 and 240 s
            tmpBB120.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp120.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(166,16,76) # dark red
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >= 240:                                 # if the station is deployed already and corner is 240 s and longer (which case does not exist)
            tmpBB240.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp240.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(135,0,135) # purple
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if inventoryT.iloc[n,0] == 0:   # if not yet deployed
            notDepl.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTempNot.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,0,0) # black
# end of the loop over all the lines in the sheet

west.close()
westlabel.close()
stea.close()
stealabel.close()
cent.close()
centlabel.close()
nort.close()
nortlabel.close()
east.close()
eastlabel.close()
igcz.close()
igczD.close()
aarh.close()
aarhD.close()
barc.close()
barcD.close()
boch.close()
bochD.close()
bolo.close()
boloD.close()
cssc.close()
csscD.close()
ethz.close()
ethzD.close()
resf.close()
resfD.close()
hels.close()
helsD.close()
epss.close()
epssD.close()
irsm.close()
irsmD.close()
kiel.close()
kielD.close()
muni.close()
muniD.close()
twen.close()
twenD.close()
brzg.close()
brzgD.close()
ogsi.close()
ogsiD.close()
oulu.close()
ouluD.close()
pola.close()
polaD.close()
poua.close()
wien.close()
wienD.close()
mnep.close()
mnepD.close()
kosv.close()
kosvD.close()
niep.close()
niepD.close()
kitp.close()
kitpD.close()
none.close()
net1Y.close()
net2Y.close()
net4P.close()
net7B.close()
net9H.close()
netY5.close()
netY8.close()
netZ6.close()
netRF.close()
netXX.close()
tmpBB030.close()
tmpBB040.close()
tmpBB060.close()
tmpBB120.close()
tmpBB240.close()
notDepl.close()

sumGROUPS = counterEAST + counterNORT + counterCENT + counterSTEA + counterWEST
sumPOOLS  = counterIGCZ + counterAARH + counterBARC + counterBOCH + counterBOLO + counterCSSC + counterETHZ + counterRESF + counterHELS + counterEPSS + counterIRSM + counterKIEL + counterMUNI + counterTWEN + counterBRZG + counterOGSI + counterOULU + counterPOLA + counterWIEN + counterMNEP + counterKOSV + counterNIEP + counterKITP

print (' ')
print ('---------- TEMPORARY STATIONS ---')
print ('subgroup EAST        = ', counterEAST)
print ('subgroup NORTH       = ', counterNORT)
print ('subgroup CENTER      = ', counterCENT)
print ('subgroup SOUTHEAST   = ', counterSTEA)
print ('subgroup WEST        = ', counterWEST)
print ('  IG CAS CZ          = ', counterIGCZ)
print ('  Uni Aarhus         = ', counterAARH)
print ('  Barcelona          = ', counterBARC)
print ('  Uni Bochum         = ', counterBOCH)
print ('  Bologna            = ', counterBOLO)
print ('  Croatian SeismSurv = ', counterCSSC)
print ('  ETH Zurich         = ', counterETHZ)
print ('  Resif-Sismob       = ', counterRESF)
print ('  Uni Helsinki       = ', counterHELS)
print ('  EPSS Hungary       = ', counterEPSS)
print ('  IRSM CAS CZ        = ', counterIRSM)
print ('  Uni Kiel           = ', counterKIEL)
print ('  LMU Munich         = ', counterMUNI)
print ('  Uni Twente         = ', counterTWEN)
print ('  Uni Bergen+Zagreb  = ', counterBRZG)
print ('  OGS                = ', counterOGSI)
print ('  Uni Oulu           = ', counterOULU)
print ('  Unis+PAS Poland    = ', counterPOLA)
print ('  Uni Wien           = ', counterWIEN)
print ('  Montenegro Pool    = ', counterMNEP)
print ('  Kosovo Pool        = ', counterKOSV)
print ('  NIEP Pool          = ', counterNIEP)
print ('  KIT Pool           = ', counterKITP)
print ('  PL --> UA          = ', counterPOUA)
print ('  not assigned       = ', counterNONE)

print ('length of inventory  = ', len(inventoryT))
print ('sum of the subgroups = ', sumGROUPS)
print ('sum of the pools     = ', sumPOOLS)
print ('planned              = ', sumGROUPS)
print ('diff = not asssigned = ', sumGROUPS-sumPOOLS)
print ('deployed             = ', counterDPLO)

percent = (counterDPLO/(sumGROUPS))*100
numofdep.write('18.3 41.15 18 0 0 TL ' + (str(counterDPLO)) + ' / ' + (str(sumGROUPS)) + ' ('+ str('{:.1f}'.format(percent))+'%)' )
# the file numofdep.txt is used to plot the number of deployed stations, the number of all planned stations and the percentage to the title of the map 13

kmlPerm030.save("GOOG/permBB030-040.kml")
kmlPerm040.save("GOOG/permBB040-060.kml")
kmlPerm060.save("GOOG/permBB060-120.kml")
kmlPerm120.save("GOOG/permBB120-240.kml")
kmlPerm240.save("GOOG/permBB240-longer.kml")
kmlPermUNKN.save("GOOG/permUNKN.kml")
kmlPermSPOT.save("GOOG/permSPOT.kml")
kmlPermNOSP.save("GOOG/permNOSP.kml")
kmlPermFUTU.save("GOOG/permBBFuture.kml")
kmlPermUPGR.save("GOOG/permUPGR.kml")
kmlPermWHIT.save("GOOG/permWHIT.kml")
kmlTemp030.save("GOOG/temp030-040.kml")
kmlTemp040.save("GOOG/temp040-060.kml")
kmlTemp060.save("GOOG/temp060-120.kml")
kmlTemp120.save("GOOG/temp120-240.kml")
kmlTemp240.save("GOOG/temp240-longer.kml")
kmlPermAll.save("GOOG/permBBAllIn.kml")
kmlTempAll.save("GOOG/tempAll.kml")
kmlPermOut.save("GOOG/permBBoutside.kml")
kmlTempDep.save("GOOG/tempDeployed.kml")
kmlTempNot.save("GOOG/tempNotDepl.kml")