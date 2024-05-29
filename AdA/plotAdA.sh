#!/bin/bash

gmtset LABEL_FONT Helvetica LABEL_FONT_SIZE 10
gmtset ANOT_FONT Helvetica ANOT_FONT_SIZE 10
gmtset ANNOT_OFFSET_PRIMARY	0.15c
gmtset HEADER_FONT Helvetica HEADER_FONT_SIZE 18 HEADER_OFFSET -0.2c
gmtset FRAME_PEN 0.4p
gmtset FRAME_WIDTH 0.1c # black and white map frame
gmtset TICK_LENGTH 0.1c
gmtset DOTS_PR_INCH 1500

psfile01=MAPS/01AdriaTotal.ps
psfile02=MAPS/02AdriaBBonl.ps
psfile03=MAPS/03AdriaBBsub.ps
psfile04=MAPS/04AdriaCrc30.ps
psfile05=MAPS/05AdriaCrc40.ps
psfile06=MAPS/06AdriaBBovr.ps
psfile07=MAPS/07AdriaMobil.ps
psfile09=MAPS/09AdriaCOST.ps
psfile10=MAPS/10AdriaTotPR.ps
psfile11=MAPS/11AdriaEIDA.ps
psfile12=MAPS/12AdriaMobRG.ps
psfile13=MAPS/13AdriaDploy.ps
psfile14=MAPS/14AA+AdA+PCS.ps
psfile15=MAPS/15AdAmembers.ps
psfile16=MAPS/16AdAnetwork.ps
psfile17=MAPS/17AdAcorners.ps
psfile18=MAPS/18AdAEIDAall.ps
diam30='60'
diam40='80'

mapborder='-01.0/+33.0/34.0/51.5'  # for station maps
mapbordeB='-03.0/+35.0/34.0/66.5'  # for AdAmembers - bigger map showing the institutions
mapproj='16.0/90/38/48/23.0c'      # for station maps
mapproB='16.0/90/38/58/17.3c'      # for AdAmembers - bigger map showing the institutions
mapnet='a120mf120m/a60mf60m'       # for station maps
mapneB='WEnSa120mf120m/a120mf120m' # for AdAmembers - bigger map showing the institutions
sizemb='0.2'              # size of mobile stations
sizeps='0.3'              # size of permanent stations
sizepsA='0.25'            # size of permanent stations for the map 14: AA+AdA+PCS
sizes2='0.25'             # size of empty triangles in map 13
sizeot='0.2'              # size of stations OUT of the region
thmb='1.2p'               # thickness of triangle contour for mobile stations
thps='0.3p'               # thickness of triangle contour for permanent stations
thot='0.5p'               # thickness of empty triangles for stations outside of the region
ths2='1.0p'               # thickness of empty triangles for map 13 - planned stations (not yet deployed)
thickL='1.3p'             # thickness of triangles contour in the legend
thickLM='3.0p'            # thickness of empty triangles in the legend for mobile stations
thickLC='2.0p'            # thickness of empty circles in the legend for mobile pools
thickE='1.0p'             # thickness of empty circles in the 07 and 12 maps - mobile pools
thickX='1.0p'             # thickness of elipses for local experiments
bb240='135/000/135'       # BB => 240s - purple
bb120='166/016/076'       # BB => 120s - dark red
bb60='255/000/000'        # BB =>  60s - red
bb40='255/174/000'        # BB =   40s - orange
bb30='255/255/000'        # BB =   30s - yellow
pcse='000/000/255'        # PACASE stations - blue
upgr='000/255/000'        # permanent short period - green
unkn='000/000/000'        # sensor unknown - black
spot='000/255/255'        # possible spot - cyan
futu='000/150/000'        # future permanent station - dark green
grey='150/150/150'        # permanent stations for map 13 and not yet deployed temporary stations for maps 17 and 18 - grey
whit='255/255/255'        # stations not meant for upgrade - white
nosp='150/150/150'        # stations not suitable / available for upgrade - grey
perm='255/000/000'        # simplified map permanent - red
temp='000/255/000'        # simplified map temporary - green
outs='100/100/100'        # simplified outer stations BB - grey
outsA='150/150/250'       # outer BB stations for map 14: AA+AdA+PCS
centP='248/024/148'       # pinkish color CENTRAL hot pink
eastP='255/000/255'       # pinkish color EAST purple
nortP='255/110/199'       # pinkish color NORTH blacklight purple
steaP='223/082/134'       # pinkish color SOUTHEAST fandago
westP='150/000/150'       # pinkish color WEST neon pink
cent='255/000/255'        # color CENTRAL
east='000/192/255'        # color EAST
nort='000/255/000'        # color NORTH
stea='000/000/200'        # color SOUTHEAST
west='150/000/150'        # color WEST
blck='000/000/000'        # black contour of the triangles
labcolorW='255/255/255'   # label color - white
labcolorB='000/000/000'   # label color - black
irsmclr='255/000/000'     # IRSM CAS CZ ----------- individual mobile pools ----------------
helsclr='000/255/000'     # Uni Helsinki
ouluclr='120/000/255'     # Uni Oulu
igczclr='000/000/255'     # IG CAS CZ
polaclr='000/255/255'     # Poland
aarhclr='255/255/255'     # Uni Aarhus
wienclr='255/000/255'     # Uni Wien
twenclr='255/079/000'     # Uni Twente
epssclr='150/065/000'     # EPSS, Hungary
brzgclr='000/150/000'     # Norwegian pool + Uni Zagreb
kielclr='000/000/000'     # Uni Kiel
bochclr='135/000/135'     # Uni Bochum
municlr='255/255/000'     # Uni Munich
barcclr='000/122/255'     # Barcelona
resfclr='181/201/047'     # Resif-Sismob
ogsiclr='166/016/076'     # OGS Italy
ethzclr='250/080/120'     # ETH Zurich
boloclr='070/255/190'     # INGV Bologna
csscclr='070/070/070'     # Croatian Seismological Survey
mnepclr='135/162/235'     # Montenegro Pool
kosvclr='229/158/223'     # Kosovo Pool
niepclr='000/080/000'     # NIEP Pool
kitpclr='095/040/000'     # KIT
gippclr='210/110/000'     # GIPP
jenaclr='100/100/000'     # Uni Jena
frnkclr='200/160/000'     # Uni Frankfurt
gigeclr='255/000/000'     # Geoazur + GIPP
serbclr='035/127/095'     # Serbian mobile pool
#noneclr='255/255/255'     # not assigned
clr1Y='000/122/255'       # 1Y  ----------------- temporary networks --------------------
clr2Y='135/000/135'       # 2Y
clr4P='000/150/000'       # 4P
clr7B='255/000/000'       # 7B
clr9H='000/000/255'       # 9H
clrY5='255/000/255'       # Y5
clrY8='070/255/190'       # Y8
clrZ6='172/085/000'       # Z6
clrRF='255/255/000'       # RF
clrRS='080/080/080'       # RS - code for Serbia not known yet
clrXX='255/255/255'       # XX - not assigned yet or using permanent code
eidaclr='255/000/255'     # colors of squares in map 15 showing the institutions
membclr='000/255/000'     # members
pendclr='240/240/000'     # membership pending
candclr='000/150/255'     # interested institutions - candidates for membership

# basic map and title
pscoast -R$mapborder -Di -JL$mapproj -B$mapnet/:."AdriaArray - all stations":                   -X+1.3 -Y+1.2 -W0.1p -K > $psfile01
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all BB stations":                -X+1.3 -Y+1.2 -W0.1p -K > $psfile02
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB stations in subgroups":       -X+1.3 -Y+1.2 -W0.1p -K > $psfile03
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - coverage, R = 30 km":            -X+1.3 -Y+1.2 -W0.1p -K > $psfile04
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - coverage, R = 40 km":            -X+1.3 -Y+1.2 -W0.1p -K > $psfile05
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB stations simplified":         -X+1.3 -Y+1.2 -W0.1p -K > $psfile06
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB in subgroups + mobile pools": -X+1.3 -Y+1.2 -W0.1p -K > $psfile07
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all BB stations simplified":     -X+1.3 -Y+1.2 -W0.1p -K > $psfile09
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all permanent stations":         -X+1.3 -Y+1.2 -W0.1p -K > $psfile10
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - permanent BB stations in EIDA":  -X+1.3 -Y+1.2 -W0.1p -K > $psfile11
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB + mobile pools":              -X+1.3 -Y+1.2 -W0.1p -K > $psfile12
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdA - deployed mobile stations                                 ": -X+1.3 -Y+1.2 -W0.1p -K > $psfile13
pscoast -R           -Di -JL$mapproj -B$mapnet/:."passive seismic experiments 2015 - 2025":     -X+1.3 -Y+1.2 -W0.1p -K > $psfile14
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - temporary networks":             -X+1.3 -Y+1.2 -W0.1p -K > $psfile16
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB stations by corner period":   -X+1.3 -Y+1.2 -W0.1p -K > $psfile17
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all BB stations in EIDA":        -X+1.3 -Y+1.2 -W0.1p -K > $psfile18
pscoast -R$mapbordeB -Di -JL$mapproB -B$mapneB/:."AdriaArray institutions":                     -X+1.3 -Y+1.2 -W0.1p -K > $psfile15

# greyshaded topography taken from
# https://www.ngdc.noaa.gov/mgg/global/relief/ETOPO1/data/bedrock/grid_registered/netcdf/
makecpt -CAUXI/twoshades -T-3000/+3000/100 -Z -V > AUXI/bw.cpt
grdimage AUXI/AdAtopo.grd -R$mapborder -JL$mapproj -K -O -CAUXI/bw.cpt >> $psfile01
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile02
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile03
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile04
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile05
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile06
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile07
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile09
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile10
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile11
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile12
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile13
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile14
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile16
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile17
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile18
grdimage AUXI/AdAtopo.grd -R$mapbordeB -JL$mapproB -K -O -CAUXI/bw.cpt >> $psfile15

# to plot borders over the topography
pscoast -R$mapborder -Di -N1/0.2p -W0.2p -JL$mapproj -K -O >> $psfile01
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile02
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile03
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile06
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile07
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile09
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile10
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile11
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile12
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile13
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile14
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile16
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile17
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile18
pscoast -R$mapbordeB -Di -N1/0.2p -W0.2p -JL$mapproB -K -O >> $psfile15
psxy AUXI/kosovo-border.dat -R$mapborder -JL$mapproj -W0.2p/0/0/0 -K -O >> $psfile01
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile02
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile03
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile06
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile07
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile09
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile10
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile11
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile12
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile13
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile14
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile16
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile17
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile18
psxy AUXI/kosovo-border.dat -R$mapbordeB -JL$mapproB -W0.2p/0/0/0 -K -O >> $psfile15

# outline of the AdriaArray region split in pieces to plot it differently onland and offshore
psxy AUXI/borderLandA.dat -R$mapborder -JL$mapproj -W1.0p/255/255/000            -K -O >> $psfile01
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile01
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile01
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile01
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile01
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile01
psxy AUXI/borderLandA.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile06
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile06
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile06
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile06
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile06
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile06
psxy AUXI/borderLandA.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile09
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile09
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/255/255/000            -K -O >> $psfile09
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile09
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile09
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile09

# SP/SM stations not suitable or available for upgrade
psxy     PERM/pNOSP.txt               -R -JL -St$sizeps -G$nosp -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pNOSP.txt               -R -JL -St$sizeps -G$nosp -W$thps/$blck -K -O >> $psfile10

# SP/SM stations not needed for upgrade
psxy     PERM/pWHIT.txt               -R -JL -St$sizeps -G$whit -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pWHIT.txt               -R -JL -St$sizeps -G$whit -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pWHITo.txt              -R -JL -St$sizeot         -W$thot/$whit -K -O >> $psfile01
psxy     PERM/pWHITo.txt              -R -JL -St$sizeot         -W$thot/$whit -K -O >> $psfile10

# unequipped spots available for upgrade
psxy     PERM/pSPOT.txt               -R -JL -St$sizeps -G$spot -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pSPOT.txt               -R -JL -St$sizeps -G$spot -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pSPOTo.txt              -R -JL -St$sizeot         -W$thot/$spot -K -O >> $psfile01
psxy     PERM/pSPOTo.txt              -R -JL -St$sizeot         -W$thot/$spot -K -O >> $psfile10

# stations 5B - Peloponnese - temporary, but not in AdA yet
psxy     TEMP/rpBB.txt                -R -JL -St$sizemb           -W$thmb/$outs  -K -O >> $psfile01
psxy     TEMP/rpBB.txt                -R -JL -St$sizeps           -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/rpSP.txt                -R -JL -St$sizemb           -W$thmb/$outs  -K -O >> $psfile01
psxy     TEMP/rpSP.txt                -R -JL -St$sizeps           -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/rpBB.txt                -R -JL -St$sizemb           -W$thmb/$outs  -K -O >> $psfile02
psxy     TEMP/rpBB.txt                -R -JL -St$sizeps           -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/rpBB.txt                -R -JL -St$sizeps  -G$outs  -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/rpBB.txt                -R -JL -St$sizepsA -G$outsA -W$thps/$blck  -K -O >> $psfile14

# BB stations working during the AdA time frame (since May 2022) but closed already
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile01
psxy     TEMP/closedTemp.txt          -R -JL -St$sizemb          -W$thmb/$blck -K -O >> $psfile01
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps          -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile02
psxy     TEMP/closedTemp.txt          -R -JL -St$sizemb          -W$thmb/$blck -K -O >> $psfile02
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps          -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile03
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile06
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile07
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile09
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile10 # in this map, temporary are not shown at all
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile12
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pCLOS.txt               -R -JL -St$sizepsA -G$blck -W$thps/$blck -K -O >> $psfile14
psxy     TEMP/closedTemp.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck -K -O >> $psfile14 # closed temporary have the same color as other temporary, as in this map, many temporary are closed from the old experiments
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' PERM/pCLOS.txt > PERM/circlesCLOS30.dat # creating circles for plotting the coverage
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' PERM/pCLOS.txt > PERM/circlesCLOS40.dat
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' TEMP/closedTemp.txt > TEMP/circlesCLOS30.dat # creating circles for plotting the coverage
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' TEMP/closedTemp.txt > TEMP/circlesCLOS40.dat

# BB stations planned to be deployed in near future
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pFUTUo.txt              -R -JL -St$sizeot          -W$thot/$futu -K -O >> $psfile01
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pFUTUo.txt              -R -JL -St$sizeot          -W$thot/$futu -K -O >> $psfile02
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pFUTUo.txt              -R -JL -St$sizeot          -W$thot/$futu -K -O >> $psfile09
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pFUTUo.txt              -R -JL -St$sizeot          -W$thot/$futu -K -O >> $psfile10
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pFUTU.txt               -R -JL -St$sizes2          -W$ths2/$grey -K -O >> $psfile13
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps          -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pFUTU.txt               -R -JL -St$sizepsA -G$futu -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pFUTUo.txt              -R -JL -St$sizepsA -G$futu -W$thps/$blck -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' PERM/pFUTU.txt > PERM/circlesFUTU30.dat # creating circles for plotting the coverage
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' PERM/pFUTU.txt > PERM/circlesFUTU40.dat

# EASI, AlpArray, Ivrea and PACASE temporary stations
psxy     AUXI/AlpArrayTemp.txt        -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/stations-PACASE.txt     -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/ivrea.txt               -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/easi.txt                -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14

# stations with unknown sensor
#psxy     PERM/pUNKN.txt               -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile01
#psxy     PERM/pUNKN.txt               -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile10
#psxy     PERM/pUNKNo.txt              -R -JL -St$sizeot         -W$thot/$unkn -K -O >> $psfile01
#psxy     PERM/pUNKNo.txt              -R -JL -St$sizeot         -W$thot/$unkn -K -O >> $psfile10
#psxy     PERM/pUNKN.txt               -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile02
#psxy     PERM/pUNKNo.txt              -R -JL -St$sizeot         -W$thot/$unkn -K -O >> $psfile02
#awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' PERM/pUNKN.txt > PERM/circlesUNKN30.dat
#awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' PERM/pUNKN.txt > PERM/circlesUNKN40.dat

# SP/SM stations available for upgrade
psxy     PERM/pUPGR.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pUPGR.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile10

# PACASE stations which will stay for AdriaArray
awk '{print $3, $2}' AUXI/PACASEstay.txt > AUXI/stations-PACASEstay.txt
psxy   AUXI/stations-PACASEstay.txt -R -JL -St$sizeps -G$pcse -W$thps/$blck -K -O >> $psfile01 # if you delete "stay", and keep the file as "stations-PACASE.txt", it plots all PACASE stations
psxy   AUXI/stations-PACASEstay.txt -R -JL -St$sizeps -G$pcse -W$thps/$blck -K -O >> $psfile02

# BB stations with corner period from 30 to 40 s
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pBB30o.txt          -R -JL -St$sizeot           -W$thot/$bb30 -K -O >> $psfile01
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pBB30o.txt          -R -JL -St$sizeot           -W$thot/$bb30 -K -O >> $psfile02
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB30o.txt          -R -JL -St$sizeot  -G$outs  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pBB30o.txt          -R -JL -St$sizeot           -W$thot/$bb30 -K -O >> $psfile10
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pBB30o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB30.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB030.txt          -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile17
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' PERM/pBB30.txt > PERM/circlesBB3030.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' PERM/pBB30.txt > PERM/circlesBB3040.dat

# BB stations with corner period from 40 to 60 s
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfile01
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfile10
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot  -G$outs  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfile02
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pBB40o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB40.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB040.txt          -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile17
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' PERM/pBB40.txt > PERM/circlesBB4030.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' PERM/pBB40.txt > PERM/circlesBB4040.dat

# BB stations with corner period 60 s and longer
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfile01
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfile10
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot  -G$outs  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfile02
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pBB60o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB60.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' PERM/pBB60.txt > PERM/circlesBB6030.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' PERM/pBB60.txt > PERM/circlesBB6040.dat

# finer split by corner period for map 17 and not yet deployed temporary stations for map 17
psxy     TEMP/notDepl.txt         -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB060-120.txt      -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB060-120.txt      -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB120-240.txt      -R -JL -St$sizeps  -G$bb120 -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB120-240.txt      -R -JL -St$sizeps  -G$bb120 -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB240.txt          -R -JL -St$sizeps  -G$bb240 -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB240.txt          -R -JL -St$sizeps  -G$bb240 -W$thps/$blck -K -O >> $psfile17

# mobile stations - subgroup CENTER
psxy     TEMP/mcent.txt          -R -JL -St$sizemb          -W$thmb/$centP -K -O >> $psfile01
psxy     TEMP/mcent.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mcent.txt          -R -JL -St$sizemb          -W$thmb/$cent  -K -O >> $psfile02
psxy     TEMP/mcent.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$cent -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$cent -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mcent.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' TEMP/mcent.txt > TEMP/circlesCENT30.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' TEMP/mcent.txt > TEMP/circlesCENT40.dat

# mobile stations - subgroup EAST
psxy     TEMP/meast.txt          -R -JL -St$sizemb          -W$thmb/$eastP -K -O >> $psfile01
psxy     TEMP/meast.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/meast.txt          -R -JL -St$sizemb          -W$thmb/$east  -K -O >> $psfile02
psxy     TEMP/meast.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$east -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$east -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/meast.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' TEMP/meast.txt > TEMP/circlesEAST30.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' TEMP/meast.txt > TEMP/circlesEAST40.dat

# mobile stations - subgroup WEST
psxy     TEMP/mwest.txt          -R -JL -St$sizemb          -W$thmb/$westP -K -O >> $psfile01
psxy     TEMP/mwest.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mwest.txt          -R -JL -St$sizemb          -W$thmb/$west  -K -O >> $psfile02
psxy     TEMP/mwest.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$west -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$west -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mwest.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' TEMP/mwest.txt > TEMP/circlesWEST30.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' TEMP/mwest.txt > TEMP/circlesWEST40.dat

# mobile stations - subgroup NORTH
psxy     TEMP/mnort.txt          -R -JL -St$sizemb          -W$thmb/$nortP -K -O >> $psfile01
psxy     TEMP/mnort.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mnort.txt          -R -JL -St$sizemb          -W$thmb/$nort  -K -O >> $psfile02
psxy     TEMP/mnort.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$nort -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$nort -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mnort.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' TEMP/mnort.txt > TEMP/circlesNORT30.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' TEMP/mnort.txt > TEMP/circlesNORT40.dat

# mobile stations - subgroup SOUTHEAST
psxy     TEMP/mstea.txt          -R -JL -St$sizemb          -W$thmb/$steaP -K -O >> $psfile01
psxy     TEMP/mstea.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mstea.txt          -R -JL -St$sizemb          -W$thmb/$stea  -K -O >> $psfile02
psxy     TEMP/mstea.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$stea -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$stea -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mstea.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
awk -v awk_diam30=$diam30 '{print $1, $2, "0.0 " awk_diam30 " " awk_diam30}' TEMP/mstea.txt > TEMP/circlesSTEA30.dat
awk -v awk_diam40=$diam40 '{print $1, $2, "0.0 " awk_diam40 " " awk_diam40}' TEMP/mstea.txt > TEMP/circlesSTEA40.dat

# experiment outlines for map 14
psxy AUXI/AlpArrayOutline.dat -R -JL -W1.3p/255/255/255            -K -O >> $psfile14
psxy AUXI/PACASEoutline.dat   -R -JL -W1.3p/000/255/255            -K -O >> $psfile14
psxy AUXI/borderLandA.dat     -R -JL -W1.0p/255/255/000            -K -O >> $psfile14
psxy AUXI/borderLandB.dat     -R -JL -W1.0p/255/255/000            -K -O >> $psfile14
psxy AUXI/borderLandC.dat     -R -JL -W1.0p/255/255/000            -K -O >> $psfile14
psxy AUXI/borderSeaA.dat      -R -JL -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile14
psxy AUXI/borderSeaB.dat      -R -JL -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile14
psxy AUXI/borderSeaC.dat      -R -JL -W1.0p+t2.0_2.0:0/255/255/000 -K -O >> $psfile14
# labels for experiments
pstext -R -JL -G000/255/255 -K -O << end >> $psfile14
26.5 50.4 20 0 0 MC PACASE
27.5 49.5 16 0 0 MC 2019 - 2022
end
pstext -R -JL -G255/255/255 -K -O << end >> $psfile14
 5.8 41.0 20 0 0 MC AlpArray
 5.9 40.0 16 0 0 MC 2015 - 2019
end
pstext -R -JL -G255/255/000 -K -O << end >> $psfile14
19.0 36.3 20 0 0 MC AdriaArray
19.0 35.3 16 0 0 MC 2022 - 2025
end

# circles of 30 km radius
#psxy PERM/circlesUNKN30.dat  -R -JL -G$unkn -SE -K -O >> $psfile04
psxy PERM/circlesCLOS30.dat  -R -JL -G$blck -SE -K -O >> $psfile04
psxy TEMP/circlesCLOS30.dat  -R -JL -G$blck -SE -K -O >> $psfile04
psxy PERM/circlesFUTU30.dat  -R -JL -G$futu -SE -K -O >> $psfile04
psxy PERM/circlesBB3030.dat  -R -JL -G$bb30 -SE -K -O >> $psfile04
psxy PERM/circlesBB4030.dat  -R -JL -G$bb40 -SE -K -O >> $psfile04
psxy PERM/circlesBB6030.dat  -R -JL -G$bb60 -SE -K -O >> $psfile04
psxy TEMP/circlesWEST30.dat  -R -JL -G$west -SE -K -O >> $psfile04
psxy TEMP/circlesCENT30.dat  -R -JL -G$cent -SE -K -O >> $psfile04
psxy TEMP/circlesNORT30.dat  -R -JL -G$nort -SE -K -O >> $psfile04
psxy TEMP/circlesEAST30.dat  -R -JL -G$east -SE -K -O >> $psfile04
psxy TEMP/circlesSTEA30.dat  -R -JL -G$stea -SE -K -O >> $psfile04

# circles of 40 km radius
#psxy PERM/circlesUNKN40.dat  -R -JL -G$unkn -SE -K -O >> $psfile05
psxy PERM/circlesCLOS40.dat  -R -JL -G$blck -SE -K -O >> $psfile05
psxy TEMP/circlesCLOS40.dat  -R -JL -G$blck -SE -K -O >> $psfile05
psxy PERM/circlesFUTU40.dat  -R -JL -G$futu -SE -K -O >> $psfile05
psxy PERM/circlesBB3040.dat  -R -JL -G$bb30 -SE -K -O >> $psfile05
psxy PERM/circlesBB4040.dat  -R -JL -G$bb40 -SE -K -O >> $psfile05
psxy PERM/circlesBB6040.dat  -R -JL -G$bb60 -SE -K -O >> $psfile05
psxy TEMP/circlesWEST40.dat  -R -JL -G$west -SE -K -O >> $psfile05
psxy TEMP/circlesCENT40.dat  -R -JL -G$cent -SE -K -O >> $psfile05
psxy TEMP/circlesNORT40.dat  -R -JL -G$nort -SE -K -O >> $psfile05
psxy TEMP/circlesEAST40.dat  -R -JL -G$east -SE -K -O >> $psfile05
psxy TEMP/circlesSTEA40.dat  -R -JL -G$stea -SE -K -O >> $psfile05

# stations which are / are not in EIDA
psxy PERM/EIDAysBB.txt    -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile11
psxy PERM/EIDAnoBB.txt    -R -JL -St$sizeps -G$bb60 -W$thps/$blck -K -O >> $psfile11
psxy PERM/EIDAzz.txt      -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile11
psxy PERM/EIDAnoBB.txt    -R -JL -St$sizeps -G$bb60 -W$thps/$blck -K -O >> $psfile18
psxy TEMP/tempEIDAno.txt  -R -JL -St$sizeps -G$bb60 -W$thps/$blck -K -O >> $psfile18
psxy PERM/EIDAysBB.txt    -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile18
psxy TEMP/tempEIDAyes.txt -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile18
psxy PERM/EIDAzz.txt      -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile18
psxy TEMP/notDepl.txt     -R -JL -St$sizeps -G$blck -W$thps/$blck -K -O >> $psfile18

# individual mobile pools
# GIPP
psxy TEMP/gipp.txt  -R -JL -Sc0.3     -W$thickE/$gippclr -K -O >> $psfile07
psxy TEMP/gipp.txt  -R -JL -Sc0.3     -W$thickE/$gippclr -K -O >> $psfile12
psxy TEMP/gipp.txt  -R -JL -St$sizes2 -W$ths2/$gippclr   -K -O >> $psfile13
psxy TEMP/gippD.txt -R -JL -St$sizes2 -G$gippclr         -K -O >> $psfile13

# GIPP + Carpathian Project - dots only
psxy TEMP/gicaD.txt  -R -JL -Sc0.1    -G$jenaclr         -K -O >> $psfile13  # GIPP + Carpathian Project
psxy TEMP/gipp.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Uni Jena
psxy TEMP/jena.txt  -R -JL -Sc0.3     -W$thickE/$jenaclr -K -O >> $psfile07
psxy TEMP/jena.txt  -R -JL -Sc0.3     -W$thickE/$jenaclr -K -O >> $psfile12
psxy TEMP/jena.txt  -R -JL -St$sizes2 -W$ths2/$jenaclr   -K -O >> $psfile13
psxy TEMP/jenaD.txt -R -JL -St$sizes2 -G$jenaclr         -K -O >> $psfile13
psxy TEMP/jena.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Uni Aarhus
psxy TEMP/aarh.txt  -R -JL -Sc0.3     -W$thickE/$aarhclr -K -O >> $psfile07
psxy TEMP/aarh.txt  -R -JL -Sc0.3     -W$thickE/$aarhclr -K -O >> $psfile12
psxy TEMP/aarh.txt  -R -JL -St$sizes2 -W$ths2/$aarhclr   -K -O >> $psfile13
psxy TEMP/aarhD.txt -R -JL -St$sizes2 -G$aarhclr         -K -O >> $psfile13
psxy TEMP/aarh.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Barcelona
psxy TEMP/barc.txt  -R -JL -Sc0.3     -W$thickE/$barcclr -K -O >> $psfile07
psxy TEMP/barc.txt  -R -JL -Sc0.3     -W$thickE/$barcclr -K -O >> $psfile12
psxy TEMP/barc.txt  -R -JL -St$sizes2 -W$ths2/$barcclr   -K -O >> $psfile13
psxy TEMP/barcD.txt -R -JL -St$sizes2 -G$barcclr         -K -O >> $psfile13
psxy TEMP/barc.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Bochum
psxy TEMP/boch.txt  -R -JL -Sc0.3     -W$thickE/$bochclr -K -O >> $psfile07
psxy TEMP/boch.txt  -R -JL -Sc0.3     -W$thickE/$bochclr -K -O >> $psfile12
psxy TEMP/boch.txt  -R -JL -St$sizes2 -W$ths2/$bochclr   -K -O >> $psfile13
psxy TEMP/bochD.txt -R -JL -St$sizes2 -G$bochclr         -K -O >> $psfile13
psxy TEMP/boch.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Bochum + Uni Frankfurt - dots only
psxy TEMP/frnkD.txt  -R -JL -Sc0.1    -G$frnkclr         -K -O >> $psfile13  # Bochum + Uni Frankfurt digitizers

# Bologna
psxy TEMP/bolo.txt  -R -JL -Sc0.3     -W$thickE/$boloclr -K -O >> $psfile07
psxy TEMP/bolo.txt  -R -JL -Sc0.3     -W$thickE/$boloclr -K -O >> $psfile12
psxy TEMP/bolo.txt  -R -JL -St$sizes2 -W$ths2/$boloclr   -K -O >> $psfile13
psxy TEMP/boloD.txt -R -JL -St$sizes2 -G$boloclr         -K -O >> $psfile13
psxy TEMP/bolo.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Bergen + Zagreb
psxy TEMP/brzg.txt  -R -JL -Sc0.3     -W$thickE/$brzgclr -K -O >> $psfile07
psxy TEMP/brzg.txt  -R -JL -Sc0.3     -W$thickE/$brzgclr -K -O >> $psfile12
psxy TEMP/brzg.txt  -R -JL -St$sizes2 -W$ths2/$brzgclr   -K -O >> $psfile13
psxy TEMP/brzgD.txt -R -JL -St$sizes2 -G$brzgclr         -K -O >> $psfile13
psxy TEMP/brzg.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# CSS - Croatia Seismological Survey
psxy TEMP/cssc.txt  -R -JL -Sc0.3     -W$thickE/$csscclr -K -O >> $psfile07
psxy TEMP/cssc.txt  -R -JL -Sc0.3     -W$thickE/$csscclr -K -O >> $psfile12
psxy TEMP/cssc.txt  -R -JL -St$sizes2 -W$ths2/$csscclr   -K -O >> $psfile13
psxy TEMP/csscD.txt -R -JL -St$sizes2 -G$csscclr         -K -O >> $psfile13
psxy TEMP/cssc.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Hungary
psxy TEMP/epss.txt  -R -JL -Sc0.3     -W$thickE/$epssclr -K -O >> $psfile07
psxy TEMP/epss.txt  -R -JL -Sc0.3     -W$thickE/$epssclr -K -O >> $psfile12
psxy TEMP/epss.txt  -R -JL -St$sizes2 -W$ths2/$epssclr   -K -O >> $psfile13
psxy TEMP/epssD.txt -R -JL -St$sizes2 -G$epssclr         -K -O >> $psfile13
psxy TEMP/epss.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# ETH Zurich
psxy TEMP/ethz.txt  -R -JL -Sc0.3     -W$thickE/$ethzclr -K -O >> $psfile07
psxy TEMP/ethz.txt  -R -JL -Sc0.3     -W$thickE/$ethzclr -K -O >> $psfile12
psxy TEMP/ethz.txt  -R -JL -St$sizes2 -W$ths2/$ethzclr   -K -O >> $psfile13
psxy TEMP/ethzD.txt -R -JL -St$sizes2 -G$ethzclr         -K -O >> $psfile13
psxy TEMP/ethz.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Helsinki
psxy TEMP/hels.txt  -R -JL -Sc0.3     -W$thickE/$helsclr -K -O >> $psfile07
psxy TEMP/hels.txt  -R -JL -Sc0.3     -W$thickE/$helsclr -K -O >> $psfile12
psxy TEMP/hels.txt  -R -JL -St$sizes2 -W$ths2/$helsclr   -K -O >> $psfile13
psxy TEMP/helsD.txt -R -JL -St$sizes2 -G$helsclr         -K -O >> $psfile13
psxy TEMP/hels.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Helsinki + IRSM CAS CZ - dots only
psxy TEMP/irsmD.txt  -R -JL -Sc0.1    -G$irsmclr         -K -O >> $psfile13  # IRSM + Helsinki equipment

# IG CAS CZ
psxy TEMP/igcz.txt  -R -JL -Sc0.3     -W$thickE/$igczclr -K -O >> $psfile07
psxy TEMP/igcz.txt  -R -JL -Sc0.3     -W$thickE/$igczclr -K -O >> $psfile12
psxy TEMP/igcz.txt  -R -JL -St$sizes2 -W$ths2/$igczclr   -K -O >> $psfile13
psxy TEMP/igczD.txt -R -JL -St$sizes2 -G$igczclr         -K -O >> $psfile13
psxy TEMP/igcz.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Uni Kiel
psxy TEMP/kiel.txt  -R -JL -Sc0.3     -W$thickE/$kielclr -K -O >> $psfile07
psxy TEMP/kiel.txt  -R -JL -Sc0.3     -W$thickE/$kielclr -K -O >> $psfile12
psxy TEMP/kiel.txt  -R -JL -St$sizes2 -W$ths2/$kielclr   -K -O >> $psfile13
psxy TEMP/kielD.txt -R -JL -St$sizes2 -G$kielclr         -K -O >> $psfile13
psxy TEMP/kiel.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# LMU Munich
psxy TEMP/muni.txt  -R -JL -Sc0.3     -W$thickE/$municlr -K -O >> $psfile07
psxy TEMP/muni.txt  -R -JL -Sc0.3     -W$thickE/$municlr -K -O >> $psfile12
psxy TEMP/muni.txt  -R -JL -St$sizes2 -W$ths2/$municlr   -K -O >> $psfile13
psxy TEMP/muniD.txt -R -JL -St$sizes2 -G$municlr         -K -O >> $psfile13
psxy TEMP/muni.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# OGS Italy
psxy TEMP/ogsi.txt  -R -JL -Sc0.3     -W$thickE/$ogsiclr -K -O >> $psfile07
psxy TEMP/ogsi.txt  -R -JL -Sc0.3     -W$thickE/$ogsiclr -K -O >> $psfile12
psxy TEMP/ogsi.txt  -R -JL -St$sizes2 -W$ths2/$ogsiclr   -K -O >> $psfile13
psxy TEMP/ogsiD.txt -R -JL -St$sizes2 -G$ogsiclr         -K -O >> $psfile13
psxy TEMP/ogsi.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Uni Oulu
psxy TEMP/oulu.txt  -R -JL -Sc0.3     -W$thickE/$ouluclr -K -O >> $psfile07
psxy TEMP/oulu.txt  -R -JL -Sc0.3     -W$thickE/$ouluclr -K -O >> $psfile12
psxy TEMP/oulu.txt  -R -JL -St$sizes2 -W$ths2/$ouluclr   -K -O >> $psfile13
psxy TEMP/ouluD.txt -R -JL -St$sizes2 -G$ouluclr         -K -O >> $psfile13
psxy TEMP/oulu.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Uni Oulu + Uni Wien at Oulu stations - dots only
psxy TEMP/ouwiD.txt  -R -JL -Sc0.1    -G$wienclr         -K -O >> $psfile13  # Oulu + UniWien digitizers

# Geoazur + GIPP
psxy TEMP/gige.txt  -R -JL -Sc0.3     -W$thickE/$gigeclr -K -O >> $psfile07
psxy TEMP/gige.txt  -R -JL -Sc0.3     -W$thickE/$gigeclr -K -O >> $psfile12
psxy TEMP/gige.txt  -R -JL -St$sizes2 -W$ths2/$gigeclr   -K -O >> $psfile13
psxy TEMP/gigeD.txt -R -JL -St$sizes2 -G$gigeclr         -K -O >> $psfile13
psxy TEMP/gige.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

#  Geoazur + GIPP - dots only
psxy TEMP/gige.txt  -R -JL -Sc0.1    -G$gippclr         -K -O >> $psfile13  # Geoazur sensors + GIPP digitizers

# Poland
psxy TEMP/pola.txt  -R -JL -Sc0.3     -W$thickE/$polaclr -K -O >> $psfile07
psxy TEMP/pola.txt  -R -JL -Sc0.3     -W$thickE/$polaclr -K -O >> $psfile12
psxy TEMP/pola.txt  -R -JL -St$sizes2 -W$ths2/$polaclr   -K -O >> $psfile13
psxy TEMP/polaD.txt -R -JL -St$sizes2 -G$polaclr         -K -O >> $psfile13
psxy TEMP/pola.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Resif-Sismob
psxy TEMP/resf.txt  -R -JL -Sc0.3     -W$thickE/$resfclr -K -O >> $psfile07
psxy TEMP/resf.txt  -R -JL -Sc0.3     -W$thickE/$resfclr -K -O >> $psfile12
psxy TEMP/resf.txt  -R -JL -St$sizes2 -W$ths2/$resfclr   -K -O >> $psfile13
psxy TEMP/resfD.txt -R -JL -St$sizes2 -G$resfclr         -K -O >> $psfile13
psxy TEMP/resf.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Uni Twente, the Netherlands
psxy TEMP/twen.txt  -R -JL -Sc0.3     -W$thickE/$twenclr -K -O >> $psfile07
psxy TEMP/twen.txt  -R -JL -Sc0.3     -W$thickE/$twenclr -K -O >> $psfile12
psxy TEMP/twen.txt  -R -JL -St$sizes2 -W$ths2/$twenclr   -K -O >> $psfile13
psxy TEMP/twenD.txt -R -JL -St$sizes2 -G$twenclr         -K -O >> $psfile13
psxy TEMP/twen.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# UniWien
psxy TEMP/wien.txt  -R -JL -Sc0.3     -W$thickE/$wienclr -K -O >> $psfile07
psxy TEMP/wien.txt  -R -JL -Sc0.3     -W$thickE/$wienclr -K -O >> $psfile12
psxy TEMP/wien.txt  -R -JL -St$sizes2 -W$ths2/$wienclr   -K -O >> $psfile13
psxy TEMP/wienD.txt -R -JL -St$sizes2 -G$wienclr         -K -O >> $psfile13
psxy TEMP/wien.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Montenegro Pool
psxy TEMP/mnep.txt  -R -JL -Sc0.3     -W$thickE/$mnepclr -K -O >> $psfile07
psxy TEMP/mnep.txt  -R -JL -Sc0.3     -W$thickE/$mnepclr -K -O >> $psfile12
psxy TEMP/mnep.txt  -R -JL -St$sizes2 -W$ths2/$mnepclr   -K -O >> $psfile13
psxy TEMP/mnepD.txt -R -JL -St$sizes2 -G$mnepclr         -K -O >> $psfile13
psxy TEMP/mnep.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Kosovo Pool
psxy TEMP/kosv.txt  -R -JL -Sc0.3     -W$thickE/$kosvclr -K -O >> $psfile07
psxy TEMP/kosv.txt  -R -JL -Sc0.3     -W$thickE/$kosvclr -K -O >> $psfile12
psxy TEMP/kosv.txt  -R -JL -St$sizes2 -W$ths2/$kosvclr   -K -O >> $psfile13
psxy TEMP/kosvD.txt -R -JL -St$sizes2 -G$kosvclr         -K -O >> $psfile13
psxy TEMP/kosv.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# Serbian Pool
psxy TEMP/serb.txt  -R -JL -Sc0.3     -W$thickE/$serbclr -K -O >> $psfile07
psxy TEMP/serb.txt  -R -JL -Sc0.3     -W$thickE/$serbclr -K -O >> $psfile12
psxy TEMP/serb.txt  -R -JL -St$sizes2 -W$ths2/$serbclr   -K -O >> $psfile13
psxy TEMP/serbD.txt -R -JL -St$sizes2 -G$serbclr         -K -O >> $psfile13
psxy TEMP/serb.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# NIEP Pool
psxy TEMP/niep.txt  -R -JL -Sc0.3     -W$thickE/$niepclr -K -O >> $psfile07
psxy TEMP/niep.txt  -R -JL -Sc0.3     -W$thickE/$niepclr -K -O >> $psfile12
psxy TEMP/niep.txt  -R -JL -St$sizes2 -W$ths2/$niepclr   -K -O >> $psfile13
psxy TEMP/niepD.txt -R -JL -St$sizes2 -G$niepclr         -K -O >> $psfile13
psxy TEMP/niep.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# KIT
psxy TEMP/kitp.txt  -R -JL -Sc0.3     -W$thickE/$kitpclr -K -O >> $psfile07
psxy TEMP/kitp.txt  -R -JL -Sc0.3     -W$thickE/$kitpclr -K -O >> $psfile12
psxy TEMP/kitp.txt  -R -JL -St$sizes2 -W$ths2/$kitpclr   -K -O >> $psfile13
psxy TEMP/kitpD.txt -R -JL -St$sizes2 -G$kitpclr         -K -O >> $psfile13
psxy TEMP/kitp.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13

# not assigned
psxy TEMP/none.txt  -R -JL -Sc$sizes2 -W$thps/$noneclr   -K -O >> $psfile13

# temporary seismic networks
psxy AUXI/net1Y.txt -R -JL -St$sizeps -G$clr1Y         -K -O >> $psfile16
psxy AUXI/net1Y.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/net2Y.txt -R -JL -St$sizeps -G$clr2Y         -K -O >> $psfile16
psxy AUXI/net2Y.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/net4P.txt -R -JL -St$sizeps -G$clr4P         -K -O >> $psfile16
psxy AUXI/net4P.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/net7B.txt -R -JL -St$sizeps -G$clr7B         -K -O >> $psfile16
psxy AUXI/net7B.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/net9H.txt -R -JL -St$sizeps -G$clr9H         -K -O >> $psfile16
psxy AUXI/net9H.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/netY5.txt -R -JL -St$sizeps -G$clrY5         -K -O >> $psfile16
psxy AUXI/netY5.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/netY8.txt -R -JL -St$sizeps -G$clrY8         -K -O >> $psfile16
psxy AUXI/netY8.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/netZ6.txt -R -JL -St$sizeps -G$clrZ6         -K -O >> $psfile16
psxy AUXI/netZ6.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/netXP.txt -R -JL -St$sizeps -G$clrRF         -K -O >> $psfile16
psxy AUXI/netXP.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/netRS.txt -R -JL -St$sizeps -G$clrRS         -K -O >> $psfile16
psxy AUXI/netRS.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/netXX.txt -R -JL -St$sizeps -G$clrXX         -K -O >> $psfile16
psxy AUXI/netXX.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16

# local experiments - map 01
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Vrancea
26.49 45.38 0.0 200 230
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Albania
20.1 41.47 +30.0 130 170
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Cephalonia
21.05 38.90 -50.0 140 190
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile01 # Marine
19.7 38.4 +25.0 120 240
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 02
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Vrancea
26.49 45.38 0.0 200 230
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Albania
20.1 41.47 +30.0 130 170
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Cephalonia
21.05 38.90 -50.0 140 190
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile02 # Marine
19.7 38.4 +25.0 120 240
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 06
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Vrancea
26.49 45.38 0.0 200 230
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Albania
20.1 41.47 +30.0 130 170
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Cephalonia
21.05 38.90 -50.0 140 190
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile06 # Marine
19.7 38.4 +25.0 120 240
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 03
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Vrancea
26.49 45.38 0.0 200 230
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Albania
20.1 41.47 +30.0 130 170
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Cephalonia
21.05 38.90 -50.0 140 190
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile03 # Marine
19.7 38.4 +25.0 120 240
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 09
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Vrancea
26.49 45.38 0.0 200 230
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Albania
20.1 41.47 +30.0 130 170
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Cephalonia
21.05 38.90 -50.0 140 190
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile09 # Marine
19.7 38.4 +25.0 120 240
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Slovakia
20.22 49.08 -12.0 270 80
end

# station names - labels
pstext PERM/pNOSPlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pWHITlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pWHITolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pSPOTlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pSPOTolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pFUTUolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pUNKNlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pUNKNolabel.txt         -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pUPGRlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pBB30label.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pBB30olabel.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pBB40label.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pBB40olabel.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pBB60label.txt          -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pBB60olabel.txt         -R -JL -G$labcolorW -K -O >> $psfile01
pstext TEMP/mcent-label.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext TEMP/meast-label.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext TEMP/mwest-label.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext TEMP/mnort-label.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext TEMP/mstea-label.txt         -R -JL -G$labcolorB -K -O >> $psfile01
pstext TEMP/rplabel.txt             -R -JL -G$labcolorW -K -O >> $psfile01 # labels for BB non-EIDA stations - temporary
pstext PERM/pEIDAnoBBlabel.txt      -R -JL -G$labcolorW -K -O >> $psfile11 # labels for BB non-EIDA stations - permanent
pstext PERM/pEIDAnoBBlabel.txt      -R -JL -G$labcolorW -K -O >> $psfile18 # labels for BB non-EIDA stations - permanent
pstext TEMP/tEIDAnoBBlabel.txt      -R -JL -G$labcolorW -K -O >> $psfile18 # labels for BB non-EIDA stations - temporary
pstext TEMP/notDepllabel.txt        -R -JL -G$labcolorW -K -O >> $psfile18 # labels for BB non-EIDA stations - temporary

pstext PERM/pNOSPlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pWHITlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pWHITolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pSPOTlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pSPOTolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pFUTUolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pUNKNlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pUNKNolabel.txt         -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pUPGRlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB30label.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB30olabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB40label.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB40olabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB60label.txt          -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pBB60olabel.txt         -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile04
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile04
pstext PERM/pBB30label.txt          -R -JL -G$labcolorB -K -O >> $psfile04
pstext PERM/pBB40label.txt          -R -JL -G$labcolorB -K -O >> $psfile04
pstext PERM/pBB60label.txt          -R -JL -G$labcolorW -K -O >> $psfile04
pstext TEMP/mcent-label.txt         -R -JL -G$labcolorB -K -O >> $psfile04
pstext TEMP/meast-label.txt         -R -JL -G$labcolorB -K -O >> $psfile04
pstext TEMP/mwest-label.txt         -R -JL -G$labcolorB -K -O >> $psfile04
pstext TEMP/mnort-label.txt         -R -JL -G$labcolorB -K -O >> $psfile04
pstext TEMP/mstea-label.txt         -R -JL -G$labcolorB -K -O >> $psfile04
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile05
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile05
pstext PERM/pBB30label.txt          -R -JL -G$labcolorB -K -O >> $psfile05
pstext PERM/pBB40label.txt          -R -JL -G$labcolorB -K -O >> $psfile05
pstext PERM/pBB60label.txt          -R -JL -G$labcolorW -K -O >> $psfile05
pstext TEMP/mcent-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/meast-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/mwest-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/mnort-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/mstea-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05

# plotting borders over the coverage circles
pscoast -R -Di -N1/0.2p -W0.2p -JL -K -O >> $psfile04
pscoast -R -Di -N1/0.2p -W0.2p -JL -K -O >> $psfile05
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0 -K -O >> $psfile04
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0 -K -O >> $psfile05

# map of institutions
psxy AUXI/eida-perm.txt  -R$mapbordeB -JL$mapproB -Ss0.4            -W1.5p/$eidaclr -K -O >> $psfile15
psxy AUXI/eida-perm.txt  -R           -JL         -Ss0.5            -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/eidanodes.txt  -R           -JL         -Ss0.5 -G$eidaclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/candidates.txt -R           -JL         -Ss0.4 -G$candclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/pending.txt    -R           -JL         -Ss0.4 -G$pendclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/members.txt    -R           -JL         -Ss0.4 -G$membclr -W0.6p/$blck    -K -O >> $psfile15

# --------------------------------------------------------------------- LEGENDS -------------------------------
# plotting another "map" to each file, where only the legend will be placed

# legend to map 01
pscoast -R17.6/21.5/-4.4/4.0 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile01
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile01
17.95  3.50
end
psxy -R -JM -St0.6 -G$bb40 -W$thickL/$blck -K -O << end >> $psfile01
17.95  3.00
end
psxy -R -JM -St0.6 -G$bb30 -W$thickL/$blck -K -O << end >> $psfile01
17.95  2.50
end
psxy -R -JM -St0.6 -G$pcse -W$thickL/$red  -K -O << end >> $psfile01
17.95  2.00
end
psxy -R -JM -St0.6 -G$upgr -W$thickL/$blck -K -O << end >> $psfile01
17.95  1.50
end
psxy -R -JM -St0.6 -G$spot -W$thickL/$blck -K -O << end >> $psfile01
17.95  1.00
end
psxy -R -JM -St0.6 -G$whit -W$thickL/$blck -K -O << end >> $psfile01
17.95  0.50
end
psxy -R -JM -St0.6 -G$nosp -W$thickL/$blck -K -O << end >> $psfile01
17.95  0.00
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile01
17.95 -0.50
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile01
17.95 -1.00
end
# mobile stations - colors
psxy -R -JM -St0.4 -W$thickLM/$westP -K -O << end >> $psfile01
17.95 -1.50
end
psxy -R -JM -St0.4 -W$thickLM/$centP -K -O << end >> $psfile01
17.95 -2.00
end
psxy -R -JM -St0.4 -W$thickLM/$nortP -K -O << end >> $psfile01
17.95 -2.50
end
psxy -R -JM -St0.4 -W$thickLM/$eastP -K -O << end >> $psfile01
17.95 -3.00
end
psxy -R -JM -St0.4 -W$thickLM/$steaP -K -O << end >> $psfile01
17.95 -3.50
end
psxy -R -JM -St0.4 -W$thickLM/$outs -K -O << end >> $psfile01
17.95 -4.00
end
# mobile stations - contours
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -1.50
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -2.00
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -2.50
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -3.00
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -3.50
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -4.00
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile01
18.3  3.60 8 0 0 TL permanent BB >= 60s

18.3  3.23 8 0 0 TL permanent 40s <= BB < 60s
18.3  3.00 8 0 0 TL (in fact Trillium 40s only)

18.3  2.73 8 0 0 TL permanent 30s
18.3  2.50 8 0 0 TL (mostly Guralps)

18.3  2.10 8 0 0 TL PACASE (used for AdriaArray)

18.3  1.73 8 0 0 TL permanent SP+BB < 30s +Acc
18.3  1.50 8 0 0 TL to be potentially upgraded

18.3  1.10 8 0 0 TL unequipped spots

18.3  0.73 8 0 0 TL permanent SP+BB < 30s +Acc
18.3  0.50 8 0 0 TL not negotiated for upgrade yet

18.3  0.23 8 0 0 TL permanent SP+BB < 30s +Acc
18.3  0.00 8 0 0 TL not for upgrade

18.3 -0.40 8 0 0 TL planned permanent station

18.3 -0.77 8 0 0 TL stations operational after
18.3 -1.00 8 0 0 TL May 2022 but closed now

18.3 -1.40 8 0 0 TL mobile West
18.3 -1.90 8 0 0 TL mobile Center
18.3 -2.40 8 0 0 TL mobile North
18.3 -2.90 8 0 0 TL mobile East
18.3 -3.40 8 0 0 TL mobile Southeast
18.3 -3.90 8 0 0 TL mobile other
end
# end of the legend to map 01

# legend to map 02
pscoast -R17.6/21.5/-3.4/3.0 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile02
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile02
17.95  2.50
end
psxy -R -JM -St0.6 -G$bb40 -W$thickL/$blck -K -O << end >> $psfile02
17.95  2.00
end
psxy -R -JM -St0.6 -G$bb30 -W$thickL/$blck -K -O << end >> $psfile02
17.95  1.50
end
psxy -R -JM -St0.6 -G$pcse -W$thickL/$red   -K -O << end >> $psfile02
17.95  1.00
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile02
17.95  0.50
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile02
17.95  0.00
end
# mobile stations - colors
psxy -R -JM -St0.4 -W$thickLM/$west -K -O << end >> $psfile02
17.95 -0.50
end
psxy -R -JM -St0.4 -W$thickLM/$cent -K -O << end >> $psfile02
17.95 -1.00
end
psxy -R -JM -St0.4 -W$thickLM/$nort -K -O << end >> $psfile02
17.95 -1.50
end
psxy -R -JM -St0.4 -W$thickLM/$east -K -O << end >> $psfile02
17.95 -2.00
end
psxy -R -JM -St0.4 -W$thickLM/$stea -K -O << end >> $psfile02
17.95 -2.50
end
psxy -R -JM -St0.4 -W$thickLM/$outs -K -O << end >> $psfile02
17.95 -3.00
end
# mobile stations - contours
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -0.50
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -1.00
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -1.50
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -2.00
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -2.50
end
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -3.00
end

# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile02
18.3  2.6 8 0 0 TL permanent BB >= 60s

18.3  2.23 8 0 0 TL permanent 40s <= BB < 60s
18.3  2.00 8 0 0 TL (in fact Trillium 40s only)

18.3  1.73 8 0 0 TL permanent 30s
18.3  1.50 8 0 0 TL (mostly Guralps)

18.3  1.10 8 0 0 TL PACASE (used for AdriaArray)

18.3  0.60 8 0 0 TL planned permanent station

18.3  0.23 8 0 0 TL stations operational after
18.3  0.00 8 0 0 TL May 2022 but closed now

18.3 -0.40 8 0 0 TL mobile West
18.3 -0.90 8 0 0 TL mobile Center
18.3 -1.40 8 0 0 TL mobile North
18.3 -1.90 8 0 0 TL mobile East
18.3 -2.40 8 0 0 TL mobile Southeast
18.3 -2.90 8 0 0 TL mobile other
end
# end of the legend to map 02

# legend to map 03
pscoast -R17.6/21.5/-2.4/2.0 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile03
psxy -R -JM -St0.6 -G$perm -W$thickL/$blck -K -O << end >> $psfile03
17.95  1.50
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile03
17.95  1.00
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile03
17.95  0.50
end
# mobile stations - colors
psxy -R -JM -St0.6 -G$west -W$thickL/$blck -K -O << end >> $psfile03
17.95  0.00
end
psxy -R -JM -St0.6 -G$cent -W$thickL/$blck -K -O << end >> $psfile03
17.95 -0.50
end
psxy -R -JM -St0.6 -G$nort -W$thickL/$blck -K -O << end >> $psfile03
17.95 -1.00
end
psxy -R -JM -St0.6 -G$east -W$thickL/$blck -K -O << end >> $psfile03
17.95 -1.50
end
psxy -R -JM -St0.6 -G$stea -W$thickL/$blck -K -O << end >> $psfile03
17.95 -2.00
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile03
18.3  1.60 8 0 0 TL permanent BB stations
18.3  1.10 8 0 0 TL planned permanent stations

18.3  0.73 8 0 0 TL stations operational after
18.3  0.50 8 0 0 TL May 2022 but closed now

18.3  0.10 8 0 0 TL mobile West
18.3 -0.40 8 0 0 TL mobile Center
18.3 -0.90 8 0 0 TL mobile North
18.3 -1.40 8 0 0 TL mobile East
18.3 -1.90 8 0 0 TL mobile Southeast
end
# end of the legend to map 03

# legend to map 04
pscoast -R17.6/21.0/-2.9/2.5 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile04
psxy -R -JM -Sc0.6 -G$bb60 -K -O << end >> $psfile04
17.95  2.00
end
psxy -R -JM -Sc0.6 -G$bb40 -K -O << end >> $psfile04
17.95  1.50
end
psxy -R -JM -Sc0.6 -G$bb30 -K -O << end >> $psfile04
17.95  1.00
end
psxy -R -JM -Sc0.6 -G$futu -K -O << end >> $psfile04
17.95  0.50
end
psxy -R -JM -Sc0.6 -G$blck -K -O << end >> $psfile04
17.95  0.00
end
psxy -R -JM -Sc0.6 -G$west -K -O << end >> $psfile04
17.95 -0.50
end
psxy -R -JM -Sc0.6 -G$cent -K -O << end >> $psfile04
17.95 -1.00
end
psxy -R -JM -Sc0.6 -G$nort -K -O << end >> $psfile04
17.95 -1.50
end
psxy -R -JM -Sc0.6 -G$east -K -O << end >> $psfile04
17.95 -2.00
end
psxy -R -JM -Sc0.6 -G$stea -K -O << end >> $psfile04
17.95 -2.50
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile04
18.3  2.10 8 0 0 TL permanent BB >= 60s

18.3  1.73 8 0 0 TL permanent 40s <= BB < 60s
18.3  1.50 8 0 0 TL (in fact Trillium 40s only)

18.3  1.23 8 0 0 TL permanent 30s
18.3  1.00 8 0 0 TL (mostly Guralps)

18.3  0.60 8 0 0 TL planned permanent stations

18.3  0.23 8 0 0 TL stations operational after
18.3  0.00 8 0 0 TL May 2022 but closed now

18.3 -0.40 8 0 0 TL mobile West
18.3 -0.90 8 0 0 TL mobile Center
18.3 -1.40 8 0 0 TL mobile North
18.3 -1.90 8 0 0 TL mobile East
18.3 -2.40 8 0 0 TL mobile Southeast
end
# end of the legend to map 04

# legend to map 05
pscoast -R17.6/21.0/-2.9/2.5 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile05
psxy -R -JM -Sc0.6 -G$bb60 -K -O << end >> $psfile05
17.95  2.00
end
psxy -R -JM -Sc0.6 -G$bb40 -K -O << end >> $psfile05
17.95  1.50
end
psxy -R -JM -Sc0.6 -G$bb30 -K -O << end >> $psfile05
17.95  1.00
end
psxy -R -JM -Sc0.6 -G$futu -K -O << end >> $psfile05
17.95  0.50
end
psxy -R -JM -Sc0.6 -G$blck -K -O << end >> $psfile05
17.95  0.00
end
psxy -R -JM -Sc0.6 -G$west -K -O << end >> $psfile05
17.95 -0.50
end
psxy -R -JM -Sc0.6 -G$cent -K -O << end >> $psfile05
17.95 -1.00
end
psxy -R -JM -Sc0.6 -G$nort -K -O << end >> $psfile05
17.95 -1.50
end
psxy -R -JM -Sc0.6 -G$east -K -O << end >> $psfile05
17.95 -2.00
end
psxy -R -JM -Sc0.6 -G$stea -K -O << end >> $psfile05
17.95 -2.50
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile05
18.3  2.10 8 0 0 TL permanent BB >= 60s

18.3  1.73 8 0 0 TL permanent 40s <= BB < 60s
18.3  1.50 8 0 0 TL (in fact Trillium 40s only)

18.3  1.23 8 0 0 TL permanent 30s
18.3  1.00 8 0 0 TL (mostly Guralps)

18.3  0.60 8 0 0 TL planned permanent stations

18.3  0.23 8 0 0 TL stations operational after
18.3  0.00 8 0 0 TL May 2022 but closed now

18.3 -0.40 8 0 0 TL mobile West
18.3 -0.90 8 0 0 TL mobile Center
18.3 -1.40 8 0 0 TL mobile North
18.3 -1.90 8 0 0 TL mobile East
18.3 -2.40 8 0 0 TL mobile Southeast
end
# end of the legend to map 05

# legend to map 06
pscoast -R17.6/21.5/-1.4/1.0 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile06

psxy -R -JM -St0.6 -G$perm -W$thickL/$blck -K -O << end >> $psfile06
17.95  0.50
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile06
17.95  0.00
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile06
17.95 -0.50
end
psxy -R -JM -St0.6 -G$temp -W$thickL/$blck -K -O << end >> $psfile06
17.95 -1.00
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile06
18.3  0.60 8 0 0 TL permanent BB stations

18.3  0.10 8 0 0 TL planned permanent stations

18.3 -0.27 8 0 0 TL stations operational after
18.3 -0.50 8 0 0 TL May 2022 but closed now

18.3 -0.90 8 0 0 TL mobile BB stations
end
# end of the legend to map 06

# legend to map 07
circsize='0.4'
triasize='0.5'
pscoast -R17.6/21.5/-8.8/8.3 -Dc -JM20/60/4.3c -G150/150/150 -S150/150/150 -Y+0.2 -X+24.0 -K -O >> $psfile07
# mobile stations - circles
psxy -R -JM -Sc$circsize -W$thickLC/$serbclr -K -O << end >> $psfile07 # Serbian Pool
17.95  8.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$gigeclr -K -O << end >> $psfile07 # Geoazur + GIPP
17.95  7.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$jenaclr -K -O << end >> $psfile07 # Jena
17.95  7.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$gippclr -K -O << end >> $psfile07 # GIPP
17.95  6.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$kitpclr -K -O << end >> $psfile07 # KIT
17.95  6.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$niepclr -K -O << end >> $psfile07 # NIEP Pool
17.95  5.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$kosvclr -K -O << end >> $psfile07 # Kosovo Pool
17.95  5.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$mnepclr -K -O << end >> $psfile07 # Montenegro Pool
17.95  4.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$csscclr -K -O << end >> $psfile07 # CSS
17.95  4.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$boloclr -K -O << end >> $psfile07 # Bologna
17.95  3.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$ethzclr -K -O << end >> $psfile07 # ETH
17.95  3.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$ogsiclr -K -O << end >> $psfile07 # OGS
17.95  2.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$resfclr -K -O << end >> $psfile07 # France
17.95  2.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$barcclr -K -O << end >> $psfile07 # Barcelona
17.95  1.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$wienclr -K -O << end >> $psfile07 # UniWien
17.95  1.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$municlr -K -O << end >> $psfile07 # Munich
17.95  0.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$bochclr -K -O << end >> $psfile07 # Bochum
17.95  0.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$twenclr -K -O << end >> $psfile07 # Netherlands
17.95 -0.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$epssclr -K -O << end >> $psfile07 # Hungary
17.95 -1.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$kielclr -K -O << end >> $psfile07 # Kiel
17.95 -1.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$brzgclr -K -O << end >> $psfile07 # Norway + Zagreb
17.95 -2.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$ouluclr -K -O << end >> $psfile07 # Oulu
17.95 -2.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$polaclr -K -O << end >> $psfile07 # Poland
17.95 -3.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$aarhclr -K -O << end >> $psfile07 # Denmark
17.95 -3.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$helsclr -K -O << end >> $psfile07 # Helsinki
17.95 -4.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$igczclr -K -O << end >> $psfile07 # IG CAS CZ
17.95 -4.5
end
# triangles - permanent stations
psxy -R -JM -St$triasize -G$perm -W$thickL/$blck -K -O << end >> $psfile07
17.95 -5.0
end
psxy -R -JM -St$triasize -G$futu -W$thickL/$blck -K -O << end >> $psfile07
17.95 -5.5
end
psxy -R -JM -St$triasize -G$blck -W$thickL/$blck -K -O << end >> $psfile07
17.95 -6.0
end
# triangles - mobile stations
psxy -R -JM -St$triasize -G$west -W$thickL/$blck -K -O << end >> $psfile07
17.95 -6.5
end
psxy -R -JM -St$triasize -G$cent -W$thickL/$blck -K -O << end >> $psfile07
17.95 -7.0
end
psxy -R -JM -St$triasize -G$nort -W$thickL/$blck -K -O << end >> $psfile07
17.95 -7.5
end
psxy -R -JM -St$triasize -G$east -W$thickL/$blck -K -O << end >> $psfile07
17.95 -8.0
end
psxy -R -JM -St$triasize -G$stea -W$thickL/$blck -K -O << end >> $psfile07
17.95 -8.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile07
18.3  8.1 7.5 0 0 TL Serbian Pool
18.3  7.6 7.5 0 0 TL Geoazur + GIPP
18.3  7.1 7.5 0 0 TL Uni Jena, Germany
18.3  6.6 7.5 0 0 TL GIPP, GFZ, Germany
18.3  6.1 7.5 0 0 TL Karlsruhe IT, Germany
18.3  5.6 7.5 0 0 TL NIEP Pool, Romania
18.3  5.1 7.5 0 0 TL Kosovo Pool
18.3  4.6 7.5 0 0 TL Montenegro Pool
18.3  4.1 7.5 0 0 TL Croatia Seism. Survey
18.3  3.6 7.5 0 0 TL INGV Bologna, Italy
18.3  3.1 7.5 0 0 TL ETH Zurich, Switzerland
18.3  2.6 7.5 0 0 TL OGS, Italy
18.3  2.1 7.5 0 0 TL Resif-Sismob, France
18.3  1.6 7.5 0 0 TL Barcelona, Spain
18.3  1.1 7.5 0 0 TL Uni Wien, Austria
18.3  0.6 7.5 0 0 TL Uni Munich, Germany
18.3  0.1 7.5 0 0 TL Uni Bochum, Germany
18.3 -0.4 7.5 0 0 TL Uni Twente, the Netherlands
18.3 -0.9 7.5 0 0 TL EPSS, Hungary
18.3 -1.4 7.5 0 0 TL Uni Kiel, Germany
18.3 -1.9 7.5 0 0 TL Norwegian Pool + UniZagreb
18.3 -2.4 7.5 0 0 TL Uni Oulu, Finland
18.3 -2.9 7.5 0 0 TL Unis + PAS, Poland
18.3 -3.4 7.5 0 0 TL Uni Aarhus, Denmark
18.3 -3.9 7.5 0 0 TL Uni Helsinki, Finland
18.3 -4.4 7.5 0 0 TL IG CAS Prague, CZ
18.3 -4.9 7.5 0 0 TL permanent BB stations
18.3 -5.4 7.5 0 0 TL planned permanent stations
18.3 -5.9 7.5 0 0 TL closed stations
18.3 -6.4 7.5 0 0 TL mobile West
18.3 -6.9 7.5 0 0 TL mobile Center
18.3 -7.4 7.5 0 0 TL mobile North
18.3 -7.9 7.5 0 0 TL mobile East
18.3 -8.4 7.5 0 0 TL mobile Southeast
end
# end of the legend to map 07

# legend to map 09
pscoast -R17.6/21.5/-1.4/1.5 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile09
psxy -R -JM -St0.6 -G$perm -W$thickL/$blck -K -O << end >> $psfile09
17.95  1.0
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile09
17.95  0.5
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile09
17.95  0.0
end
psxy -R -JM -St0.6 -G$temp -W$thickL/$blck -K -O << end >> $psfile09
17.95 -0.5
end
psxy -R -JM -St0.6 -G$outs -W$thickL/$blck -K -O << end >> $psfile09
17.95 -1.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile09
18.3  1.10 8 0 0 TL permanent BB stations
18.3  0.60 8 0 0 TL planned permanent stations

18.3  0.23 8 0 0 TL stations operational after
18.3  0.00 8 0 0 TL May 2022 but closed now

18.3 -0.4 8 0 0 TL mobile BB stations
18.3 -0.9 8 0 0 TL additional BB stations
end
# end of the legend to map 09

# legend to map 10
pscoast -R17.6/21.5/-2.4/2.5 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile10
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile10
17.95 2.0
end
psxy -R -JM -St0.6 -G$bb40 -W$thickL/$blck -K -O << end >> $psfile10
17.95 1.5
end
psxy -R -JM -St0.6 -G$bb30 -W$thickL/$blck -K -O << end >> $psfile10
17.95 1.0
end
psxy -R -JM -St0.6 -G$upgr -W$thickL/$blck -K -O << end >> $psfile10
17.95 0.5
end
psxy -R -JM -St0.6 -G$spot -W$thickL/$blck -K -O << end >> $psfile10
17.95 0.0
end
psxy -R -JM -St0.6 -G$whit -W$thickL/$blck -K -O << end >> $psfile10
17.95 -0.5
end
psxy -R -JM -St0.6 -G$nosp -W$thickL/$blck -K -O << end >> $psfile10
17.95 -1.0
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile10
17.95 -1.5
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile10
17.95 -2.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile10
18.3  2.10 8 0 0 TL permanent BB >= 60s

18.3  1.73 8 0 0 TL permanent 40s <= BB < 60s
18.3  1.50 8 0 0 TL (in fact Trillium 40s only)

18.3  1.23 8 0 0 TL permanent 30s
18.3  1.00 8 0 0 TL (mostly Guralps)

18.3  0.73 8 0 0 TL permanent SP+BB < 30s +Acc
18.3  0.50 8 0 0 TL to be potentially upgraded

18.3  0.10 8 0 0 TL unequipped spots for upgrade

18.3 -0.27 8 0 0 TL permanent SP+BB < 30s +Acc
18.3 -0.50 8 0 0 TL not negotiated for upgrade yet

18.3 -0.77 8 0 0 TL permanent SP+BB < 30s +Acc
18.3 -1.00 8 0 0 TL not for upgrade

18.3 -1.40 8 0 0 TL planned permanent stations

18.3 -1.77 8 0 0 TL permanent operational after
18.3 -2.00 8 0 0 TL May 2022 but closed now
end
# end of the legend to map 10

# legend to map 11
pscoast -R17.6/21.5/-0.9/0.5 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile11
psxy -R -JM -St0.6 -G$upgr -W$thickL/$blck -K -O << end >> $psfile11 # EIDA yes - green
17.95  0.0
end
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile11 # EIDA no - red
17.95 -0.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile11
18.3  0.1 8 0 0 TL BB stations in EIDA
18.3 -0.4 8 0 0 TL BB stations not in EIDA
end
# end of the legend to map 11

# legend to map 12
pscoast -R17.6/21.5/-7.8/7.3 -Dc -JM20/60/4.3c -G150/150/150 -S150/150/150 -Y+0.2 -X+24.0 -K -O >> $psfile12
# mobile stations - circles
psxy -R -JM -Sc$circsize -W$thickLC/$serbclr -K -O << end >> $psfile12 # Serbian Pool
17.95  7.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$gigeclr -K -O << end >> $psfile12 # Geoazur + GIPP
17.95  6.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$jenaclr -K -O << end >> $psfile12 # Jena
17.95  6.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$gippclr -K -O << end >> $psfile12 # GIPP
17.95  5.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$kitpclr -K -O << end >> $psfile12 # KIT
17.95  5.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$niepclr -K -O << end >> $psfile12 # NIEP Pool
17.95  4.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$kosvclr -K -O << end >> $psfile12 # Kosovo Pool
17.95  4.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$mnepclr -K -O << end >> $psfile12 # Montenegro Pool
17.95  3.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$csscclr -K -O << end >> $psfile12 # CSS
17.95  3.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$boloclr -K -O << end >> $psfile12 # Bologna
17.95  2.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$ethzclr -K -O << end >> $psfile12 # ETH
17.95  2.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$ogsiclr -K -O << end >> $psfile12 # OGS
17.95  1.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$resfclr -K -O << end >> $psfile12 # France
17.95  1.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$barcclr -K -O << end >> $psfile12 # Barcelona
17.95  0.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$wienclr -K -O << end >> $psfile12 # UniWien
17.95  0.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$municlr -K -O << end >> $psfile12 # Munich
17.95 -0.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$bochclr -K -O << end >> $psfile12 # Bochum
17.95 -1.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$twenclr -K -O << end >> $psfile12 # Netherlands
17.95 -1.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$epssclr -K -O << end >> $psfile12 # Hungary
17.95 -2.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$kielclr -K -O << end >> $psfile12 # Kiel
17.95 -2.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$brzgclr -K -O << end >> $psfile12 # Norway + Zagreb
17.95 -3.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$ouluclr -K -O << end >> $psfile12 # Oulu
17.95 -3.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$polaclr -K -O << end >> $psfile12 # Poland
17.95 -4.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$aarhclr -K -O << end >> $psfile12 # Denmark
17.95 -4.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$helsclr -K -O << end >> $psfile12 # Helsinki
17.95 -5.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$igczclr -K -O << end >> $psfile12 # IG CAS CZ
17.95 -5.5
end
# triangles - permanent stations
psxy -R -JM -St$triasize -G$perm -W$thickL/$blck -K -O << end >> $psfile12
17.95 -6.0
end
psxy -R -JM -St$triasize -G$futu -W$thickL/$blck -K -O << end >> $psfile12
17.95 -6.5
end
psxy -R -JM -St$triasize -G$blck -W$thickL/$blck -K -O << end >> $psfile12
17.95 -7.0
end
# triangles - mobile stations
psxy -R -JM -St$triasize -G$temp -W$thickL/$blck -K -O << end >> $psfile12
17.95 -7.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile12
18.3  7.1 7.5 0 0 TL Serbian Pool
18.3  6.6 7.5 0 0 TL Geoazur + GIPP
18.3  6.1 7.5 0 0 TL Uni Jena, Germany
18.3  5.6 7.5 0 0 TL GIPP, GFZ, Germany
18.3  5.1 7.5 0 0 TL Karlsruhe IT, Germany
18.3  4.6 7.5 0 0 TL NIEP Pool, Romania
18.3  4.1 7.5 0 0 TL Kosovo Pool
18.3  3.6 7.5 0 0 TL Montenegro Pool
18.3  3.1 7.5 0 0 TL Croatia Seism. Survey
18.3  2.6 7.5 0 0 TL INGV Bologna, Italy
18.3  2.1 7.5 0 0 TL ETH Zurich, Switzerland
18.3  1.6 7.5 0 0 TL OGS, Italy
18.3  1.1 7.5 0 0 TL Resif-Sismob, France
18.3  0.6 7.5 0 0 TL Barcelona, Spain
18.3  0.1 7.5 0 0 TL Uni Wien, Austria
18.3 -0.4 7.5 0 0 TL Uni Munich, Germany
18.3 -0.9 7.5 0 0 TL Uni Bochum, Germany
18.3 -1.4 7.5 0 0 TL Uni Twente, the Netherlands
18.3 -1.9 7.5 0 0 TL EPSS, Hungary
18.3 -2.4 7.5 0 0 TL Uni Kiel, Germany
18.3 -2.9 7.5 0 0 TL Norwegian Pool + UniZagreb
18.3 -3.4 7.5 0 0 TL Uni Oulu, Finland
18.3 -3.9 7.5 0 0 TL Unis + PAS, Poland
18.3 -4.4 7.5 0 0 TL Uni Aarhus, Denmark
18.3 -4.9 7.5 0 0 TL Uni Helsinki, Finland
18.3 -5.4 7.5 0 0 TL IG CAS Prague, CZ
18.3 -5.9 7.5 0 0 TL permanent BB stations
18.3 -6.4 7.5 0 0 TL planned permanent stations
18.3 -6.9 7.5 0 0 TL closed stations
18.3 -7.4 7.5 0 0 TL mobile BB stations
end
# end of the legend to map 12

# legend to map 13
pscoast -R17.6/21.5/-8.3/8.4 -Dc -JM20/60/4.3c -G150/150/150 -S150/150/150 -Y+0.2 -X+24.0 -K -O >> $psfile13
psxy -R -JM -St$triasize -G$serbclr -W$thickL/$blck -K -O << end >> $psfile13 # Serbian Pool
17.95  8.00
end
psxy -R -JM -St$triasize -G$gigeclr -W$thickL/$blck -K -O << end >> $psfile13 # Geoazur
17.95  7.50
end
psxy -R -JM -Sc0.16 -G$gippclr                      -K -O << end >> $psfile13 # Geoazur + GIPP
17.95  7.50
end
psxy -R -JM -St$triasize -G$jenaclr -W$thickL/$blck -K -O << end >> $psfile13 # Jena
17.95  7.00
end
psxy -R -JM -St$triasize -G$gippclr -W$thickL/$blck -K -O << end >> $psfile13 # GIPP
17.95  6.50
end
psxy -R -JM -St$triasize -G$gippclr -W$thickL/$blck -K -O << end >> $psfile13 # GIPP + IRSM
17.95  6.00
end
psxy -R -JM -Sc0.16 -G$irsmclr                      -K -O << end >> $psfile13 # GIPP + IRSM
17.95  6.00
end
psxy -R -JM -St$triasize -G$gippclr -W$thickL/$blck -K -O << end >> $psfile13 # GIPP + CarP
17.95  5.50
end
psxy -R -JM -Sc0.16 -G$jenaclr                      -K -O << end >> $psfile13 # GIPP + CarP
17.95  5.50
end
psxy -R -JM -St$triasize -G$kitpclr -W$thickL/$blck -K -O << end >> $psfile13 # KIT
17.95  5.00
end
psxy -R -JM -St$triasize -G$niepclr -W$thickL/$blck -K -O << end >> $psfile13 # NIEP Pool
17.95  4.50
end
psxy -R -JM -St$triasize -G$kosvclr -W$thickL/$blck -K -O << end >> $psfile13 # Kosovo Pool
17.95  4.00
end
psxy -R -JM -St$triasize -G$mnepclr -W$thickL/$blck -K -O << end >> $psfile13 # Montenegro Pool
17.95  3.50
end
psxy -R -JM -St$triasize -G$csscclr -W$thickL/$blck -K -O << end >> $psfile13 # CSS
17.95  3.00
end
psxy -R -JM -St$triasize -G$boloclr -W$thickL/$blck -K -O << end >> $psfile13 # Bologna
17.95  2.50
end
psxy -R -JM -St$triasize -G$ethzclr -W$thickL/$blck -K -O << end >> $psfile13 # ETH
17.95  2.00
end
psxy -R -JM -St$triasize -G$ogsiclr -W$thickL/$blck -K -O << end >> $psfile13 # OGS
17.95  1.50
end
psxy -R -JM -St$triasize -G$resfclr -W$thickL/$blck -K -O << end >> $psfile13 # France
17.95  1.00
end
psxy -R -JM -St$triasize -G$barcclr -W$thickL/$blck -K -O << end >> $psfile13 # Barcelona
17.95  0.50
end
psxy -R -JM -St$triasize -G$wienclr -W$thickL/$blck -K -O << end >> $psfile13 # UniWien
17.95  0.00
end
psxy -R -JM -St$triasize -G$municlr -W$thickL/$blck -K -O << end >> $psfile13 # Munich
17.95 -0.50
end
psxy -R -JM -St$triasize -G$bochclr -W$thickL/$blck -K -O << end >> $psfile13 # Bochum
17.95 -1.00
end
psxy -R -JM -St$triasize -G$bochclr -W$thickL/$blck -K -O << end >> $psfile13 # Bochum + Frankfurt
17.95 -1.50
end
psxy -R -JM -Sc0.16 -G$frnkclr                      -K -O << end >> $psfile13 # Bochum + Frankfurt
17.95 -1.50
end
psxy -R -JM -St$triasize -G$twenclr -W$thickL/$blck -K -O << end >> $psfile13 # Netherlands
17.95 -2.00
end
psxy -R -JM -St$triasize -G$epssclr -W$thickL/$blck -K -O << end >> $psfile13 # Hungary
17.95 -2.50
end
psxy -R -JM -St$triasize -G$kielclr -W$thickL/$blck -K -O << end >> $psfile13 # Kiel
17.95 -3.00
end
psxy -R -JM -St$triasize -G$brzgclr -W$thickL/$blck -K -O << end >> $psfile13 # Norway + Zagreb
17.95 -3.50
end
psxy -R -JM -St$triasize -G$ouluclr -W$thickL/$blck -K -O << end >> $psfile13 # Oulu
17.95 -4.00
end
psxy -R -JM -St$triasize -G$ouluclr -W$thickL/$blck -K -O << end >> $psfile13 # Oulu+UniWien
17.95 -4.50
end
psxy -R -JM -Sc0.16 -G$wienclr                      -K -O << end >> $psfile13 # Oulu+UniWien
17.95 -4.50
end
psxy -R -JM -St$triasize -G$polaclr -W$thickL/$blck -K -O << end >> $psfile13 # Poland
17.95 -5.00
end
psxy -R -JM -St$triasize -G$aarhclr -W$thickL/$blck -K -O << end >> $psfile13 # Denmark
17.95 -5.50
end
psxy -R -JM -St$triasize -G$helsclr -W$thickL/$blck -K -O << end >> $psfile13 # Helsinki
17.95 -6.00
end
psxy -R -JM -St$triasize -G$helsclr -W$thickL/$blck -K -O << end >> $psfile13 # Helsinki+IRSM
17.95 -6.50
end
psxy -R -JM -Sc0.16 -G$irsmclr                      -K -O << end >> $psfile13 # Helsinki+IRSM
17.95 -6.50
end
psxy -R -JM -St$triasize -G$igczclr -W$thickL/$blck -K -O << end >> $psfile13 # IG CAS CZ
17.95 -7.00
end
psxy -R -JM -St$triasize -G$grey    -W$thickL/$blck -K -O << end >> $psfile13
17.95 -7.50
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile13
18.3  8.10 7.5 0 0 TL Serbian Pool
18.3  7.60 7.5 0 0 TL Geoazur + GIPP
18.3  7.10 7.5 0 0 TL Uni Jena, Germany
18.3  6.60 7.5 0 0 TL GIPP, GFZ, Germany
18.3  6.10 7.5 0 0 TL GIPP + IRSM
18.3  5.60 7.5 0 0 TL GIPP + Carpathian Project
18.3  5.10 7.5 0 0 TL Karlsruhe IT, Germany
18.3  4.60 7.5 0 0 TL NIEP Pool, Romania
18.3  4.10 7.5 0 0 TL Kosovo Pool
18.3  3.60 7.5 0 0 TL Montenegro Pool
18.3  3.10 7.5 0 0 TL Croatia Seism. Survey
18.3  2.60 7.5 0 0 TL INGV Bologna, Italy
18.3  2.10 7.5 0 0 TL ETH Zurich, Switzerland
18.3  1.60 7.5 0 0 TL OGS, Italy
18.3  1.10 7.5 0 0 TL Resif-Sismob, France
18.3  0.60 7.5 0 0 TL Barcelona, Spain
18.3  0.10 7.5 0 0 TL Uni Wien, Austria
18.3 -0.40 7.5 0 0 TL Uni Munich, Germany
18.3 -0.90 7.5 0 0 TL Uni Bochum, Germany
18.3 -1.40 7.5 0 0 TL Uni Bochum + Uni Frankfurt
18.3 -1.90 7.5 0 0 TL Uni Twente, the Netherlands
18.3 -2.40 7.5 0 0 TL EPSS, Hungary
18.3 -2.90 7.5 0 0 TL Uni Kiel, Germany
18.3 -3.40 7.5 0 0 TL Norwegian Pool + UniZagreb
18.3 -3.90 7.5 0 0 TL Uni Oulu, Finland
18.3 -4.40 7.5 0 0 TL Uni Oulu + Uni Wien
18.3 -4.90 7.5 0 0 TL Unis + PAS, Poland
18.3 -5.40 7.5 0 0 TL Uni Aarhus, Denmark
18.3 -5.90 7.5 0 0 TL Uni Helsinki, Finland
18.3 -6.40 7.5 0 0 TL Uni Helsinki + IRSM Prague
18.3 -6.90 7.5 0 0 TL IG CAS Prague, CZ
18.3 -7.40 7.5 0 0 TL permanent BB stations
18.3 -7.70 7.5 0 0 TL full triangles: operating
18.3 -8.00 7.5 0 0 TL empty triangles: planned
end
# end of the legend to map 13

# legend to map 14 - AA+AdA+PACASE
pscoast -R17.6/21.5/-1.4/0.9 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile14
psxy -R -JM -St0.6 -G$perm  -W$thickL/$blck -K -O << end >> $psfile14
17.95 0.5
end
psxy -R -JM -St0.6 -G$futu  -W$thickL/$blck -K -O << end >> $psfile14
17.95 0.0
end
psxy -R -JM -St0.6 -G$temp  -W$thickL/$blck -K -O << end >> $psfile14
17.95 -0.5
end
psxy -R -JM -St0.6 -G$outsA -W$thickL/$blck -K -O << end >> $psfile14
17.95 -1.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile14
18.3  0.73 8 0 0 TL permanent BB stations
18.3  0.50 8 0 0 TL in the AdriaArray region

18.3  0.10 8 0 0 TL planned permanent stations

18.3 -0.27 8 0 0 TL temporary stations: AlpArray
18.3 -0.50 8 0 0 TL PACASE and AdriaArray

18.3 -0.90 8 0 0 TL additional BB stations
end
# end of the legend to map 14

# legend to map 15 - AdA members
pscoast -R17.6/21.5/-1.9/1.4 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile15
psxy -R -JM -Ss0.6 -G$membclr -W$thickL/$blck -K -O << end >> $psfile15
17.95 1.0
end
psxy -R -JM -Ss0.6 -G$pendclr -W$thickL/$blck -K -O << end >> $psfile15
17.95 0.5
end
psxy -R -JM -Ss0.6 -G$candclr -W$thickL/$blck -K -O << end >> $psfile15
17.95 0.0
end
psxy -R -JM -Ss0.6 -G$eidaclr -W$thickL/$blck -K -O << end >> $psfile15
17.95 -0.5
end
psxy -R -JM -Ss0.5 -W2.0p/$eidaclr -K -O << end >> $psfile15
17.95 -1.0
end
psxy -R -JM -Ss0.6 -W$thickL/$blck -K -O << end >> $psfile15
17.95 -1.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile15
18.3  1.10 8 0 0 TL AdriaArray members
18.3  0.60 8 0 0 TL membership pending
18.3  0.10 8 0 0 TL candidates
18.3 -0.40 8 0 0 TL EIDA nodes for temp. stations
18.3 -0.90 8 0 0 TL EIDA nodes for perm. stations
18.3 -1.35 8 0 0 TL locations of all branches of the
18.3 -1.63 8 0 0 TL member institutions are shown
end
# end of the legend to map 15

# legend to map 16
pscoast -R17.6/21.5/-2.9/2.9 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile16
psxy -R -JM -St0.6 -G$clr1Y -W$thickL/$blck -K -O << end >> $psfile16
17.95  2.5
end
psxy -R -JM -St0.6 -G$clr2Y -W$thickL/$blck -K -O << end >> $psfile16
17.95  2.0
end
psxy -R -JM -St0.6 -G$clr4P -W$thickL/$blck -K -O << end >> $psfile16
17.95  1.5
end
psxy -R -JM -St0.6 -G$clr7B -W$thickL/$blck -K -O << end >> $psfile16
17.95  1.0
end
psxy -R -JM -St0.6 -G$clr9H -W$thickL/$blck -K -O << end >> $psfile16
17.95  0.5
end
psxy -R -JM -St0.6 -G$clrY5 -W$thickL/$blck -K -O << end >> $psfile16
17.95  0.0
end
psxy -R -JM -St0.6 -G$clrY8 -W$thickL/$blck -K -O << end >> $psfile16
17.95 -0.5
end
psxy -R -JM -St0.6 -G$clrZ6 -W$thickL/$blck -K -O << end >> $psfile16
17.95 -1.0
end
psxy -R -JM -St0.6 -G$clrRF -W$thickL/$blck -K -O << end >> $psfile16
17.95 -1.5
end
psxy -R -JM -St0.6 -G$clrRS -W$thickL/$blck -K -O << end >> $psfile16
17.95 -2.0
end
psxy -R -JM -St0.6 -G$clrXX -W$thickL/$blck -K -O << end >> $psfile16
17.95 -2.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile16
18.3  2.6 8 0 0 TL 1Y (NOA)
18.3  2.1 8 0 0 TL 2Y (INGV)
18.3  1.6 8 0 0 TL 4P (INGV)
18.3  1.1 8 0 0 TL 7B (ODC)
18.3  0.6 8 0 0 TL 9H (UIB-NORSAR)
18.3  0.1 8 0 0 TL Y5 (ETHZ)
18.3 -0.4 8 0 0 TL Y8 (NIEP)
18.3 -0.9 8 0 0 TL Z6 (LMU)
18.3 -1.4 8 0 0 TL XP (RESIF)
18.3 -1.9 8 0 0 TL ?? (GFZ)
18.3 -2.4 8 0 0 TL other / unassigned
end
# end of the legend to map 16

# legend to map 17
pscoast -R17.6/21.5/-1.9/1.4 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile17
psxy -R -JM -St0.6 -G$bb240 -W$thickL/$blck -K -O << end >> $psfile17
17.95  1.0
end
psxy -R -JM -St0.6 -G$bb120 -W$thickL/$blck -K -O << end >> $psfile17
17.95  0.5
end
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile17
17.95  0.0
end
psxy -R -JM -St0.6 -G$bb40 -W$thickL/$blck -K -O << end >> $psfile17
17.95 -0.5
end
psxy -R -JM -St0.6 -G$bb30 -W$thickL/$blck -K -O << end >> $psfile17
17.95 -1.0
end
psxy -R -JM -St0.6 -G$grey -W$thickL/$blck -K -O << end >> $psfile17
17.95 -1.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile17
18.3  1.1 8 0 0 TL 240s =< period

18.3  0.6 8 0 0 TL 120s =< period < 240s

18.3  0.1 8 0 0 TL  60s =< period < 120s

18.3 -0.27 8 0 0 TL  40s =< period <  60s
18.3 -0.50 8 0 0 TL (in fact Trillium 40s only)

18.3 -0.77 8 0 0 TL  30s =  period
18.3 -1.0 8 0 0 TL  (mostly Guralps)

18.3 -1.4 8 0 0 TL not deployed yet
end
# end of the legend to map 17

# legend to map 18
pscoast -R17.6/21.5/-0.9/0.9 -Dc -JM20/60/4.95c -G150/150/150 -S150/150/150 -Y+5.2 -X+23.1 -K -O >> $psfile18
psxy -R -JM -St0.6 -G$upgr -W$thickL/$blck -K -O << end >> $psfile18 # EIDA yes - green
17.95 0.5
end
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile18 # EIDA no - red
17.95 0.0
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile18 # not deployed
17.95 -0.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile18
18.3  0.60 8 0 0 TL BB stations in EIDA
18.3  0.23 8 0 0 TL BB stations not in EIDA
18.8  0.00 8 0 0 TL with station names
18.3 -0.40 8 0 0 TL not deployed yet
end
# end of the legend to map 18

# date stamp
datum=$(date +%d" "%B" "%Y)
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile01
pstext -R -JM -G0/0/0 -K -O << end >> $psfile01
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile02
pstext -R -JM -G0/0/0 -K -O << end >> $psfile02
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile03
pstext -R -JM -G0/0/0 -K -O << end >> $psfile03
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile04
pstext -R -JM -G0/0/0 -K -O << end >> $psfile04
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile05
pstext -R -JM -G0/0/0 -K -O << end >> $psfile05
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile06
pstext -R -JM -G0/0/0 -K -O << end >> $psfile06
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-0.8 -X-2.2 -K -O >> $psfile07
pstext -R -JM -G0/0/0 -K -O << end >> $psfile07
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile09
pstext -R -JM -G0/0/0 -K -O << end >> $psfile09
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile10
pstext -R -JM -G0/0/0 -K -O << end >> $psfile10
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile11
pstext -R -JM -G0/0/0 -K -O << end >> $psfile11
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-0.8 -X-2.2 -K -O >> $psfile12
pstext -R -JM -G0/0/0 -K -O << end >> $psfile12
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-0.8 -X-2.2 -K -O >> $psfile13
pstext -R -JM -G0/0/0 -K -O << end >> $psfile13
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile14
pstext -R -JM -G0/0/0 -K -O << end >> $psfile14
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile15
pstext -R -JM -G0/0/0 -K -O << end >> $psfile15
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile16
pstext -R -JM -G0/0/0 -K -O << end >> $psfile16
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile17
pstext -R -JM -G0/0/0 -K -O << end >> $psfile17
20.0 47.70 10 0 0 TL $datum
end
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile18
pstext -R -JM -G0/0/0 -K -O << end >> $psfile18
20.0 47.70 10 0 0 TL $datum
end
# end of the date stamp

# one more map to plot the legend with the numbers of how many stations are deployed / planned to map 13
pscoast -R18.3/22.3/41.0/41.5 -Dc -JM20/60/1.0c -G255/255/255 -S255/255/255 -Y+15.69 -X-8.5 -K -O >> $psfile13
pstext AUXI/numofdep.txt -R -JL -G$textcolor -K -O >> $psfile13

# the last command just to close the ps files
psxy -R -JL << end -O >> $psfile01
0.0 0.0
end
psxy -R -JL << end -O >> $psfile02
0.0 0.0
end
psxy -R -JL << end -O >> $psfile03
0.0 0.0
end
psxy -R -JL << end -O >> $psfile04
0.0 0.0
end
psxy -R -JL << end -O >> $psfile05
0.0 0.0
end
psxy -R -JL << end -O >> $psfile06
0.0 0.0
end
psxy -R -JL << end -O >> $psfile07
0.0 0.0
end
psxy -R -JL << end -O >> $psfile09
0.0 0.0
end
psxy -R -JL << end -O >> $psfile10
0.0 0.0
end
psxy -R -JL << end -O >> $psfile11
0.0 0.0
end
psxy -R -JL << end -O >> $psfile12
0.0 0.0
end
psxy -R -JL << end -O >> $psfile13
0.0 0.0
end
psxy -R -JL << end -O >> $psfile14
0.0 0.0
end
psxy -R -JL << end -O >> $psfile15
0.0 0.0
end
psxy -R -JL << end -O >> $psfile16
0.0 0.0
end
psxy -R -JL << end -O >> $psfile17
0.0 0.0
end
psxy -R -JL << end -O >> $psfile18
0.0 0.0
end

# saving pdf and png files
gs -o MAPS/01AdriaTotal.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile01
gs -o MAPS/02AdriaBBonl.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile02
gs -o MAPS/03AdriaBBsub.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile03
gs -o MAPS/04AdriaCrc30.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile04
gs -o MAPS/05AdriaCrc40.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile05
gs -o MAPS/06AdriaBBovr.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile06
gs -o MAPS/07AdriaMobil.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile07
gs -o MAPS/09AdriaCOST.pdf  -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile09
gs -o MAPS/10AdriaTotPR.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile10
gs -o MAPS/11AdriaEIDA.pdf  -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile11
gs -o MAPS/12AdriaMobRG.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile12
gs -o MAPS/13AdriaDploy.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile13
gs -o MAPS/14AA+AdA+PCS.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile14
gs -o MAPS/15AdAmembers.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile15
gs -o MAPS/16AdAnetwork.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile16
gs -o MAPS/17AdAcorners.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile17
gs -o MAPS/18AdAEIDAall.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile18
gs -o MAPS/01AdriaTotal.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile01
gs -o MAPS/02AdriaBBonl.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile02
gs -o MAPS/03AdriaBBsub.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile03
gs -o MAPS/04AdriaCrc30.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile04
gs -o MAPS/05AdriaCrc40.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile05
gs -o MAPS/06AdriaBBovr.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile06
gs -o MAPS/07AdriaMobil.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile07
gs -o MAPS/09AdriaCOST.png  -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile09
gs -o MAPS/10AdriaTotPR.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile10
gs -o MAPS/11AdriaEIDA.png  -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile11
gs -o MAPS/12AdriaMobRG.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile12
gs -o MAPS/13AdriaDploy.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile13
gs -o MAPS/14AA+AdA+PCS.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile14
gs -o MAPS/15AdAmembers.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile15
gs -o MAPS/16AdAnetwork.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile16
gs -o MAPS/17AdAcorners.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile17
gs -o MAPS/18AdAEIDAall.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile18