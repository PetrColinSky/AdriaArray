# script to read the xls/ods sheets of all permanent and temporary stations and to generate text files
# with stations having specific properties for plotting by GMT and GoogleEarth
import pandas as pd
import math
import os
import simplekml

# the two inventories need to be in the same folder as the script itself
inventoryP   = pd.read_excel("InventoryPermanent.ods", header=[2]) # the inventory is read as DataFrame, the header of the sheet has 3 rows (0,1,2)
inventoryT   = pd.read_excel("InventoryTemporary.ods", header=[2]) # so the sheet is read from the 4th row on
# it creates folders, if they don't exist, PERM/ and TEMP/ and saves ASCII text files into these folders
# it assumes that folders AUXI/ and GOOG/ are existing, as some other files need to be in these folders already beforehand for the GMT plotting

ts = '1.5'  # text size of station-name labels for GMT
#ts = '9'  # text size of station-name labels for GMT
kmlPerm030   = simplekml.Kml()
kmlPerm040   = simplekml.Kml()
kmlPerm060   = simplekml.Kml()
kmlPerm120   = simplekml.Kml()
kmlPerm240   = simplekml.Kml()
kmlPermUNKN  = simplekml.Kml()
kmlPermSPOT  = simplekml.Kml()
kmlPermNOSP  = simplekml.Kml()
kmlPermFUTU  = simplekml.Kml()
kmlPermCLOS  = simplekml.Kml()
kmlPermUPGR  = simplekml.Kml()
kmlPermWHIT  = simplekml.Kml()
kmlPermWHITout  = simplekml.Kml()
kmlPermOut   = simplekml.Kml()
kmlPermAll   = simplekml.Kml()
kmlTemp030   = simplekml.Kml()
kmlTemp040   = simplekml.Kml()
kmlTemp060   = simplekml.Kml()
kmlTemp120   = simplekml.Kml()
kmlTemp240   = simplekml.Kml()
kmlTempAll   = simplekml.Kml()
kmlTempDep   = simplekml.Kml()
kmlTempNot   = simplekml.Kml()
kmlTempCLOS  = simplekml.Kml()

counterTOTL     = 0
counterBB30     = 0
counterBB30o    = 0
counterBB40     = 0
counterBB40o    = 0
counterBB60     = 0
counterBB60o    = 0
counterUNKN     = 0
counterUNKNo    = 0
counterSPOT     = 0
counterSPOTo    = 0
counterFUTU     = 0
counterFUTUo    = 0
counterCLOS     = 0
counterCLOSo    = 0
counterUPGR     = 0
counterNOSP     = 0
counterWHIT     = 0
counterWHITo    = 0
counterEIDAno   = 0
counterEIDAnoBB = 0 # number of BB stations, which are NOT in EIDA
counterEIDAysBB = 0 # number of BB stations, which ARE in EIDA
counterEIDAys   = 0
counterEIDAzz   = 0

if not os.path.exists('PERM'):
    os.makedirs('PERM')

permBG     = open("PERM/permBG.txt"       , "w")
permBGlabel= open("PERM/permBGLabel.txt"  , "w")
permRO     = open("PERM/permRO.txt"       , "w")
permROlabel= open("PERM/permROLabel.txt"  , "w")
virtDiff     = open("PERM/virtDIFF.txt"     , "w")
virtDifflabel= open("PERM/virtDIFFLabel.txt", "w")
outBB30   = open("PERM/pBB30.txt"         , "w")  # output files for inputing to the GMT
outBB3030 = open("PERM/circlesBB3030.txt" , "w")
outBB3040 = open("PERM/circlesBB3040.txt" , "w")
labBB30   = open("PERM/pBB30label.txt"    , "w")
outBB30o  = open("PERM/pBB30o.txt"        , "w")  # "o" means "out" of the AdA region
labBB30o  = open("PERM/pBB30olabel.txt"   , "w")
csvBB3030 = open("GOOG/pBB30-30.csv"      , "w")  # csv for stations IN the area, 30 km radius
csvBB3040 = open("GOOG/pBB30-40.csv"      , "w")  # csv for stations IN the area, 40 km radius
outBB40   = open("PERM/pBB40.txt"         , "w")
outBB4030 = open("PERM/circlesBB4030.txt" , "w")
outBB4040 = open("PERM/circlesBB4040.txt" , "w")
labBB40   = open("PERM/pBB40label.txt"    , "w")
outBB40o  = open("PERM/pBB40o.txt"        , "w")
labBB40o  = open("PERM/pBB40olabel.txt"   , "w")
csvBB4030 = open("GOOG/pBB40-30.csv"      , "w")
csvBB4040 = open("GOOG/pBB40-40.csv"      , "w")
outBB60   = open("PERM/pBB60.txt"         , "w")
outBB6030 = open("PERM/circlesBB6030.txt" , "w")
outBB6040 = open("PERM/circlesBB6040.txt" , "w")
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
outFUTU30 = open("PERM/circlesFUTU30.txt" , "w")
outFUTU40 = open("PERM/circlesFUTU40.txt" , "w")
labFUTU   = open("PERM/pFUTUlabel.txt"    , "w")
outFUTUo  = open("PERM/pFUTUo.txt"        , "w")
labFUTUo  = open("PERM/pFUTUolabel.txt"   , "w")
outCLOS   = open("PERM/pCLOS.txt"         , "w")  # CLOSed permanent stations
outCLOS30 = open("PERM/circlesCLOS30.txt" , "w")
outCLOS40 = open("PERM/circlesCLOS40.txt" , "w")
labCLOS   = open("PERM/pCLOSlabel.txt"    , "w")
outCLOSo  = open("PERM/pCLOSo.txt"        , "w")
labCLOSo  = open("PERM/pCLOSolabel.txt"   , "w")
csvFUTU30 = open("GOOG/pFUTU-30.csv"      , "w")
csvFUTU40 = open("GOOG/pFUTU-40.csv"      , "w")
csvCLOS30 = open("GOOG/pCLOS-30.csv"      , "w")
csvCLOS40 = open("GOOG/pCLOS-40.csv"      , "w")
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
EIDAzz    = open("PERM/EIDAzz.txt"        , "w") # not known if in EIDA
EIDAnoBB  = open("PERM/EIDAnoBB.txt"      , "w") # not in EIDA, IN the region, BB only
labEInoBB = open("PERM/pEIDAnoBBlabel.txt", "w")
EIDAysBB  = open("PERM/EIDAysBB.txt"      , "w") # in EIDA - BB only
p30plus   = open("PERM/perm30plusIN.txt"  , "w") # permanent stations IN the region of corner 30s and longer
p10plus   = open("PERM/perm10plusIN.txt"  , "w") # permanent stations IN the region of corner 10s and longer - this should theoretically be the virtual network _ADARRAY
p30io10   = open("PERM/perm30io10.txt"    , "w")
p30io20   = open("PERM/perm30io20.txt"    , "w")
p30io30   = open("PERM/perm30io30.txt"    , "w")
p30io40   = open("PERM/perm30io40.txt"    , "w")
listP     = open("PERM/listP.txt"         , "w")
listALL   = open("AUXI/listALL.txt"       , "w")
listALLcoor = open("AUXI/listALLcoor.txt" , "w")
listALLb  = open("AUXI/listALLb.txt"      , "w")
BG30      = open("AUXI/BG30.txt"          , "w")
BG40      = open("AUXI/BG40.txt"          , "w")
BG60      = open("AUXI/BG60.txt"          , "w")
BG120     = open("AUXI/BG120.txt"         , "w")
BG240     = open("AUXI/BG240.txt"         , "w")
RO30      = open("AUXI/RO30.txt"          , "w")
RO40      = open("AUXI/RO40.txt"          , "w")
RO60      = open("AUXI/RO60.txt"          , "w")
RO120     = open("AUXI/RO120.txt"         , "w")
RO240     = open("AUXI/RO240.txt"         , "w")
No30      = open("AUXI/No30.txt"          , "w")
No40      = open("AUXI/No40.txt"          , "w")
No60      = open("AUXI/No60.txt"          , "w")
No120     = open("AUXI/No120.txt"         , "w")
No240     = open("AUXI/No240.txt"         , "w")

# BB30, BB40, BB60, UNKN, WHIT have two options based on column 0: inside or outside of the AdA area
# SPOT, UPGR, NOSP dont have these options, because by definition, these are always inside

for n in inventoryP.index:                     # loop over all lines in the xls/ods sheet
    if (not math.isnan(inventoryP.iloc[n,3])): # the last loop is going over the last line
        counterTOTL = counterTOTL + 1
        # checking for duplicated station names, commented out as it is bit time-consuming and not needed for the maps, this is independent check
        #for k in range(0,n): # for all the previous rows
        #    if inventoryP.iloc[n,2] == inventoryP.iloc[k,2]:
        #        print('DUPLICATED station name', inventoryP.iloc[n,2])
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 30 and inventoryP.iloc[n,7] == 'BG':
            permBG.write     ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            permBGlabel.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 30 and inventoryP.iloc[n,7] == 'RO':
            permRO.write     ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            permROlabel.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11]  < 30 and inventoryP.iloc[n,11] >= 10: # the difference between _ADARRAY and backbone
            virtDiff.write     ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            virtDifflabel.write("%s\n" % (str(round(inventoryP.iloc[n,4],4)) + ' ' + str(round(inventoryP.iloc[n,3]-0.08,4)) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,1])+'.'+ str(inventoryP.iloc[n,2])))
        # BB10 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 10 and inventoryP.iloc[n,11] < 30: # the 1st column (0th here) says, if it is IN the region (=1) or out (=0)
            p10plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
        # BB30 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 30 and inventoryP.iloc[n,11] < 40: # the 1st column (0th here) says, if it is IN the region (=1) or out (=0)
            counterBB30 = counterBB30 + 1                                                            # the 10th column (11 here) contains the corner periods
            outBB30.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))  # station coordinates for GMT psxy
            outBB3030.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 60 60'))
            outBB3040.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 80 80'))
            if inventoryP.iloc[n,7] == 'BG':
                BG30.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            if inventoryP.iloc[n,7] == 'RO':
                RO30.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            if inventoryP.iloc[n,19] == 1: # if in EIDA
                p30plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
                p10plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            csvBB3030.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvBB3040.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labBB30.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2]))) # station labels for GMT pstext
            pnt = kmlPerm030.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,0) # yellow
            pnt = kmlPermAll.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red
            if inventoryP.iloc[n,1] != 'nnn': # if the network code is not empty
                listP.write ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0])) # list of permanent stations as code.name, selects only the name before slash
                listALL.write     ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0]))
                listALLcoor.write ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]))) # list of all station coordinates
                listALLb.write    ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0] + '?' + str(inventoryP.iloc[n,4]) + '?' + str(inventoryP.iloc[n,3]))) # list of all station coordinates
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
            outBB4030.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 60 60'))
            outBB4040.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 80 80'))
            if inventoryP.iloc[n,7] == 'BG':
                BG40.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            if inventoryP.iloc[n,7] == 'RO':
                RO40.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))            
            if inventoryP.iloc[n,19] == 1: # if in EIDA
                p30plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
                p10plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            csvBB4030.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvBB4040.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labBB40.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPerm040.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,174,0) # orange
            pnt = kmlPermAll.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red            
            if inventoryP.iloc[n,1] != 'nnn': # if the network code is not empty
                listP.write ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0])) # list of permanent stations as code.name
                listALL.write ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0]))
                listALLcoor.write ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]))) # list of all station coordinates
                listALLb.write    ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0] + '?' + str(inventoryP.iloc[n,4]) + '?' + str(inventoryP.iloc[n,3]))) # list of all station coordinates
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
            outBB60.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            outBB6030.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 60 60'))
            outBB6040.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 80 80'))
            if inventoryP.iloc[n,19] == 1: # if in EIDA
                p30plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
                p10plus.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
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
            if inventoryP.iloc[n,1] != 'nnn': # if the network code is not empty
                listP.write ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0])) # list of permanent stations as code.name
                listALL.write ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0]))
                listALLcoor.write ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]))) # list of all station coordinates
                listALLb.write    ("%s\n" % (str(inventoryP.iloc[n,1]) + '.' + str(inventoryP.iloc[n,2]).partition("/")[0] + '?' + str(inventoryP.iloc[n,4]) + '?' + str(inventoryP.iloc[n,3]))) # list of all station coordinates
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
            if inventoryP.iloc[n,7] == 'BG':
                BG60.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            if inventoryP.iloc[n,7] == 'RO':
                RO60.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))            
        # BB 120 - 240 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 120 and inventoryP.iloc[n,11] < 240: # IN the region, corner period >= 120 s and < 240 s
            pBB120240.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            pnt = kmlPerm120.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(166,16,76) # dark red
            if inventoryP.iloc[n,7] == 'BG':
                BG120.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            if inventoryP.iloc[n,7] == 'RO':
                RO120.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))                        
        # BB 240 in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] >= 240: # IN the region, corner period >= 240 s
            pBB240.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            pnt = kmlPerm240.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(135,0,135) # purple
            if inventoryP.iloc[n,7] == 'BG':
                BG240.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            if inventoryP.iloc[n,7] == 'RO':
                RO240.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))                        
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
            pnt = kmlPermUNKN.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
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
            outFUTU.write    ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            outFUTU30.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 60 60'))
            outFUTU40.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 80 80'))
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
            pnt = kmlPermFUTU.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,150,0) # grey
        # CLOS in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,12] == 3: # if possible spot = 3, then this is a closed station
            counterCLOS = counterCLOS + 1
            outCLOS.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            outCLOS30.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 60 60'))
            outCLOS40.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 80 80'))
            csvCLOS30.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',30,' + str(inventoryP.iloc[n,2])))  # csv 30 km circles
            csvCLOS40.write("%s\n" % (str(inventoryP.iloc[n,3]) + ',' + str(inventoryP.iloc[n,4]) + ',40,' + str(inventoryP.iloc[n,2])))  # csv 40 km circles
            labCLOS.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermCLOS.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,0,0) # black
        # CLOS out
        if inventoryP.iloc[n,0] == 0 and inventoryP.iloc[n,12] == 3: # if possible spot = 3, then this is a closed station
            counterCLOSo = counterCLOSo + 1
            outCLOSo.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labCLOSo.write  ("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermCLOS.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,0,0) # black
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
        if inventoryP.iloc[n,12] == 0 and inventoryP.iloc[n,11] < 30: # if corner period < 30 s and possible spot = 0, then this is a station not available or suitable for upgrade
            counterNOSP = counterNOSP + 1
            outNOSP.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labNOSP.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermNOSP.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(150,150,150) # grey
        # WHIT in
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,11] < 30 and (math.isnan(inventoryP.iloc[n,12]) or inventoryP.iloc[n,12] == 3): # if corner < 30 s and possible spot is empty or = 3, then it is SP/SM station not needed for upgrade
            counterWHIT = counterWHIT + 1
            outWHIT.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labWHIT.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermWHIT.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,255) # white
        # WHIT out
        if inventoryP.iloc[n,0] == 0 and inventoryP.iloc[n,11] < 30: # station not needed for upgrade OUT of the region
            counterWHITo = counterWHITo + 1
            outWHITo.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
            labWHITo.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryP.iloc[n,2])))
            pnt = kmlPermWHITout.newpoint(name=str(inventoryP.iloc[n,2]), coords=[(inventoryP.iloc[n,4],inventoryP.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,255) # white
        # EIDA no
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,1] != 'ZZZ' and inventoryP.iloc[n,19] == 0: # IN the region, not ZZZ (unequipped spot), and NOT in EIDA
            counterEIDAno = counterEIDAno + 1
        # EIDA yes
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,1] != 'ZZZ' and inventoryP.iloc[n,19] == 1: # IN the region, not ZZZ (unequipped spot), and in EIDA
            counterEIDAys = counterEIDAys + 1
        # EIDA not known
        if inventoryP.iloc[n,0] == 1 and inventoryP.iloc[n,1] != 'ZZZ' and inventoryP.iloc[n,12] != 3 and math.isnan(inventoryP.iloc[n,19]): # IN the region, not ZZZ (unequipped spot), not = 3 (closed) and EIDA is empty
            counterEIDAzz = counterEIDAzz + 1
            EIDAzz.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3])))
        # in EIDA, BB stations IN+OUT
        if inventoryP.iloc[n,11] >= 30 and inventoryP.iloc[n,1] != 'ZZZ' and inventoryP.iloc[n,19] == 1: # IN+OUT, BB, not ZZZ (unequipped spot), and in EIDA (includes closed)
            p30io10.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 20 20' ))
            p30io20.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 40 40' ))
            p30io30.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 60 60' ))
            p30io40.write("%s\n" % (str(inventoryP.iloc[n,4]) + ' ' + str(inventoryP.iloc[n,3]) + ' 0.0 80 80' ))
# end of the loop over all the lines in the sheet

sumcounter    = counterBB30 + counterBB30o + counterBB40 + counterBB40o + counterBB60 + counterBB60o + counterUNKN + counterUNKNo + counterSPOT + counterSPOTo + counterFUTU + counterFUTUo + counterUPGR + counterNOSP + counterWHIT + counterWHITo
sumcounterIN  = counterBB30 +                counterBB40 +                counterBB60 +                counterUNKN +              + counterSPOT                + counterFUTU                + counterUPGR + counterNOSP + counterWHIT
sumcounterOUT =               counterBB30o               + counterBB40o               + counterBB60o               + counterUNKNo               + counterSPOTo               + counterFUTUo                                           + counterWHITo
sumEIDA       = counterEIDAys   + counterEIDAno + counterEIDAzz
sumEIDAbb     = counterEIDAnoBB + counterEIDAysBB
sumBBin       = counterBB30 +                counterBB40 +                counterBB60

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
print ('CLOS     = ', counterCLOS)
print ('CLOS out = ', counterCLOSo)
print ('UPGR     = ', counterUPGR)
print ('NoSP     = ', counterNOSP)
print ('WHIT     = ', counterWHIT)
print ('WHIT out = ', counterWHITo)
print ('--------------------')
print ('counting the lines   = ', counterTOTL)
print ('length of inventory  = ', len(inventoryP))
print ('sum of categories    = ', sumcounter)
print ('sum of IN AdA region = ', sumcounterIN)
print ('sum of OUT AdA region = ', sumcounterOUT)
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
outBB3030.close()
outBB3040.close()
labBB30.close()
outBB30o.close()
labBB30o.close()
csvBB3030.close()
csvBB3040.close()
outBB40.close()
outBB4030.close()
outBB4040.close()
labBB40.close()
outBB40o.close()
labBB40o.close()
csvBB4030.close()
csvBB4040.close()
outBB60.close()
outBB6030.close()
outBB6040.close()
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
outFUTU30.close()
outFUTU40.close()
labFUTU.close()
outFUTUo.close()
labFUTUo.close()
outCLOS.close()
outCLOS30.close()
outCLOS40.close()
labCLOS.close()
outCLOSo.close()
labCLOSo.close()
csvFUTU30.close()
csvFUTU40.close()
csvCLOS30.close()
csvCLOS40.close()
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
EIDAzz.close()
EIDAnoBB.close()
labEInoBB.close()
EIDAysBB.close()
p30plus.close()
p10plus.close()
p30io10.close()
p30io20.close()
p30io30.close()
p30io40.close()
listP.close()
permBG.close()
permBGlabel.close()
permRO.close()
permROlabel.close()
virtDiff.close()
virtDifflabel.close()

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
REPEname      = ['']
REPEnameSet   = {}
counterBOLO   = 0
counterCSSC   = 0
counterETHZ   = 0
counterRESF   = 0
counterHELS   = 0
counterEPSS   = 0
counterKIEL   = 0
counterMUNI   = 0
counterTWEN   = 0
counterBRZG   = 0
counterOGSI   = 0
counterOULU   = 0
counterPOLA   = 0
counterWIEN   = 0
counterMNEP   = 0
counterKOSV   = 0
counterNIEP   = 0
counterKITP   = 0
counterGIPP   = 0
counterJENA   = 0
counterRP0X   = 0
counterDPLO   = 0
counterNONE   = 0
counterTempEIDAy  = 0
counterTempEIDAn  = 0
counterA2B    = 0
counterPCS    = 0
counterNEW    = 0
counterAlpA   = 0
counterExp    = 0
counterNEU    = 0

if not os.path.exists('TEMP'):
    os.makedirs('TEMP')

west       = open("TEMP/mwest.txt"         , "w")   # saved files used then as an input for the GMT
west30     = open("TEMP/circlesWEST30.txt" , "w")
west40     = open("TEMP/circlesWEST40.txt" , "w")
westlabel  = open("TEMP/mwest-label.txt"   , "w")
stea       = open("TEMP/mstea.txt"         , "w")
stea30     = open("TEMP/circlesSTEA30.txt" , "w")
stea40     = open("TEMP/circlesSTEA40.txt" , "w")
stealabel  = open("TEMP/mstea-label.txt"   , "w")
cent       = open("TEMP/mcent.txt"         , "w")
cent30     = open("TEMP/circlesCENT30.txt" , "w")
cent40     = open("TEMP/circlesCENT40.txt" , "w")
centlabel  = open("TEMP/mcent-label.txt"   , "w")
nort       = open("TEMP/mnort.txt"         , "w")
nort30     = open("TEMP/circlesNORT30.txt" , "w")
nort40     = open("TEMP/circlesNORT40.txt" , "w")
nortlabel  = open("TEMP/mnort-label.txt"   , "w")
east       = open("TEMP/meast.txt"         , "w")
east30     = open("TEMP/circlesEAST30.txt" , "w")
east40     = open("TEMP/circlesEAST40.txt" , "w")
eastlabel  = open("TEMP/meast-label.txt"   , "w")
igcz       = open("TEMP/igcz.txt"          , "w")
igczD      = open("TEMP/igczD.txt"         , "w")
igczBG     = open("TEMP/igczBG.txt"        , "w")
igczBGlabel= open("TEMP/igczBGLabel.txt"   , "w")
igczRO     = open("TEMP/igczRO.txt"        , "w")
igczROlabel= open("TEMP/igczROLabel.txt"   , "w")
igczCZ     = open("TEMP/igczCZ.txt"        , "w")
igczCZlabel= open("TEMP/igczCZLabel.txt"   , "w")
aarh       = open("TEMP/aarh.txt"          , "w")
aarhD      = open("TEMP/aarhD.txt"         , "w")
aarhBGlabel = open("TEMP/aarhBGLabel.txt"  , "w")
aarhROlabel = open("TEMP/aarhROLabel.txt"  , "w")
barc       = open("TEMP/barc.txt"          , "w")
barcD      = open("TEMP/barcD.txt"         , "w")
boch       = open("TEMP/boch.txt"          , "w")
bochD      = open("TEMP/bochD.txt"         , "w")
bolo       = open("TEMP/bolo.txt"          , "w")
boloD      = open("TEMP/boloD.txt"         , "w")
cssc       = open("TEMP/cssc.txt"          , "w")
csscD      = open("TEMP/csscD.txt"         , "w")
ethz       = open("TEMP/ethz.txt"          , "w")
ethzD      = open("TEMP/ethzD.txt"         , "w")
resf       = open("TEMP/resf.txt"          , "w")
resfD      = open("TEMP/resfD.txt"         , "w")
hels       = open("TEMP/hels.txt"          , "w")
helsD      = open("TEMP/helsD.txt"         , "w")
helsROmv   = open("TEMP/helsROmoved.txt"   , "w")
helsROlabel = open("TEMP/helsROLabel.txt"  , "w")
epss       = open("TEMP/epss.txt"          , "w")
epssD      = open("TEMP/epssD.txt"         , "w")
irsm       = open("TEMP/irsm.txt"          , "w")
irsmD      = open("TEMP/irsmD.txt"         , "w")
frnk       = open("TEMP/frnk.txt"          , "w")
frnkD      = open("TEMP/frnkD.txt"         , "w")
ouwi       = open("TEMP/ouwi.txt"          , "w")
ouwiD      = open("TEMP/ouwiD.txt"         , "w")
gica       = open("TEMP/gica.txt"          , "w")
gicaD      = open("TEMP/gicaD.txt"         , "w")
gige       = open("TEMP/gige.txt"          , "w")
gigeD      = open("TEMP/gigeD.txt"         , "w")
kiel       = open("TEMP/kiel.txt"          , "w")
kielD      = open("TEMP/kielD.txt"         , "w")
muni       = open("TEMP/muni.txt"          , "w")
muniD      = open("TEMP/muniD.txt"         , "w")
twen       = open("TEMP/twen.txt"          , "w")
twenD      = open("TEMP/twenD.txt"         , "w")
brzg       = open("TEMP/brzg.txt"          , "w")
brzgD      = open("TEMP/brzgD.txt"         , "w")
ogsi       = open("TEMP/ogsi.txt"          , "w")
ogsiD      = open("TEMP/ogsiD.txt"         , "w")
oulu       = open("TEMP/oulu.txt"          , "w")
ouluD      = open("TEMP/ouluD.txt"         , "w")
ouluROlabel= open("TEMP/ouluROLabel.txt"   , "w")
pola       = open("TEMP/pola.txt"          , "w")
polaD      = open("TEMP/polaD.txt"         , "w")
polaLabel  = open("TEMP/polaLabel.txt"     , "w")
wien       = open("TEMP/wien.txt"          , "w")
wienD      = open("TEMP/wienD.txt"         , "w")
wienLabel  = open("TEMP/wienLabel.txt"     , "w")
mnep       = open("TEMP/mnep.txt"          , "w")
mnepD      = open("TEMP/mnepD.txt"         , "w")
kosv       = open("TEMP/kosv.txt"          , "w")
kosvD      = open("TEMP/kosvD.txt"         , "w")
niep       = open("TEMP/niep.txt"          , "w")
niepD      = open("TEMP/niepD.txt"         , "w")
kitp       = open("TEMP/kitp.txt"          , "w")
kitpD      = open("TEMP/kitpD.txt"         , "w")
gipp       = open("TEMP/gipp.txt"          , "w")
gippD      = open("TEMP/gippD.txt"         , "w")
gippRO     = open("TEMP/gippRO.txt"        , "w")
gippROmv   = open("TEMP/gippROmoved.txt"   , "w")
gippROlabel = open("TEMP/gippROLabel.txt"  , "w")
jena       = open("TEMP/jena.txt"          , "w")
jenaD      = open("TEMP/jenaD.txt"         , "w")
rpBB       = open("TEMP/rpBB.txt"          , "w")
rpSP       = open("TEMP/rpSP.txt"          , "w")
rplabel    = open("TEMP/rplabel.txt"       , "w")
none       = open("TEMP/none.txt"          , "w")
numofdep   = open("AUXI/numofdep.txt"      , "w")
net1Y      = open("AUXI/net1Y.txt"         , "w")
net2Y      = open("AUXI/net2Y.txt"         , "w")
net4P      = open("AUXI/net4P.txt"         , "w")
net7B      = open("AUXI/net7B.txt"         , "w")
net9H      = open("AUXI/net9H.txt"         , "w")
netY5      = open("AUXI/netY5.txt"         , "w")
netY8      = open("AUXI/netY8.txt"         , "w")
netZ6      = open("AUXI/netZ6.txt"         , "w")
netXP      = open("AUXI/netXP.txt"         , "w")
netXX      = open("AUXI/netXX.txt"         , "w")
tmpBB030   = open("TEMP/tBB030.txt"        , "w")
tmpBB040   = open("TEMP/tBB040.txt"        , "w")
tmpBB060   = open("TEMP/tBB060-120.txt"    , "w")
tmpBB120   = open("TEMP/tBB120-240.txt"    , "w")
tmpBB240   = open("TEMP/tBB240.txt"        , "w")
notDepl    = open("TEMP/notDepl.txt"       , "w")
labNotDepl = open("TEMP/notDepllabel.txt"  , "w")
yesDepl    = open("TEMP/yesDepl.txt"       , "w")
tmpEIDAy   = open("TEMP/tempEIDAyes.txt"   , "w")
tmpEIDAn   = open("TEMP/tempEIDAno.txt"    , "w")
labEInoTEM = open("TEMP/tEIDAnoBBlabel.txt", "w")
closedT    = open("TEMP/closedTemp.txt"    , "w")
movedT     = open("TEMP/movedTemp.txt"     , "w")
closedT30  = open("TEMP/circlesCLOS30.txt" , "w")
closedT40  = open("TEMP/circlesCLOS40.txt" , "w")
closedTlab = open("TEMP/closedT-label.txt" , "w")
tEIDA10    = open("TEMP/tEIDA10.txt"       , "w")
tEIDA20    = open("TEMP/tEIDA20.txt"       , "w")
tEIDA30    = open("TEMP/tEIDA30.txt"       , "w")
tEIDA40    = open("TEMP/tEIDA40.txt"       , "w")
listT      = open("TEMP/listT.txt"         , "w")
listTcoor  = open("TEMP/listTcoor.txt"     , "w")
listTcoorD = open("TEMP/listTcoorD.txt"    , "w")
listTnoCZ  = open("TEMP/listTnoCZ.txt"     , "w")

for n in inventoryT.index:                        # loop over all lines in the xls/ods sheet
    if inventoryT.iloc[n,1] != '5B': # if it is not 5B network, which is not part of AdA (yet)
        listT.write ("%s\n" % (str(inventoryT.iloc[n,1]) + '.' + str(inventoryT.iloc[n,2]).partition("/")[0])) # list of temporary stations as code.name
        listTcoor.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))  # station coordinates for GMT psxy
        if inventoryT.iloc[n,0] == 1:
            listTcoorD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))  # station coordinates for GMT psxy    
        if inventoryT.iloc[n,16] != 'IG CAS CZ': # if it is not a MOBNET station
            listTnoCZ.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))            
        listALL.write ("%s\n" % (str(inventoryT.iloc[n,1]) + '.' + str(inventoryT.iloc[n,2]).partition("/")[0]))
        listALLcoor.write ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]))) # list of all station coordinates
        listALLb.write    ("%s\n" % (str(inventoryT.iloc[n,1]) + '.' + str(inventoryT.iloc[n,2]).partition("/")[0] + '?' + str(inventoryT.iloc[n,4]) + '?' + str(inventoryT.iloc[n,3]))) # list of all station coordinates
    if inventoryT.iloc[n,0] != 4 and inventoryT.iloc[n,12] == 'PACASE': # former PACASE stations
        counterPCS = counterPCS + 1
    if inventoryT.iloc[n,0] != 4 and inventoryT.iloc[n,12] == 'PACASE' and inventoryT.iloc[n,28] == 1: # former AlpArray stations
        counterAlpA = counterAlpA + 1        
    if inventoryT.iloc[n,0] != 0 and inventoryT.iloc[n,0] != 4 and inventoryT.iloc[n,0] != 5 and inventoryT.iloc[n,12] != 'PACASE': # former PACASE stations        
        counterNEW = counterNEW + 1
    if inventoryT.iloc[n,0] != 0 and inventoryT.iloc[n,0] != 4 and inventoryT.iloc[n,0] != 5 and inventoryT.iloc[n,29] == 1: # ex patria stations
        counterExp = counterExp + 1        
    if inventoryT.iloc[n,0] != 0 and inventoryT.iloc[n,0] != 4 and inventoryT.iloc[n,0] != 5 and inventoryT.iloc[n,30] == 1: # non-EU installations
        counterNEU = counterNEU + 1        
    if (not math.isnan(inventoryT.iloc[n,3])):    # the last loop is going over the last line
        # regional subgroups
        if inventoryT.iloc[n,24] == 'WEST' and inventoryT.iloc[n,0] != 4:
            counterWEST = counterWEST + 1
            if inventoryT.iloc[n,0] != 3: # to not include closed stations
                west.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))  # station coordinates for GMT psxy
                west30.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60'))
                west40.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80'))
                westlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green
        if inventoryT.iloc[n,24] == 'SOUTHEAST' and inventoryT.iloc[n,0] != 4:
            counterSTEA = counterSTEA + 1
            if inventoryT.iloc[n,0] != 3: # to not include closed stations
                stea.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                stea30.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60'))
                stea40.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80'))
                stealabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        if inventoryT.iloc[n,24] == 'CENTER' and inventoryT.iloc[n,0] != 4:
            counterCENT = counterCENT + 1
            if inventoryT.iloc[n,0] != 3: # to not include closed stations
                cent.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                cent30.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60'))
                cent40.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80'))
                centlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        if inventoryT.iloc[n,24] == 'NORTH' and inventoryT.iloc[n,0] != 4:
            counterNORT = counterNORT + 1
            if inventoryT.iloc[n,0] != 3: # to not include closed stations
                nort.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                nort30.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60'))
                nort40.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80'))
                nortlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        if inventoryT.iloc[n,24] == 'EAST' and inventoryT.iloc[n,0] != 4:
            counterEAST = counterEAST + 1
            if inventoryT.iloc[n,0] != 3: # to not include closed stations
                east.write       ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                east30.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60'))
                east40.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80'))
                eastlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempAll.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,255,0) # green            
        # individual mobile pools
        if inventoryT.iloc[n,16] == 'IG CAS CZ':
            if inventoryT.iloc[n,0] != 4:
                igcz.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))            
                counterIGCZ = counterIGCZ + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    igczD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
                    if inventoryT.iloc[n,7] == 'Bulgaria':            
                        igczBG.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                        igczBGlabel.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
                    if inventoryT.iloc[n,7] == 'Romania':            
                        igczRO.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                        igczROlabel.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
                    if inventoryT.iloc[n,7] == 'CZ' or inventoryT.iloc[n,7] == 'Slovakia':
                        igczCZ.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                        igczCZlabel.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
        if inventoryT.iloc[n,16] == 'Denmark':
            if inventoryT.iloc[n,0] != 4:
                aarh.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterAARH = counterAARH + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    aarhD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
                    if inventoryT.iloc[n,7] == 'Bulgaria':            
                        aarhBGlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
                    if inventoryT.iloc[n,7] == 'Romania':            
                        aarhROlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext                        
        if inventoryT.iloc[n,16] == 'Barcelona':
            if inventoryT.iloc[n,0] != 4:
                barc.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterBARC = counterBARC + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    barcD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Bochum' or inventoryT.iloc[n,16] == 'Bochum+Frankfurt':
            if inventoryT.iloc[n,0] != 4:
                boch.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))        
                counterBOCH = counterBOCH + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    bochD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1       
        if inventoryT.iloc[n,16] == 'Bochum+Frankfurt':
            if inventoryT.iloc[n,0] != 4:
                frnk.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    frnkD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,16] == 'Bologna':
            if inventoryT.iloc[n,0] != 4:
                bolo.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterBOLO = counterBOLO + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    boloD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'CSS':
            if inventoryT.iloc[n,0] != 4:
                cssc.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterCSSC = counterCSSC + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    csscD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'ETH':
            if inventoryT.iloc[n,0] != 4:
                ethz.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterETHZ = counterETHZ + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    ethzD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Resif-Sismob':
            if inventoryT.iloc[n,0] != 4:
                resf.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterRESF = counterRESF + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    resfD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Helsinki' or inventoryT.iloc[n,16] == 'Helsinki+IRSM':
            if inventoryT.iloc[n,0] != 4:
                hels.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterHELS = counterHELS + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    helsD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
                    helsROlabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext                        
            if inventoryT.iloc[n,0] == 4:
                helsROmv.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,16] == 'EPSS':
            if inventoryT.iloc[n,0] != 4:
                epss.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterEPSS = counterEPSS + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    epssD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Helsinki+IRSM' or inventoryT.iloc[n,16] == 'GIPP+IRSM':
            if inventoryT.iloc[n,0] != 4:
                irsm.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    irsmD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,16] == 'Kiel':
            if inventoryT.iloc[n,0] != 4:
                kiel.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterKIEL = counterKIEL + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    kielD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
        if inventoryT.iloc[n,16] == 'Munich':
            if inventoryT.iloc[n,0] != 4:
                muni.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterMUNI = counterMUNI + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    muniD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Twente':
            if inventoryT.iloc[n,0] != 4:
                twen.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterTWEN = counterTWEN + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    twenD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'BerZag':
            if inventoryT.iloc[n,0] != 4:
                brzg.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterBRZG = counterBRZG + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    brzgD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'OGS':
            if inventoryT.iloc[n,0] != 4:
                ogsi.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterOGSI = counterOGSI + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    ogsiD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
        if inventoryT.iloc[n,16] == 'Oulu' or inventoryT.iloc[n,16] == 'Oulu+UniWien':
            if inventoryT.iloc[n,0] != 4:
                oulu.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterOULU = counterOULU + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    ouluD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
                    ouluROlabel.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
        if inventoryT.iloc[n,16] == 'Oulu+UniWien':
            if inventoryT.iloc[n,0] != 4:
                ouwi.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    ouwiD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,16] == 'PL':
            if inventoryT.iloc[n,0] != 4:
                pola.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterPOLA = counterPOLA + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    polaD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1            
                    polaLabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext                        
        if inventoryT.iloc[n,16] == 'UniWien':
            if inventoryT.iloc[n,0] != 4:
                wien.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterWIEN = counterWIEN + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    wienD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1
                    wienLabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext                                            
        if inventoryT.iloc[n,16] == 'MNE pool':
            if inventoryT.iloc[n,0] != 4:
                mnep.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterMNEP = counterMNEP + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    mnepD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1                
        if inventoryT.iloc[n,16] == 'Kosovo pool':
            if inventoryT.iloc[n,0] != 4:
                kosv.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterKOSV = counterKOSV + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    kosvD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1                                
        if inventoryT.iloc[n,16] == 'NIEP':
            if inventoryT.iloc[n,0] != 4:
                niep.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterNIEP = counterNIEP + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    niepD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1                                
        if inventoryT.iloc[n,16] == 'KIT':
            if inventoryT.iloc[n,0] != 4:
                kitp.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterKITP = counterKITP + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    kitpD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1                                
        if inventoryT.iloc[n,16] == 'GIPP' or inventoryT.iloc[n,16] == 'GIPP+IRSM' or inventoryT.iloc[n,16] == 'GIPP+CarP' or inventoryT.iloc[n,16] == 'GIPP+GeoAz':
            if inventoryT.iloc[n,0] != 4:
                gipp.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterGIPP = counterGIPP + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    gippD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1                                                
                    if inventoryT.iloc[n,7] == 'Romania':            
                        gippRO.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                        gippROlabel.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]-0.08) + '\t' + ts + '\t' + '0' + '\t' + '1' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
            if inventoryT.iloc[n,0] == 4:
                if inventoryT.iloc[n,7] == 'Romania':            
                    gippROmv.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,16] == 'GIPP+CarP':
            if inventoryT.iloc[n,0] != 4:
                gica.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    gicaD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,16] == 'GIPP+GeoAz':
            if inventoryT.iloc[n,0] != 4:
                gige.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    gigeD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))                
        if inventoryT.iloc[n,16] == 'Jena':
            if inventoryT.iloc[n,0] != 4:
                jena.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterJENA = counterJENA + 1
                if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:
                    jenaD.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                    counterDPLO = counterDPLO + 1                                                                
        if inventoryT.iloc[n,16] == 'RP0X':
            if inventoryT.iloc[n,0] != 4:
                if inventoryT.iloc[n,11] >= 30:
                    rpBB.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                if inventoryT.iloc[n,11] < 30:
                    rpSP.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                counterRP0X = counterRP0X + 1
                rplabel.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
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
        if inventoryT.iloc[n,1] == 'XP':
            netXP.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,1] == 'AC' or inventoryT.iloc[n,1] == 'HA' or inventoryT.iloc[n,1] == 'HL' or inventoryT.iloc[n,1] == 'TV' or inventoryT.iloc[n,1] == 'MK' or inventoryT.iloc[n,1] == 'SJ' or inventoryT.iloc[n,1] == 'UT': # upgrades of permanent
            netXX.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        # stations by corner period        
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >=  30 and inventoryT.iloc[n,11] <  40: # if the station is deployed already and corner is between 30 and 40 s
            tmpBB030.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            yesDepl.write      ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp030.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,255,0) # yellow
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta
        if (inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 4 or inventoryT.iloc[n,0] == 3) and inventoryT.iloc[n,11] >=  30 and inventoryT.iloc[n,11] <  40: # if the station is deployed already and corner is between 30 and 40 s
            if inventoryT.iloc[n,7] == 'Bulgaria':
                BG30.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,7] == 'Romania':
                RO30.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,16] == 'IG CAS CZ' or inventoryT.iloc[n,16] == 'UniWien' or inventoryT.iloc[n,16] == 'PL' :
                No30.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))                
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >=  40 and inventoryT.iloc[n,11] <  60: # if the station is deployed already and corner is between 40 and 60 s
            tmpBB040.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            yesDepl.write      ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp040.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,174,0) # orange
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if (inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 4 or inventoryT.iloc[n,0] == 3) and inventoryT.iloc[n,11] >=  40 and inventoryT.iloc[n,11] <  60: # if the station is deployed already and corner is between 40 and 60 s
            if inventoryT.iloc[n,7] == 'Bulgaria':
                BG40.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,7] == 'Romania':
                RO40.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,16] == 'IG CAS CZ' or inventoryT.iloc[n,16] == 'UniWien' or inventoryT.iloc[n,16] == 'PL' :
                No40.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))                            
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >=  60 and inventoryT.iloc[n,11] < 120: # if the station is deployed already and corner is between 60 and 120 s
            tmpBB060.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            yesDepl.write      ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp060.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,0) # red
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if (inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 4 or inventoryT.iloc[n,0] == 3) and inventoryT.iloc[n,11] >=  60 and inventoryT.iloc[n,11] < 120: # if the station is deployed already and corner is between 60 and 120 s
            if inventoryT.iloc[n,7] == 'Bulgaria':
                BG60.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,7] == 'Romania':
                RO60.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,16] == 'IG CAS CZ' or inventoryT.iloc[n,16] == 'UniWien' or inventoryT.iloc[n,16] == 'PL' :
                No60.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))                            
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >= 120 and inventoryT.iloc[n,11] < 240: # if the station is deployed already and corner is between 120 and 240 s
            tmpBB120.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            yesDepl.write      ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp120.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(166,16,76) # dark red
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if (inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 4 or inventoryT.iloc[n,0] == 3) and inventoryT.iloc[n,11] >= 120 and inventoryT.iloc[n,11] < 240: # if the station is deployed already and corner is between 120 and 240 s
            if inventoryT.iloc[n,7] == 'Bulgaria':
                BG120.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,7] == 'Romania':
                RO120.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,16] == 'IG CAS CZ' or inventoryT.iloc[n,16] == 'UniWien' or inventoryT.iloc[n,16] == 'PL' :
                No120.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))                            
        if inventoryT.iloc[n,0] == 1 and inventoryT.iloc[n,11] >= 240:                                 # if the station is deployed already and corner is 240 s and longer (which case does not exist)
            tmpBB240.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            yesDepl.write      ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            pnt = kmlTemp240.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(135,0,135) # purple
            pnt = kmlTempDep.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(255,0,255) # magenta            
        if (inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 4 or inventoryT.iloc[n,0] == 3) and inventoryT.iloc[n,11] >= 240:                                 # if the station is deployed already and corner is 240 s and longer (which case does not exist)
            if inventoryT.iloc[n,7] == 'Bulgaria':
                BG240.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,7] == 'Romania':
                RO240.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            if inventoryT.iloc[n,16] == 'IG CAS CZ' or inventoryT.iloc[n,16] == 'UniWien' or inventoryT.iloc[n,16] == 'PL' :
                No240.write    ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))                            
        if inventoryT.iloc[n,0] == 0:   # if not yet deployed
            notDepl.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            labNotDepl.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
            pnt = kmlTempNot.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,0,0) # black
        if inventoryT.iloc[n,0] == 1 or inventoryT.iloc[n,0] == 3:   # if deployed
            if inventoryT.iloc[n,19] == 1: # in EIDA
                tmpEIDAy.write ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                tEIDA10.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 20 20' ))
                tEIDA20.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 40 40' ))
                tEIDA30.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60' ))
                tEIDA40.write  ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80' ))
                counterTempEIDAy = counterTempEIDAy + 1
            if inventoryT.iloc[n,19] == 0: # not in EIDA
                tmpEIDAn.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
                labEInoTEM.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2])))
                counterTempEIDAn = counterTempEIDAn + 1
        if inventoryT.iloc[n,0] == 3:   # if closed
            closedT.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
            closedT30.write   ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 60 60' ))
            closedT40.write   ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + ' 0.0 80 80' ))
            closedTlab.write("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3]) + '\t' + ts + '\t' + '0' + '\t' + '0' + '\t' + 'TC' + '\t' + str(inventoryT.iloc[n,2]))) # station labels for GMT pstext
            pnt = kmlTempCLOS.newpoint(name=str(inventoryT.iloc[n,2]), coords=[(inventoryT.iloc[n,4],inventoryT.iloc[n,3])])
            pnt.style.iconstyle.icon.href = "triangle.png"
            pnt.style.iconstyle.color = simplekml.Color.rgb(0,0,0) # black
        if inventoryT.iloc[n,0] == 4:   # if moved
            movedT.write     ("%s\n" % (str(inventoryT.iloc[n,4]) + ' ' + str(inventoryT.iloc[n,3])))
        if inventoryT.iloc[n,0] != 0:   # if deployed
            REPEname.append(str(inventoryT.iloc[n,2])[:4]) # list of station names - only the first 4 characters to find "A" / "B" duplicates
# end of the loop over all the lines in the sheet

REPEnameSet = set(REPEname) # to remove duplicates, if station was moved from its original "A" site to the "B" site
if len(REPEname) != len(REPEnameSet):
    counterA2B = counterA2B + (len(REPEname) - len(REPEnameSet))

west.close()
west30.close()
west40.close()
westlabel.close()
stea.close()
stea30.close()
stea40.close()
stealabel.close()
cent.close()
cent30.close()
cent40.close()
centlabel.close()
nort.close()
nort30.close()
nort40.close()
nortlabel.close()
east.close()
east30.close()
east40.close()
eastlabel.close()
igcz.close()
igczD.close()
igczBG.close()
igczBGlabel.close()
igczRO.close()
igczROlabel.close()
igczCZ.close()
igczCZlabel.close()
aarh.close()
aarhD.close()
aarhBGlabel.close()
aarhROlabel.close()
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
helsROmv.close()
helsROlabel.close()
epss.close()
epssD.close()
irsm.close()
irsmD.close()
frnk.close()
frnkD.close()
ouwi.close()
ouwiD.close()
gica.close()
gicaD.close()
gige.close()
gigeD.close()
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
ouluROlabel.close()
pola.close()
polaD.close()
polaLabel.close()
wien.close()
wienD.close()
wienLabel.close()
mnep.close()
mnepD.close()
kosv.close()
kosvD.close()
niep.close()
niepD.close()
kitp.close()
kitpD.close()
gipp.close()
gippD.close()
gippRO.close()
gippROmv.close()
gippROlabel.close()
jena.close()
jenaD.close()
rpBB.close()
rpSP.close()
rplabel.close()
none.close()
net1Y.close()
net2Y.close()
net4P.close()
net7B.close()
net9H.close()
netY5.close()
netY8.close()
netZ6.close()
netXP.close()
netXX.close()
tmpBB030.close()
tmpBB040.close()
tmpBB060.close()
tmpBB120.close()
tmpBB240.close()
notDepl.close()
labNotDepl.close()
yesDepl.close()
tmpEIDAy.close()
tmpEIDAn.close()
labEInoTEM.close()
closedT.close()
closedT30.close()
closedT40.close()
closedTlab.close()
tEIDA10.close()
tEIDA20.close()
tEIDA30.close()
tEIDA40.close()
listT.close()
listTcoor.close()
listTcoorD.close()
listTnoCZ.close()
listALL.close()
listALLcoor.close()
listALLb.close()
BG30.close()
RO30.close()
No30.close()
BG40.close()
RO40.close()
No40.close()
BG60.close()
RO60.close()
No60.close()
BG120.close()
RO120.close()
No120.close()
BG240.close()
RO240.close()
No240.close()

sumGROUPS = counterEAST + counterNORT + counterCENT + counterSTEA + counterWEST
sumPOOLS  = counterIGCZ + counterAARH + counterBARC + counterBOCH + counterBOLO + counterCSSC + counterETHZ + counterRESF + counterHELS + counterEPSS + counterKIEL + counterMUNI + counterTWEN + counterBRZG + counterOGSI + counterOULU + counterPOLA + counterWIEN + counterMNEP + counterKOSV + counterNIEP + counterKITP + counterGIPP + counterJENA

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
print ('  GIPP               = ', counterGIPP)
print ('  Uni Jena           = ', counterJENA)
print ('  not assigned       = ', counterNONE)
print ('length of inventory  = ', len(inventoryT))
print ('sum of the subgroups = ', sumGROUPS)
print ('sum of the pools     = ', sumPOOLS)
print ('moved A --> B        = ', counterA2B)
print ('diff = not asssigned = ', sumGROUPS-sumPOOLS)
print ('deployed             = ', counterDPLO)
print ('temp in EIDA = ', counterTempEIDAy, 'temp NOT in EIDA = ', counterTempEIDAn)
print ('former AlpArray      = ', counterAlpA)
print ('former PACASE        = ', counterPCS)
print ('newly deployed       = ', counterNEW)
print ('ex patria stations   = ', counterExp)
print ('non-EU stations      = ', counterNEU)

percent = (counterDPLO/(sumGROUPS))*100
numofdep.write('18.3 41.15 18 0 0 TL ' + (str(counterDPLO)) + ' / ' + (str(sumGROUPS)) + ' ('+ str('{:.1f}'.format(percent))+'%)' )
# the file numofdep.txt is used to plot the number of deployed stations, the number of all planned stations and the percentage to the title of the map 13
numofdep.close()

kmlPerm030.save("GOOG/permBB030-040.kml")
kmlPerm040.save("GOOG/permBB040-060.kml")
kmlPerm060.save("GOOG/permBB060-120.kml")
kmlPerm120.save("GOOG/permBB120-240.kml")
kmlPerm240.save("GOOG/permBB240-longer.kml")
kmlPermUNKN.save("GOOG/permUNKN.kml")
kmlPermSPOT.save("GOOG/permSPOT.kml")
kmlPermNOSP.save("GOOG/permNOSP.kml")
kmlPermFUTU.save("GOOG/permBBFuture.kml")
kmlPermCLOS.save("GOOG/permBBClosed.kml")
kmlPermUPGR.save("GOOG/permUPGR.kml")
kmlPermWHIT.save("GOOG/permWHIT.kml")
kmlPermWHITout.save("GOOG/permWHITout.kml")
kmlPermAll.save("GOOG/permBBAllIn.kml")
kmlPermOut.save("GOOG/permBBoutside.kml")
kmlTemp030.save("GOOG/temp030-040.kml")
kmlTemp040.save("GOOG/temp040-060.kml")
kmlTemp060.save("GOOG/temp060-120.kml")
kmlTemp120.save("GOOG/temp120-240.kml")
kmlTemp240.save("GOOG/temp240-longer.kml")
kmlTempAll.save("GOOG/tempAll.kml")
kmlTempDep.save("GOOG/tempDeployed.kml")
kmlTempNot.save("GOOG/tempNotDepl.kml")
kmlTempCLOS.save("GOOG/tempClosed.kml")