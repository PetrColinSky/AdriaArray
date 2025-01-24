#!/bin/bash

gmtset LABEL_FONT Helvetica LABEL_FONT_SIZE 10
gmtset ANOT_FONT Helvetica ANOT_FONT_SIZE 10
gmtset ANNOT_OFFSET_PRIMARY	0.15c
gmtset HEADER_FONT Helvetica HEADER_FONT_SIZE 18 HEADER_OFFSET -0.2c
gmtset BASEMAP_TYPE fancy
gmtset FRAME_PEN 0.4p
gmtset FRAME_WIDTH 0.1c # black and white map frame
gmtset TICK_LENGTH 0.1c
gmtset DOTS_PR_INCH 1500
gmtset PAPER_MEDIA a4

psfile01=MAPS/01AdriaTotal.ps
psfile02=MAPS/02AdriaBBonl.ps
psfile03=MAPS/03AdriaBBsub.ps
psfile04=MAPS/04AdriaCrc30.ps
psfile05=MAPS/05AdriaCrc40.ps
psfile06=MAPS/06AdriaBBovr.ps
psfile07=MAPS/07AdriaMobil.ps
psfile08=MAPS/08AdriaGNSS.ps
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

# figures for the paper
psfilep01=PAPER/p01AdAtectono.ps
psfilep02=PAPER/p02AA+AdA+PCS.ps
psfilep03=PAPER/p03AdAcolorTP.ps
psfilep04=PAPER/p04AdriaDploy.ps
psfilep05=PAPER/p05AdAcoverP.ps
psfilep06=PAPER/p06AdAcoverPT.ps
psfilep07=PAPER/p07AdAcomplet.ps
psfilep08=PAPER/p08AdAvirtual.ps
psfilep09=PAPER/p09AdAcorners.ps
psfilep10=PAPER/p10AdAnetwork.ps
psfilep11=PAPER/p11AdAmembers.ps
psfilep12=PAPER/p12AdAhistory.ps
psfilep13=PAPER/p13EFEHRhazar.ps
psfilep14=PAPER/p14AdAcovTWO.ps

diam10='20'
diam20='40'
diam30='60'
diam40='80'

mapborder='-01.0/+33.0/34.0/51.5'  # for station maps
mapbordeB='-03.0/+35.0/34.0/66.5'  # for AdAmembers - bigger map showing the institutions
mapproj='16.0/90/38/48/23.0c'      # for station maps
mapproB='16.0/90/38/58/17.3c'      # for AdAmembers - bigger map showing the institutions
mapnet='a120mf120m/a60mf60m'       # for station maps
mapneB='WEnSa120mf120m/a120mf120m' # for AdAmembers - bigger map showing the institutions
sizemb='0.2'              # size of temporary stations
sizeps='0.3'              # size of permanent stations
sizepsA='0.25'            # size of permanent stations for the map 14: AA+AdA+PCS
sizes2='0.25'             # size of empty triangles in map 13
sizeot='0.2'              # size of stations OUT of the region
sizetp='0.15'             # size of stations for colored topo map
sizeC='0.15'              # size of GNSS stations inside of the region
sizeCo='0.11'             # size of GNSS stations outside of the region
thmb='1.2p'               # thickness of triangle contour for temporary stations
thps='0.3p'               # thickness of triangle contour for permanent stations
thot='0.5p'               # thickness of empty triangles for stations outside of the region
ths2='1.0p'               # thickness of empty triangles for map 13 - planned stations (not yet deployed)
thickL='1.3p'             # thickness of triangles contour in the legend
thickLp='0.7p'            # thickness of triangles contour in the legend for paper
thickLM='3.0p'            # thickness of empty triangles in the legend for temporary stations
thickLC='2.0p'            # thickness of empty circles in the legend for mobile pools
thickE='1.0p'             # thickness of empty circles in the 07 and 12 maps - mobile pools
thickX='1.0p'             # thickness of elipses for local experiments
circsize='0.4'            # size of circles in the legend
triasize='0.5'            # size of triangles in the legend
szexp='0.15'              # size of triangles for the complementary experiments
olin='255/255/000'        # outline of the AdA region
bb240='135/000/135'       # BB => 240s - purple
bb120='166/016/076'       # BB => 120s - dark red
bb60='255/000/000'        # BB =>  60s - red
bb40='255/174/000'        # BB =   40s - orange
bb30='255/255/000'        # BB =   30s - yellow
ci10='090/000/090'        # circles of coverage - purple
ci20='220/016/076'        # circles of coverage - dark red
ci30='247/140/010'        # circles of coverage - orange
ci40='255/255/000'        # circles of coverage - yellow
pcse='000/000/255'        # PACASE stations - blue
upgr='000/255/000'        # permanent short period - green
unkn='000/000/000'        # sensor unknown - black
spot='000/255/255'        # possible spot - cyan
futu='000/150/000'        # future permanent station - dark green
grey='150/150/150'        # permanent stations for map 13 and not yet deployed temporary stations for maps 17 and 18 - grey
grAA='100/100/100'
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
topo='000/000/000'        # stations in colored topography map
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
resfclr='181/201/047'     # Resif-Sismob
ogsiclr='166/016/076'     # OGS Italy

ethzclr='250/080/120'     # ETH Zurich
gigeclr='255/000/000'     # Geoazur + GIPP

boloclr='070/255/190'     # INGV Bologna
csscclr='070/070/070'     # Croatian Seismological Survey
mnepclr='135/162/235'     # Montenegro Pool
kosvclr='229/158/223'     # Kosovo Pool
niepclr='000/080/000'     # NIEP Pool
kitpclr='095/040/000'     # KIT
gippclr='210/110/000'     # GIPP
jenaclr='100/100/000'     # Uni Jena
frnkclr='200/160/000'     # Uni Frankfurt
noneclr='255/255/255'     # not assigned
clr1Y='000/122/255'       # 1Y  ----------------- temporary networks --------------------
clr2Y='135/000/135'       # 2Y
clr4P='000/150/000'       # 4P
clr7B='255/000/000'       # 7B
clr9H='000/000/255'       # 9H
clrY5='255/000/255'       # Y5
clrY8='070/255/190'       # Y8
clrZ6='172/085/000'       # Z6
clrRF='255/255/000'       # RF
clrXX='255/255/255'       # XX - using permanent code
eidaclr='255/000/255'     # colors of squares in map 15 showing the institutions
membclr='000/255/000'     # members
pendclr='240/240/000'     # membership pending
candclr='000/150/255'     # candidates for membership
graylg='200/200/200'      # background for legends
thrst='150/000/000'       # tectonic faults - thrusts
slips='020/020/255'       # tectonic faults - strike slips
exten='150/000/150'       # tectonic faults - extensional faults

# basic map and title
pscoast -R$mapborder -Di -JL$mapproj -B$mapnet/:."AdriaArray - all stations":                   -X+1.3 -Y+1.2  -W0.1p -K > $psfile01
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all BB stations":                -X+1.3 -Y+1.2  -W0.1p -K > $psfile02
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB stations in subgroups":       -X+1.3 -Y+1.2  -W0.1p -K > $psfile03
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - coverage, R = 30 km":            -X+1.3 -Y+1.2  -W0.1p -K > $psfile04
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - coverage, R = 40 km":            -X+1.3 -Y+1.2  -W0.1p -K > $psfile05
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all broadband stations":         -X+1.3 -Y+1.2  -W0.1p -K > $psfile06
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB in subgroups + mobile pools": -X+1.3 -Y+1.2  -W0.1p -K > $psfile07
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - GNSS stations":                  -X+1.3 -Y+1.2  -W0.1p -K > $psfile08
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all broadband stations":         -X+1.3 -Y+1.2  -W0.1p -K > $psfile09
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all permanent stations":         -X+1.3 -Y+1.2  -W0.1p -K > $psfile10
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - permanent BB stations in EIDA":  -X+1.3 -Y+1.2  -W0.1p -K > $psfile11
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB + mobile pools":              -X+1.3 -Y+1.2  -W0.1p -K > $psfile12
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdA - deployed temp. stations                              ": -X+1.3 -Y+1.2 -W0.1p -K > $psfile13
pscoast -R           -Di -JL$mapproj -B$mapnet/:."passive seismic experiments 2015 - 2025":     -X+1.3 -Y+1.2  -W0.1p -K > $psfile14
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - temporary networks":             -X+1.3 -Y+1.2  -W0.1p -K > $psfile16
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - BB stations by corner period":   -X+1.3 -Y+1.2  -W0.1p -K > $psfile17
pscoast -R           -Di -JL$mapproj -B$mapnet/:."AdriaArray - all BB stations in EIDA":        -X+1.3 -Y+1.2  -W0.1p -K > $psfile18
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep01
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep02
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep03
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep04
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep05
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep06
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep07
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep08
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep09
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep10
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep12
pscoast -R           -Di -JL$mapproj -B$mapnet/:."":                                            -X+0.8 -Y+5.4  -W0.1p -K > $psfilep13
pscoast -R$mapbordeB -Di -JL$mapproB -B$mapneB/:."AdriaArray institutions":                     -X+1.3 -Y+1.2  -W0.1p -K > $psfile15
pscoast -R           -Di -JL$mapproB -B$mapneB/:."":                                            -X+0.8 -Y+2.52 -W0.1p -K > $psfilep11

# topography taken from https://www.ngdc.noaa.gov/mgg/global/relief/ETOPO1/data/bedrock/grid_registered/netcdf/
#makecpt -CAUXI/twoshades -T-4000/+4000/1 -Z -V > AUXI/bw.cpt
#makecpt -CAUXI/colortopo -T-5100/+5100/1 -Z -V > AUXI/cl.cpt
#grdgradient AUXI/AdAtopo.grd -A135 -Ne0.3 -GAUXI/shadow.grd
grdimage AUXI/AdAtopo.grd -R$mapborder -JL$mapproj -K -O -CAUXI/bw.cpt >> $psfile01
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile02
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile03
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile04
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile05
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile06
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile07
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile08
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile09
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile10
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile11
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile12
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile13
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile14
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile16
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile17
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfile18
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep02
grdimage AUXI/AdAtopo.grd -R -JL -IAUXI/shadow.grd -K -O -CAUXI/cl.cpt >> $psfilep03 # shaded colored topography
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep04
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep05
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep06
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep07
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep08
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep09
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep10
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep12
grdimage AUXI/AdAtopo.grd -R -JL -IAUXI/shadow.grd -K -O -CAUXI/bw.cpt >> $psfilep13 # shaded colored topography
grdimage AUXI/AdAtopo.grd -R$mapbordeB -JL$mapproB -K -O -CAUXI/bw.cpt >> $psfile15
grdimage AUXI/AdAtopo.grd -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep11

# to plot borders over the topography
pscoast -R$mapborder -Di -N1/0.2p -W0.2p -JL$mapproj -K -O >> $psfile01
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile02
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile03
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile06
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile07
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile08
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile09
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile10
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile11
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile12
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile13
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile14
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile16
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile17
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfile18
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep02
pscoast -R           -Di -N1/0.2p -W0.2p -JL -I1-I2/0.5p/50/50/255 -I2/0.5p/50/50/255 -K -O >> $psfilep03 # drawing rivers
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep04
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep07
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep08
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep09
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep10
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep12
pscoast -R$mapbordeB -Di -N1/0.2p -W0.2p -JL$mapproB -K -O >> $psfile15
pscoast -R           -Di -N1/0.2p -W0.2p -JL         -K -O >> $psfilep11
psxy AUXI/kosovo-border.dat -R$mapborder -JL$mapproj -W0.2p/0/0/0 -K -O >> $psfile01
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile02
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile03
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile06
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile07
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile08
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile09
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile10
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile11
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile12
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile13
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile14
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile16
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile17
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfile18
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep02
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep04
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep07
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep08
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep09
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep10
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep12
psxy AUXI/kosovo-border.dat -R$mapbordeB -JL$mapproB -W0.2p/0/0/0 -K -O >> $psfile15
psxy AUXI/kosovo-border.dat -R           -JL         -W0.2p/0/0/0 -K -O >> $psfilep11

# outline of the AdriaArray region split in pieces to plot it differently onland and offshore
psxy AUXI/borderLandA.dat -R$mapborder -JL$mapproj -W1.0p/$olin            -K -O >> $psfile01
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile01
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile01
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile01
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile01
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile01
psxy AUXI/borderLandA.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile06
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile06
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile06
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile06
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile06
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile06
psxy AUXI/borderLandA.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile09
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile09
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile09
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile09
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile09
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile09
psxy AUXI/borderLandA.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile08
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile08
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfile08
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile08
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile08
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile08
psxy AUXI/borderLandA.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfilep07
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfilep07
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfilep07
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfilep07
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfilep07
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfilep07
psxy AUXI/borderLandA.dat -R           -JL         -W1.3p/$bb60            -K -O >> $psfilep03
psxy AUXI/borderLandB.dat -R           -JL         -W1.3p/$bb60            -K -O >> $psfilep03
psxy AUXI/borderLandC.dat -R           -JL         -W1.3p/$bb60            -K -O >> $psfilep03
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.3p+t2.0_2.0:0/$bb60 -K -O >> $psfilep03
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.3p+t2.0_2.0:0/$bb60 -K -O >> $psfilep03
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.3p+t2.0_2.0:0/$bb60 -K -O >> $psfilep03
psxy AUXI/borderLandA.dat -R$mapbordeB -JL$mapproB -W1.0p/$olin            -K -O >> $psfilep11
psxy AUXI/borderLandB.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfilep11
psxy AUXI/borderLandC.dat -R           -JL         -W1.0p/$olin            -K -O >> $psfilep11
psxy AUXI/borderSeaA.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfilep11
psxy AUXI/borderSeaB.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfilep11
psxy AUXI/borderSeaC.dat  -R           -JL         -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfilep11

# tectonic units are polygons, plotted as clipped grd files to allow for including shades of topography into them
#psxy AUXI/alcapadi_faults.gmt -R -JL -M -W1.3p/$BB60 -K -O >> $psfilep01 # faults by 4DMB
awk '{print $1, $2, $3}' AUXI/units/fakegrid.txt | blockmedian -R-02.0/+34.0/33.0/52.5 -I0.01666666666666666666666 | surface -R-02.0/+34.0/33.0/52.5 -I0.01666666666666666666666 -GAUXI/units/fakegrid.grd
psclip AUXI/units/wholeclip.txt  -R$mapborder -JL$mapproj                        -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/gray.cpt  -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AlKaPeCa-South.txt -R -JL                                      -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeD.cpt -K -O >> $psfilep01 # = AlKaPeCa
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Valencia.txt   -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/pinkD.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/DeforIberiaSouth.txt -R -JL                                    -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/pinks.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Africa.txt     -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/yellw.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Atlas.txt      -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/yellL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/WestAlpsShort.txt -R -JL                                       -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Vrancea.txt    -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Mediter.txt    -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/brown.cpt -K -O >> $psfilep01 ###
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Iberia.txt     -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/pinkD.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/DeforIberiaMiddle.txt -R -JL                                   -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/pinks.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/EuropeDeformed.txt -R -JL                                      -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AdriaDeformed.txt -R -JL                                       -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/brown.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AdriaUndefor.txt -R -JL                                        -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/browD.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AlKaPeCa-Add.txt -R -JL                                        -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeD.cpt -K -O >> $psfilep01 # = AlKaPeCa
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AtlasSicily.txt -R -JL                                         -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/yellL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Tauern.txt -R -JL                                              -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/WestAlpsAddition.txt -R -JL                                    -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AlpineCorsica.txt -R -JL                                       -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/DeformedPyreneen.txt -R -JL                                    -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/pinks.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/DeformedPyreEurope.txt -R -JL                                  -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AnatoliaUndef.txt -R -JL                                       -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/purpl.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AnatoliaDef.txt -R -JL                                         -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/purpl.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/LiguroAlgerian.txt -R -JL                                      -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/blueL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/AlKaPeCa-North.txt -R -JL                                      -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/greeD.cpt -K -O >> $psfilep01 # = AlKaPeCa
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Vavilov.txt    -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/blueL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Marsili.txt    -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/blueL.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/IonianSea.txt  -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/blueD.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/MediterEast.txt -R -JL                                         -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/purpl.cpt -K -O >> $psfilep01 ###
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/Aegean-Add.txt -R -JL                                          -K -O >> $psfilep01 ###
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/brown.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/EastSea.txt    -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/blueD.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01
psclip AUXI/units/BlackSea.txt   -R -JL                                          -K -O >> $psfilep01
grdimage AUXI/units/fakegrid.grd -R -JL -IAUXI/shadow.grd -CAUXI/units/blueD.cpt -K -O >> $psfilep01
psclip                                                                        -C -K -O >> $psfilep01

pscoast                       -R -JL    -W0.3p -Di -N1/0.3p                      -K -O >> $psfilep01
psxy AUXI/kosovo-border.dat   -R -JL    -W0.3p/0/0/0                             -K -O >> $psfilep01
psxy AUXI/borderLandA.dat     -R -JL    -W1.3p/$blck                             -K -O >> $psfilep01
psxy AUXI/borderLandB.dat     -R -JL    -W1.3p/$blck                             -K -O >> $psfilep01
psxy AUXI/borderLandC.dat     -R -JL    -W1.3p/$blck                             -K -O >> $psfilep01
psxy AUXI/borderSeaA.dat      -R -JL    -W1.3p+t2.0_2.0:0/$blck                  -K -O >> $psfilep01
psxy AUXI/borderSeaB.dat      -R -JL    -W1.3p+t2.0_2.0:0/$blck                  -K -O >> $psfilep01
psxy AUXI/borderSeaC.dat      -R -JL    -W1.3p+t2.0_2.0:0/$blck                  -K -O >> $psfilep01
psxy AUXI/mainthrustR.dat     -R -JL -M -W1.6p/$thrst -Sf+0.7/5.0prt:5p -G$thrst -K -O >> $psfilep01
psxy AUXI/mainthrustL.dat     -R -JL -M -W1.6p/$thrst -Sf+0.7/5.0plt:5p -G$thrst -K -O >> $psfilep01
psxy AUXI/strikeslip.dat      -R -JL -M -W1.6p/$slips                            -K -O >> $psfilep01
psxy AUXI/minorthrustR.dat    -R -JL -M -W1.6p/$thrst -Sf+0.7/5.0prt:5p -G$thrst -K -O >> $psfilep01 # MediterraneanRidge-North only
psxy AUXI/minorthrustL.dat    -R -JL -M -W1.6p/$thrst -Sf+0.7/5.0plt:5p -G$thrst -K -O >> $psfilep01 # Ligur only
#psxy AUXI/emptysquaresR.dat   -R -JL -M -W0.8p/$exten                            -K -O >> $psfilep01
psxy AUXI/emptysquaresR.dat   -R -JL -M -W1.0p/$exten -Sf+0.2/4.0prf:5p          -K -O >> $psfilep01
#psxy AUXI/emptysquaresL.dat   -R -JL -M -W0.8p/$exten                            -K -O >> $psfilep01
psxy AUXI/emptysquaresL.dat   -R -JL -M -W1.0p/$exten -Sf+0.2/4.0plf:5p          -K -O >> $psfilep01
psxy AUXI/minorstrikeslip.dat -R -JL -M -W1.6p/$slips                            -K -O >> $psfilep01
psxy AUXI/extensionsR.dat     -R -JL -M -W1.0p/$exten -Sf+0.2/4.0prf:5p          -K -O >> $psfilep01
psxy AUXI/extensionsL.dat     -R -JL -M -W1.0p/$exten -Sf+0.2/4.0plf:5p          -K -O >> $psfilep01
pstext                        -R -JL    -G0/0/0                           -K -O << end >> $psfilep01
+16.0 +42.5 15 -35 1 MC ADRIA
+11.5 +34.6 15   0 1 MC AFRICA
+29.0 +49.7 15 -30 1 MC EURASIA
+30.4 +39.2 15 +15 1 MC ANATOLIA
+0.6  +41.5 15 -10 1 MC IBERIA
+8.7  +46.4 11  30 0 MC A l p i n e   A r c
+18.0 +43.8 11 -42 0 MC D i n a r i d e s
+21.3 +40.1 11 -60 0 MC H e l l e n i d e s
+20.0 +47.3 11   0 0 MC Pannonian
+20.0 +46.6 11   0 0 MC Basin
+24.0 +48.0 11 -37 0 MC C a r p a t h i a n s
+11.5 +44.1 11 -45 0 MC Northern Apennines
+16.8 +41.1 11 -35 0 MC S. Apennines
 +9.65 49.2 11   0 0 MC Rhine
 +9.65 48.7 11   0 0 MC Graben
+25.1  46.0 11   0 0 MC Vrancea
 +5.5  42.6 11   0 0 MC Gulf of Lion
 +6.0  41.0 11   0 0 MC Liguro-Provencal
 +6.0  40.5 11   0 0 MC Basin
 +2.0  40.1 11 +35 0 MC Valencia Tr.
 +2.5  37.5 11   0 0 MC Algerian Basin
 +6.0  36.2 11   0 0 MC Tell
 +8.0  35.5 11   0 0 MC Tunisia
 +8.0  35.0 11   0 0 MC Atlas
 +3.5  34.9 11 +15 0 MC Sahara Atlas
+13.4  36.2 11   0 0 MC Pelagian
+13.4  35.7 11   0 0 MC block
+10.6  42.5 11   0 0 MC Tuscan
+10.6  42.0 11   0 0 MC Arch.
+12.3  40.5 11   0 0 MC Tyrrhenian Sea
+12.4  39.7 11   0 0 MC Vavilov
+14.5  39.3 11   0 0 MC Marsili
+14.0  37.7 11   0 0 MC Sicily
+17.0  38.2 11 +50 0 MC Calabria
+17.7  35.3 11   0 0 MC Ionian
+17.7  34.8 11   0 0 MC Sea
+20.2  35.5 11 -50 0 MC Mediterranean
+19.9  35.0 11 -48 0 MC Ridge
+25.2  36.4 11 -15 0 MC Aegean Sea
+30.0  40.2 11 +20 0 MC North Anatolian Fault
+31.6  43.0 11 +20 0 MC Black
+31.6  42.4 11 +20 0 MC Sea
+19.7  38.4 11 +70 0 MC KTFZ
+13.6  45.1 11   0 0 MC Istria
+22.0  42.0 11 -61 0 MC Sava suture
end

# GNSS
# first, plot everything in gray
awk '{print $3, $2}' AUXI/gnss/DataHoldings.txt        | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Nevada Geodetic Laboratory
awk '{print $2, $3}' AUXI/gnss/gatbo-newX.gmt          | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # stations processed at INGV
awk '{print $8, $7}' AUXI/gnss/varie_from_Nicola.list  | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Montenegro, Kosovo, N. Macedonia
awk '{print $2, $3}' AUXI/gnss/hungarian_gnss.list     | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Hungary
awk '{print $1, $2}' AUXI/gnss/agnes.list              | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Switzerland
awk '{print $2, $3}' AUXI/gnss/cropos.list             | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Croatia, BiH, Montenegro
awk '{print $3, $2}' AUXI/gnss/skpos.list              | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Slovakia
grep -v "#" AUXI/gnss/HEPOS.gmt | awk '{print $1, $2}' | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # Greece
awk '{print $3, $2}' AUXI/gnss/epos-new.gmt            | psxy -R -JL -O -K -Sc$sizeCo -G$outs -W$thps/$blck >> $psfile08 # stations in EPOS

# second, plot those inside of the AdA region by colors
psclip AUXI/borderWhole.dat -R -JL -K -O >> $psfile08
awk '{print $3, $2}' AUXI/gnss/DataHoldings.txt        | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Nevada Geodetic Laboratory
awk '{print $2, $3}' AUXI/gnss/gatbo-newX.gmt          | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # stations processed at INGV
awk '{print $8, $7}' AUXI/gnss/varie_from_Nicola.list  | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Montenegro, Kosovo, N. Macedonia
awk '{print $2, $3}' AUXI/gnss/hungarian_gnss.list     | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Hungary
awk '{print $1, $2}' AUXI/gnss/agnes.list              | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Switzerland
awk '{print $2, $3}' AUXI/gnss/cropos.list             | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Croatia, BiH, Montenegro
awk '{print $3, $2}' AUXI/gnss/skpos.list              | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Slovakia
grep -v "#" AUXI/gnss/HEPOS.gmt | awk '{print $1, $2}' | psxy -R -JL -O -K -Sc$sizeC -G$upgr -W$thps/$blck >> $psfile08 # Greece
awk '{print $3, $2}' AUXI/gnss/epos-new.gmt            | psxy -R -JL -O -K -Sc$sizeC -G$bb60 -W$thps/$blck >> $psfile08 # stations in EPOS
psclip -C -O -K >> $psfile08

# seismic stations
# SP/SM stations not suitable or available for upgrade
psxy     PERM/pNOSP.txt               -R -JL -St$sizeps -G$nosp -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pNOSP.txt               -R -JL -St$sizeps -G$nosp -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pNOSP.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfilep07

# SP/SM stations not needed for upgrade
psxy     PERM/pWHIT.txt               -R -JL -St$sizeps -G$whit -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pWHIT.txt               -R -JL -St$sizeps -G$whit -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pWHIT.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfilep07
psxy     PERM/pWHITo.txt              -R -JL -St$sizeot         -W$thot/$whit -K -O >> $psfile01
psxy     PERM/pWHITo.txt              -R -JL -St$sizeot         -W$thot/$whit -K -O >> $psfile10
psxy     PERM/pWHITo.txt              -R -JL -St$sizeot         -W$thot/$upgr -K -O >> $psfilep07

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
psxy     TEMP/rpBB.txt                -R -JL -St$sizetp  -G$topo  -W$thps/$blck  -K -O >> $psfilep03
psxy     TEMP/rpBB.txt                -R -JL -St$sizepsA -G$outsA -W$thps/$blck  -K -O >> $psfile14
psxy     TEMP/rpBB.txt                -R -JL -St$sizepsA -G$outsA -W$thps/$blck  -K -O >> $psfilep02
psxy     TEMP/rpBB.txt                -R -JL -St$sizemb           -W$thmb/$outs  -K -O >> $psfilep07
psxy     TEMP/rpBB.txt                -R -JL -St$sizeps           -W$thps/$blck  -K -O >> $psfilep07
psxy     TEMP/rpSP.txt                -R -JL -St$sizemb           -W$thmb/$outs  -K -O >> $psfilep07
psxy     TEMP/rpSP.txt                -R -JL -St$sizeps           -W$thps/$blck  -K -O >> $psfilep07

# PACASE stations which will stay for AdriaArray
awk '{print $3, $2}' AUXI/PACASEstay.txt > AUXI/stations-PACASEstay.txt
psxy   AUXI/stations-PACASEstay.txt -R -JL -St$sizeps -G$pcse -W$thps/$blck -K -O >> $psfile01 # if you delete "stay", and keep the file as "stations-PACASE.txt", it plots all PACASE stations
psxy   AUXI/stations-PACASEstay.txt -R -JL -St$sizeps -G$pcse -W$thps/$blck -K -O >> $psfile02
psxy   AUXI/stations-PACASEstay.txt -R -JL -St$sizeps -G$pcse -W$thps/$blck -K -O >> $psfilep07

# BB stations working during the AdA time frame (since May 2022) but closed already
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pCLOSo.txt              -R -JL -St$sizeot            -W$thot/$blck -K -O >> $psfile01
psxy     TEMP/closedTemp.txt          -R -JL -St$sizemb            -W$thmb/$blck -K -O >> $psfile01
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps            -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pCLOSo.txt              -R -JL -St$sizeot            -W$thot/$blck -K -O >> $psfile02
psxy     TEMP/closedTemp.txt          -R -JL -St$sizemb            -W$thmb/$blck -K -O >> $psfile02
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps            -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile03
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile06
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile07
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pCLOSo.txt              -R -JL -St$sizeot  -G$blck   -W$thot/$blck -K -O >> $psfile09
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile10 # in this map, temporary are not shown at all
psxy     PERM/pCLOSo.txt              -R -JL -St$sizeot            -W$thot/$blck -K -O >> $psfile10
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile12
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pCLOS.txt               -R -JL -St$sizepsA -G$blck   -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pCLOSo.txt              -R -JL -St$sizepsA -G$outsA  -W$thps/$blck -K -O >> $psfile14
psxy     TEMP/closedTemp.txt          -R -JL -St$sizepsA -G$temp   -W$thps/$blck -K -O >> $psfile14 # closed temporary have the same color as other temporary, as in this map, many temporary are closed from the old experiments
psxy     PERM/pCLOS.txt               -R -JL -St$sizeps  -G$blck   -W$thps/$blck -K -O >> $psfilep07
psxy     PERM/pCLOSo.txt              -R -JL -St$sizeot            -W$thps/$blck -K -O >> $psfilep07
psxy     TEMP/closedTemp.txt          -R -JL -St$sizemb            -W$thmb/$blck -K -O >> $psfilep07
psxy     TEMP/closedTemp.txt          -R -JL -St$sizeps            -W$thps/$blck -K -O >> $psfilep07
psxy     TEMP/movedTemp.txt           -R -JL -St$sizemb            -W$thmb/$blck -K -O >> $psfilep07
psxy     TEMP/movedTemp.txt           -R -JL -St$sizeps            -W$thps/$blck -K -O >> $psfilep07

# local experiments - map p04
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfilep04 # Vrancea
26.49 45.78 0.0 240 270
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfilep04 # Albania
20.1 40.85 +30.0 120 160
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfilep04 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfilep04 # Slovakia
20.22 49.08 -12.0 270 80
end

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
psxy     PERM/pFUTU.txt               -R -JL -St$sizes2          -W$ths2/$grey -K -O >> $psfilep04
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps          -W$thps/$blck -K -O >> $psfilep04
psxy     PERM/pFUTU.txt               -R -JL -St$sizepsA -G$futu -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pFUTUo.txt              -R -JL -St$sizepsA -G$futu -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pFUTU.txt               -R -JL -St$sizepsA -G$futu -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pFUTUo.txt              -R -JL -St$sizepsA -G$futu -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pFUTU.txt               -R -JL -St$sizeps  -G$futu -W$thps/$blck -K -O >> $psfilep07
psxy     PERM/pFUTUo.txt              -R -JL -St$sizeot          -W$thot/$futu -K -O >> $psfilep07

# AlpArray, PACASE, EASI, IvreaArray, CASE, SwathD, LiSard, StressTransfer temporary stations
psxy     AUXI/AlpArrayTemp.txt        -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/stations-PACASE.txt     -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/ivrea.txt               -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/easi.txt                -R -JL -St$sizepsA -G$temp    -W$thps/$blck -K -O >> $psfile14
psxy     AUXI/AlpArrayTemp.txt        -R -JL -St$sizepsA -G$grAA    -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/stations-PACASE.txt     -R -JL -St$sizepsA -G$grAA    -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pCLOS.txt               -R -JL -St$sizepsA -G$blck    -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pCLOSo.txt              -R -JL -St$sizepsA -G$outsA   -W$thps/$blck -K -O >> $psfilep02
psxy     TEMP/closedTemp.txt          -R -JL -St$sizepsA -G$blck    -W$thps/$blck -K -O >> $psfilep02
psxy     TEMP/movedTemp.txt           -R -JL -St$sizepsA -G$blck    -W$thps/$blck -K -O >> $psfilep02


# stations with unknown sensor
#psxy     PERM/pUNKN.txt               -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile01
#psxy     PERM/pUNKN.txt               -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile10
#psxy     PERM/pUNKNo.txt              -R -JL -St$sizeot         -W$thot/$unkn -K -O >> $psfile01
#psxy     PERM/pUNKNo.txt              -R -JL -St$sizeot         -W$thot/$unkn -K -O >> $psfile10
#psxy     PERM/pUNKN.txt               -R -JL -St$sizeps -G$unkn -W$thps/$blck -K -O >> $psfile02
#psxy     PERM/pUNKNo.txt              -R -JL -St$sizeot         -W$thot/$unkn -K -O >> $psfile02

# SP/SM stations available for upgrade
psxy     PERM/pUPGR.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pUPGR.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pUPGR.txt               -R -JL -St$sizeps -G$upgr -W$thps/$blck -K -O >> $psfilep07

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
psxy     PERM/pBB30.txt           -R -JL -St$sizetp  -G$topo  -W$thps/$blck -K -O >> $psfilep03
psxy     PERM/pBB30o.txt          -R -JL -St$sizetp  -G$topo  -W$thps/$blck -K -O >> $psfilep03
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pBB30o.txt          -R -JL -St$sizeot           -W$thot/$bb30 -K -O >> $psfile10
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfilep04
psxy     PERM/pBB30o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB30.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB30o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pBB30.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB030.txt          -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfilep09
psxy     TEMP/tBB030.txt          -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfilep09
psxy     PERM/pBB30.txt           -R -JL -St$sizeps  -G$bb30  -W$thps/$blck -K -O >> $psfilep07
psxy     PERM/pBB30o.txt          -R -JL -St$sizeot           -W$thot/$bb30 -K -O >> $psfilep07

# BB stations with corner period from 40 to 60 s
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfile01
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfile10
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot  -G$outs  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB40o.txt          -R -JL -St$sizetp  -G$topo  -W$thps/$blck -K -O >> $psfilep03
psxy     PERM/pBB40.txt           -R -JL -St$sizetp  -G$topo  -W$thps/$blck -K -O >> $psfilep03
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfile02
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfilep04
psxy     PERM/pBB40o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB40.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB40o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pBB40.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB040.txt          -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfilep09
psxy     TEMP/tBB040.txt          -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfilep09
psxy     PERM/pBB40.txt           -R -JL -St$sizeps  -G$bb40  -W$thps/$blck -K -O >> $psfilep07
psxy     PERM/pBB40o.txt          -R -JL -St$sizeot           -W$thot/$bb40 -K -O >> $psfilep07

# BB stations with corner period 60 s and longer
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile01
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfile01
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile10
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfile10
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot  -G$outs  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB60o.txt          -R -JL -St$sizetp  -G$topo  -W$thps/$blck -K -O >> $psfilep03
psxy     PERM/pBB60.txt           -R -JL -St$sizetp  -G$topo  -W$thps/$blck -K -O >> $psfilep03
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile02
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfile02
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile06
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile03
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile07
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile09
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$perm  -W$thps/$blck -K -O >> $psfile12
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile13
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfilep04
psxy     PERM/pBB60o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB60.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfile14
psxy     PERM/pBB60o.txt          -R -JL -St$sizepsA -G$outsA -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pBB60.txt           -R -JL -St$sizepsA -G$perm  -W$thps/$blck -K -O >> $psfilep02
psxy     PERM/pBB60.txt           -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfilep07
psxy     PERM/pBB60o.txt          -R -JL -St$sizeot           -W$thot/$bb60 -K -O >> $psfilep07

# finer split by corner period for map 17 and not yet deployed temporary stations for map 17
psxy     TEMP/notDepl.txt         -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB060-120.txt      -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB060-120.txt      -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB120-240.txt      -R -JL -St$sizeps  -G$bb120 -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB120-240.txt      -R -JL -St$sizeps  -G$bb120 -W$thps/$blck -K -O >> $psfile17
psxy     PERM/pBB240.txt          -R -JL -St$sizeps  -G$bb240 -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/tBB240.txt          -R -JL -St$sizeps  -G$bb240 -W$thps/$blck -K -O >> $psfile17
psxy     TEMP/notDepl.txt         -R -JL -St$sizeps  -G$grey  -W$thps/$blck -K -O >> $psfilep09
psxy     PERM/pBB060-120.txt      -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfilep09
psxy     TEMP/tBB060-120.txt      -R -JL -St$sizeps  -G$bb60  -W$thps/$blck -K -O >> $psfilep09
psxy     PERM/pBB120-240.txt      -R -JL -St$sizeps  -G$bb120 -W$thps/$blck -K -O >> $psfilep09
psxy     TEMP/tBB120-240.txt      -R -JL -St$sizeps  -G$bb120 -W$thps/$blck -K -O >> $psfilep09
psxy     PERM/pBB240.txt          -R -JL -St$sizeps  -G$bb240 -W$thps/$blck -K -O >> $psfilep09
psxy     TEMP/tBB240.txt          -R -JL -St$sizeps  -G$bb240 -W$thps/$blck -K -O >> $psfilep09

# temp stations - subgroup CENTER
psxy     TEMP/mcent.txt          -R -JL -St$sizemb          -W$thmb/$centP -K -O >> $psfile01
psxy     TEMP/mcent.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mcent.txt          -R -JL -St$sizemb          -W$thmb/$cent  -K -O >> $psfile02
psxy     TEMP/mcent.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$cent -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$cent -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mcent.txt          -R -JL -St$sizetp  -G$topo -W$thps/$blck  -K -O >> $psfilep03
psxy     TEMP/mcent.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mcent.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
psxy     TEMP/mcent.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfilep02
psxy     TEMP/mcent.txt          -R -JL -St$sizemb          -W$thmb/$centP -K -O >> $psfilep07
psxy     TEMP/mcent.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfilep07

# temp stations - subgroup EAST
psxy     TEMP/meast.txt          -R -JL -St$sizemb          -W$thmb/$eastP -K -O >> $psfile01
psxy     TEMP/meast.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/meast.txt          -R -JL -St$sizemb          -W$thmb/$east  -K -O >> $psfile02
psxy     TEMP/meast.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$east -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$east -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/meast.txt          -R -JL -St$sizetp  -G$topo -W$thps/$blck  -K -O >> $psfilep03
psxy     TEMP/meast.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/meast.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
psxy     TEMP/meast.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfilep02
psxy     TEMP/meast.txt          -R -JL -St$sizemb          -W$thmb/$eastP -K -O >> $psfilep07
psxy     TEMP/meast.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfilep07

# temp stations - subgroup WEST
psxy     TEMP/mwest.txt          -R -JL -St$sizemb          -W$thmb/$westP -K -O >> $psfile01
psxy     TEMP/mwest.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mwest.txt          -R -JL -St$sizemb          -W$thmb/$west  -K -O >> $psfile02
psxy     TEMP/mwest.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$west -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$west -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mwest.txt          -R -JL -St$sizetp  -G$topo -W$thps/$blck  -K -O >> $psfilep03
psxy     TEMP/mwest.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mwest.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
psxy     TEMP/mwest.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfilep02
psxy     TEMP/mwest.txt          -R -JL -St$sizemb          -W$thmb/$westP -K -O >> $psfilep07
psxy     TEMP/mwest.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfilep07

# temp stations - subgroup NORTH
psxy     TEMP/mnort.txt          -R -JL -St$sizemb          -W$thmb/$nortP -K -O >> $psfile01
psxy     TEMP/mnort.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mnort.txt          -R -JL -St$sizemb          -W$thmb/$nort  -K -O >> $psfile02
psxy     TEMP/mnort.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$nort -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$nort -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mnort.txt          -R -JL -St$sizetp  -G$topo -W$thps/$blck  -K -O >> $psfilep03
psxy     TEMP/mnort.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mnort.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
psxy     TEMP/mnort.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfilep02
psxy     TEMP/mnort.txt          -R -JL -St$sizemb          -W$thmb/$nortP -K -O >> $psfilep07
psxy     TEMP/mnort.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfilep07

# temp stations - subgroup SOUTHEAST
psxy     TEMP/mstea.txt          -R -JL -St$sizemb          -W$thmb/$steaP -K -O >> $psfile01
psxy     TEMP/mstea.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile01
psxy     TEMP/mstea.txt          -R -JL -St$sizemb          -W$thmb/$stea  -K -O >> $psfile02
psxy     TEMP/mstea.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfile02
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile06
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$stea -W$thps/$blck  -K -O >> $psfile03
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$stea -W$thps/$blck  -K -O >> $psfile07
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile09
psxy     TEMP/mstea.txt          -R -JL -St$sizetp  -G$topo -W$thps/$blck  -K -O >> $psfilep03
psxy     TEMP/mstea.txt          -R -JL -St$sizeps  -G$temp -W$thps/$blck  -K -O >> $psfile12
psxy     TEMP/mstea.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfile14
psxy     TEMP/mstea.txt          -R -JL -St$sizepsA -G$temp -W$thps/$blck  -K -O >> $psfilep02
psxy     TEMP/mstea.txt          -R -JL -St$sizemb          -W$thmb/$steaP -K -O >> $psfilep07
psxy     TEMP/mstea.txt          -R -JL -St$sizeps          -W$thps/$blck  -K -O >> $psfilep07

# experiments for map p02
psxy     AUXI/easi.txt                -R -JL -St$szexp   -G$igczclr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/case.txt                -R -JL -St$szexp   -G$ouluclr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/ivrea.txt               -R -JL -St$szexp   -G$wienclr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/swathD.txt              -R -JL -St$szexp   -G$municlr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/LiSard.txt              -R -JL -St$szexp   -G$twenclr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/StressTransfer.txt      -R -JL -St$szexp   -G$aarhclr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/cifalps.txt             -R -JL -St$szexp   -G$polaclr -W$thps/$blck -K -O >> $psfilep02
psxy     AUXI/cifalps2.txt            -R -JL -St$szexp   -G$resfclr -W$thps/$blck -K -O >> $psfilep02

# experiment outlines for map 14
psxy AUXI/AlpArrayOutline.dat -R -JL -W1.3p/255/255/255      -K -O >> $psfile14
psxy AUXI/PACASEoutline.dat   -R -JL -W1.3p/000/255/255      -K -O >> $psfile14
psxy AUXI/borderLandA.dat     -R -JL -W1.0p/$olin            -K -O >> $psfile14
psxy AUXI/borderLandB.dat     -R -JL -W1.0p/$olin            -K -O >> $psfile14
psxy AUXI/borderLandC.dat     -R -JL -W1.0p/$olin            -K -O >> $psfile14
psxy AUXI/borderSeaA.dat      -R -JL -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile14
psxy AUXI/borderSeaB.dat      -R -JL -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile14
psxy AUXI/borderSeaC.dat      -R -JL -W1.0p+t2.0_2.0:0/$olin -K -O >> $psfile14
psxy AUXI/AlpArrayOutline.dat -R -JL -W1.3p/255/255/255      -K -O >> $psfilep02
psxy AUXI/PACASEoutline.dat   -R -JL -W1.3p/000/100/255      -K -O >> $psfilep02
psxy AUXI/borderLandA.dat     -R -JL -W1.3p/$olin            -K -O >> $psfilep02
psxy AUXI/borderLandB.dat     -R -JL -W1.3p/$olin            -K -O >> $psfilep02
psxy AUXI/borderLandC.dat     -R -JL -W1.3p/$olin            -K -O >> $psfilep02
psxy AUXI/borderSeaA.dat      -R -JL -W1.3p+t2.0_2.0:0/$olin -K -O >> $psfilep02
psxy AUXI/borderSeaB.dat      -R -JL -W1.3p+t2.0_2.0:0/$olin -K -O >> $psfilep02
psxy AUXI/borderSeaC.dat      -R -JL -W1.3p+t2.0_2.0:0/$olin -K -O >> $psfilep02

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
pstext -R -JL -G000/100/255 -K -O << end >> $psfilep02
26.5 50.4 20 0 0 MC PACASE
27.5 49.5 16 0 0 MC 2019 - 2022
end
pstext -R -JL -G255/255/255 -K -O << end >> $psfilep02
 5.8 41.0 20 0 0 MC AlpArray
 5.9 40.0 16 0 0 MC 2015 - 2019
end
pstext -R -JL -G255/255/000 -K -O << end >> $psfilep02
19.0 36.3 20 0 0 MC AdriaArray
19.0 35.3 16 0 0 MC 2022 - 2025
end

# circles of 30 km radius
psxy PERM/circlesCLOS30.txt  -R -JL -G$blck -SE -K -O >> $psfile04
psxy TEMP/circlesCLOS30.txt  -R -JL -G$blck -SE -K -O >> $psfile04
psxy PERM/circlesFUTU30.txt  -R -JL -G$futu -SE -K -O >> $psfile04
psxy PERM/circlesBB3030.txt  -R -JL -G$bb30 -SE -K -O >> $psfile04
psxy PERM/circlesBB4030.txt  -R -JL -G$bb40 -SE -K -O >> $psfile04
psxy PERM/circlesBB6030.txt  -R -JL -G$bb60 -SE -K -O >> $psfile04
psxy TEMP/circlesWEST30.txt  -R -JL -G$west -SE -K -O >> $psfile04
psxy TEMP/circlesCENT30.txt  -R -JL -G$cent -SE -K -O >> $psfile04
psxy TEMP/circlesNORT30.txt  -R -JL -G$nort -SE -K -O >> $psfile04
psxy TEMP/circlesEAST30.txt  -R -JL -G$east -SE -K -O >> $psfile04
psxy TEMP/circlesSTEA30.txt  -R -JL -G$stea -SE -K -O >> $psfile04

# circles of 40 km radius
psxy PERM/circlesCLOS40.txt  -R -JL -G$blck -SE -K -O >> $psfile05
psxy TEMP/circlesCLOS40.txt  -R -JL -G$blck -SE -K -O >> $psfile05
psxy PERM/circlesFUTU40.txt  -R -JL -G$futu -SE -K -O >> $psfile05
psxy PERM/circlesBB3040.txt  -R -JL -G$bb30 -SE -K -O >> $psfile05
psxy PERM/circlesBB4040.txt  -R -JL -G$bb40 -SE -K -O >> $psfile05
psxy PERM/circlesBB6040.txt  -R -JL -G$bb60 -SE -K -O >> $psfile05
psxy TEMP/circlesWEST40.txt  -R -JL -G$west -SE -K -O >> $psfile05
psxy TEMP/circlesCENT40.txt  -R -JL -G$cent -SE -K -O >> $psfile05
psxy TEMP/circlesNORT40.txt  -R -JL -G$nort -SE -K -O >> $psfile05
psxy TEMP/circlesEAST40.txt  -R -JL -G$east -SE -K -O >> $psfile05
psxy TEMP/circlesSTEA40.txt  -R -JL -G$stea -SE -K -O >> $psfile05

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

# backbone vs. virtual network
psxy AUXI/virtual-GMT.txt        -R -JL -St$sizeps -G$pcse    -W$thps/$blck -K -O >> $psfilep08 # virtual _ADARRAY - from EIDA
psxy PERM/perm30plusIN.txt       -R -JL -St$sizeps -G$upgr    -W$thps/$blck -K -O >> $psfilep08 # backbone permanent, T > 30s, in EIDA
psxy TEMP/tempEIDAyes.txt        -R -JL -St$sizeps -G$upgr    -W$thps/$blck -K -O >> $psfilep08 # backbone temporary, in EIDA
psxy AUXI/virtual-GMT.txt        -R -JL -St$sizeps -G$pcse    -W$thps/$blck -K -O >> $psfilep12 # virtual _ADARRAY - from EIDA
psxy AUXI/virtual-permanent.txt  -R -JL -St$sizeps -G$twenclr -W$thps/$blck -K -O >> $psfilep12 # permanent stations, manually selected from all

# coverage of all permanent and temporary stations in EIDA
psxy PERM/perm30io40.txt    -R -JL -G$ci40 -SE                      -K -O >> $psfilep06
psxy TEMP/tEIDA40.txt       -R -JL -G$ci40 -SE                      -K -O >> $psfilep06
psxy PERM/perm30io30.txt    -R -JL -G$ci30 -SE                      -K -O >> $psfilep06
psxy TEMP/tEIDA30.txt       -R -JL -G$ci30 -SE                      -K -O >> $psfilep06
psxy PERM/perm30io20.txt    -R -JL -G$ci20 -SE                      -K -O >> $psfilep06
psxy TEMP/tEIDA20.txt       -R -JL -G$ci20 -SE                      -K -O >> $psfilep06
psxy PERM/perm30io10.txt    -R -JL -G$ci10 -SE                      -K -O >> $psfilep06
psxy TEMP/tEIDA10.txt       -R -JL -G$ci10 -SE                      -K -O >> $psfilep06
#psxy TEMP/tempEIDAno.txt    -R -JL -St$sizetp -G$blck -W$thps/$blck -K -O >> $psfilep06 # triangles for non-EIDA temporary stations
#psxy PERM/EIDAnoBB.txt      -R -JL -St$sizetp -G$blck -W$thps/$blck -K -O >> $psfilep06 # triangles for non-EIDA permanent BB stations
pscoast                     -R -JL -Di -N1/0.2p -W0.2p              -K -O >> $psfilep06
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0                     -K -O >> $psfilep06

# coverage of all permanent stations in EIDA - upper plot
psxy PERM/perm30io40.txt  -R -JL -G$ci40 -SE                      -K -O >> $psfilep05
psxy PERM/perm30io30.txt  -R -JL -G$ci30 -SE                      -K -O >> $psfilep05
psxy PERM/perm30io20.txt  -R -JL -G$ci20 -SE                      -K -O >> $psfilep05
psxy PERM/perm30io10.txt  -R -JL -G$ci10 -SE                      -K -O >> $psfilep05
#psxy PERM/EIDAnoBB.txt      -R -JL -St$sizetp -G$blck -W$thps/$blck -K -O >> $psfilep05 # triangles for non-EIDA permanent stations
pscoast                     -R -JL -Di -N1/0.2p -W0.2p              -K -O >> $psfilep05
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0                     -K -O >> $psfilep05

# individual mobile pools
# GIPP
psxy TEMP/gipp.txt  -R -JL -Sc0.3     -W$thickE/$gippclr -K -O >> $psfile07
psxy TEMP/gipp.txt  -R -JL -Sc0.3     -W$thickE/$gippclr -K -O >> $psfile12
psxy TEMP/gipp.txt  -R -JL -St$sizes2 -W$ths2/$gippclr   -K -O >> $psfile13
psxy TEMP/gippD.txt -R -JL -St$sizes2 -G$gippclr         -K -O >> $psfile13
psxy TEMP/gipp.txt  -R -JL -St$sizes2 -W$ths2/$gippclr   -K -O >> $psfilep04
psxy TEMP/gippD.txt -R -JL -St$sizes2 -G$gippclr         -K -O >> $psfilep04

# GIPP + Carpathian Project - dots only
psxy TEMP/gicaD.txt  -R -JL -Sc0.1    -G$jenaclr         -K -O >> $psfile13  # GIPP + Carpathian Project
psxy TEMP/gipp.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/gicaD.txt  -R -JL -Sc0.1    -G$jenaclr         -K -O >> $psfilep04  # GIPP + Carpathian Project
psxy TEMP/gipp.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Uni Jena
psxy TEMP/jena.txt  -R -JL -Sc0.3     -W$thickE/$jenaclr -K -O >> $psfile07
psxy TEMP/jena.txt  -R -JL -Sc0.3     -W$thickE/$jenaclr -K -O >> $psfile12
psxy TEMP/jena.txt  -R -JL -St$sizes2 -W$ths2/$jenaclr   -K -O >> $psfile13
psxy TEMP/jenaD.txt -R -JL -St$sizes2 -G$jenaclr         -K -O >> $psfile13
psxy TEMP/jena.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/jena.txt  -R -JL -St$sizes2 -W$ths2/$jenaclr   -K -O >> $psfilep04
psxy TEMP/jenaD.txt -R -JL -St$sizes2 -G$jenaclr         -K -O >> $psfilep04
psxy TEMP/jena.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Uni Aarhus
psxy TEMP/aarh.txt  -R -JL -Sc0.3     -W$thickE/$aarhclr -K -O >> $psfile07
psxy TEMP/aarh.txt  -R -JL -Sc0.3     -W$thickE/$aarhclr -K -O >> $psfile12
psxy TEMP/aarh.txt  -R -JL -St$sizes2 -W$ths2/$aarhclr   -K -O >> $psfile13
psxy TEMP/aarhD.txt -R -JL -St$sizes2 -G$aarhclr         -K -O >> $psfile13
psxy TEMP/aarh.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/aarh.txt  -R -JL -St$sizes2 -W$ths2/$aarhclr   -K -O >> $psfilep04
psxy TEMP/aarhD.txt -R -JL -St$sizes2 -G$aarhclr         -K -O >> $psfilep04
psxy TEMP/aarh.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Bochum
psxy TEMP/boch.txt  -R -JL -Sc0.3     -W$thickE/$bochclr -K -O >> $psfile07
psxy TEMP/boch.txt  -R -JL -Sc0.3     -W$thickE/$bochclr -K -O >> $psfile12
psxy TEMP/boch.txt  -R -JL -St$sizes2 -W$ths2/$bochclr   -K -O >> $psfile13
psxy TEMP/bochD.txt -R -JL -St$sizes2 -G$bochclr         -K -O >> $psfile13
psxy TEMP/boch.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/boch.txt  -R -JL -St$sizes2 -W$ths2/$bochclr   -K -O >> $psfilep04
psxy TEMP/bochD.txt -R -JL -St$sizes2 -G$bochclr         -K -O >> $psfilep04
psxy TEMP/boch.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Bochum + Uni Frankfurt - dots only
psxy TEMP/frnkD.txt  -R -JL -Sc0.1    -G$frnkclr         -K -O >> $psfile13   # Bochum + Uni Frankfurt digitizers
psxy TEMP/frnkD.txt  -R -JL -Sc0.1    -G$frnkclr         -K -O >> $psfilep04  # Bochum + Uni Frankfurt digitizers

# Bologna
psxy TEMP/bolo.txt  -R -JL -Sc0.3     -W$thickE/$boloclr -K -O >> $psfile07
psxy TEMP/bolo.txt  -R -JL -Sc0.3     -W$thickE/$boloclr -K -O >> $psfile12
psxy TEMP/bolo.txt  -R -JL -St$sizes2 -W$ths2/$boloclr   -K -O >> $psfile13
psxy TEMP/boloD.txt -R -JL -St$sizes2 -G$boloclr         -K -O >> $psfile13
psxy TEMP/bolo.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/bolo.txt  -R -JL -St$sizes2 -W$ths2/$boloclr   -K -O >> $psfilep04
psxy TEMP/boloD.txt -R -JL -St$sizes2 -G$boloclr         -K -O >> $psfilep04
psxy TEMP/bolo.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Bergen + Zagreb
psxy TEMP/brzg.txt  -R -JL -Sc0.3     -W$thickE/$brzgclr -K -O >> $psfile07
psxy TEMP/brzg.txt  -R -JL -Sc0.3     -W$thickE/$brzgclr -K -O >> $psfile12
psxy TEMP/brzg.txt  -R -JL -St$sizes2 -W$ths2/$brzgclr   -K -O >> $psfile13
psxy TEMP/brzgD.txt -R -JL -St$sizes2 -G$brzgclr         -K -O >> $psfile13
psxy TEMP/brzg.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/brzg.txt  -R -JL -St$sizes2 -W$ths2/$brzgclr   -K -O >> $psfilep04
psxy TEMP/brzgD.txt -R -JL -St$sizes2 -G$brzgclr         -K -O >> $psfilep04
psxy TEMP/brzg.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# CSS - Croatia Seismological Survey
psxy TEMP/cssc.txt  -R -JL -Sc0.3     -W$thickE/$csscclr -K -O >> $psfile07
psxy TEMP/cssc.txt  -R -JL -Sc0.3     -W$thickE/$csscclr -K -O >> $psfile12
psxy TEMP/cssc.txt  -R -JL -St$sizes2 -W$ths2/$csscclr   -K -O >> $psfile13
psxy TEMP/csscD.txt -R -JL -St$sizes2 -G$csscclr         -K -O >> $psfile13
psxy TEMP/cssc.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/cssc.txt  -R -JL -St$sizes2 -W$ths2/$csscclr   -K -O >> $psfilep04
psxy TEMP/csscD.txt -R -JL -St$sizes2 -G$csscclr         -K -O >> $psfilep04
psxy TEMP/cssc.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Hungary
psxy TEMP/epss.txt  -R -JL -Sc0.3     -W$thickE/$epssclr -K -O >> $psfile07
psxy TEMP/epss.txt  -R -JL -Sc0.3     -W$thickE/$epssclr -K -O >> $psfile12
psxy TEMP/epss.txt  -R -JL -St$sizes2 -W$ths2/$epssclr   -K -O >> $psfile13
psxy TEMP/epssD.txt -R -JL -St$sizes2 -G$epssclr         -K -O >> $psfile13
psxy TEMP/epss.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/epss.txt  -R -JL -St$sizes2 -W$ths2/$epssclr   -K -O >> $psfilep04
psxy TEMP/epssD.txt -R -JL -St$sizes2 -G$epssclr         -K -O >> $psfilep04
psxy TEMP/epss.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# ETH Zurich
psxy TEMP/ethz.txt  -R -JL -Sc0.3     -W$thickE/$ethzclr -K -O >> $psfile07
psxy TEMP/ethz.txt  -R -JL -Sc0.3     -W$thickE/$ethzclr -K -O >> $psfile12
psxy TEMP/ethz.txt  -R -JL -St$sizes2 -W$ths2/$ethzclr   -K -O >> $psfile13
psxy TEMP/ethzD.txt -R -JL -St$sizes2 -G$ethzclr         -K -O >> $psfile13
psxy TEMP/ethz.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/ethz.txt  -R -JL -St$sizes2 -W$ths2/$ethzclr   -K -O >> $psfilep04
psxy TEMP/ethzD.txt -R -JL -St$sizes2 -G$ethzclr         -K -O >> $psfilep04
psxy TEMP/ethz.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Helsinki
psxy TEMP/hels.txt  -R -JL -Sc0.3     -W$thickE/$helsclr -K -O >> $psfile07
psxy TEMP/hels.txt  -R -JL -Sc0.3     -W$thickE/$helsclr -K -O >> $psfile12
psxy TEMP/hels.txt  -R -JL -St$sizes2 -W$ths2/$helsclr   -K -O >> $psfile13
psxy TEMP/helsD.txt -R -JL -St$sizes2 -G$helsclr         -K -O >> $psfile13
psxy TEMP/hels.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/hels.txt  -R -JL -St$sizes2 -W$ths2/$helsclr   -K -O >> $psfilep04
psxy TEMP/helsD.txt -R -JL -St$sizes2 -G$helsclr         -K -O >> $psfilep04
psxy TEMP/hels.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Helsinki + IRSM CAS CZ - dots only
psxy TEMP/irsmD.txt  -R -JL -Sc0.1    -G$irsmclr         -K -O >> $psfile13   # IRSM + Helsinki equipment
psxy TEMP/irsmD.txt  -R -JL -Sc0.1    -G$irsmclr         -K -O >> $psfilep04  # IRSM + Helsinki equipment

# IG CAS CZ
psxy TEMP/igcz.txt  -R -JL -Sc0.3     -W$thickE/$igczclr -K -O >> $psfile07
psxy TEMP/igcz.txt  -R -JL -Sc0.3     -W$thickE/$igczclr -K -O >> $psfile12
psxy TEMP/igcz.txt  -R -JL -St$sizes2 -W$ths2/$igczclr   -K -O >> $psfile13
psxy TEMP/igczD.txt -R -JL -St$sizes2 -G$igczclr         -K -O >> $psfile13
psxy TEMP/igcz.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/igcz.txt  -R -JL -St$sizes2 -W$ths2/$igczclr   -K -O >> $psfilep04
psxy TEMP/igczD.txt -R -JL -St$sizes2 -G$igczclr         -K -O >> $psfilep04
psxy TEMP/igcz.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Uni Kiel
psxy TEMP/kiel.txt  -R -JL -Sc0.3     -W$thickE/$kielclr -K -O >> $psfile07
psxy TEMP/kiel.txt  -R -JL -Sc0.3     -W$thickE/$kielclr -K -O >> $psfile12
psxy TEMP/kiel.txt  -R -JL -St$sizes2 -W$ths2/$kielclr   -K -O >> $psfile13
psxy TEMP/kielD.txt -R -JL -St$sizes2 -G$kielclr         -K -O >> $psfile13
psxy TEMP/kiel.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/kiel.txt  -R -JL -St$sizes2 -W$ths2/$kielclr   -K -O >> $psfilep04
psxy TEMP/kielD.txt -R -JL -St$sizes2 -G$kielclr         -K -O >> $psfilep04
psxy TEMP/kiel.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# LMU Munich
psxy TEMP/muni.txt  -R -JL -Sc0.3     -W$thickE/$municlr -K -O >> $psfile07
psxy TEMP/muni.txt  -R -JL -Sc0.3     -W$thickE/$municlr -K -O >> $psfile12
psxy TEMP/muni.txt  -R -JL -St$sizes2 -W$ths2/$municlr   -K -O >> $psfile13
psxy TEMP/muniD.txt -R -JL -St$sizes2 -G$municlr         -K -O >> $psfile13
psxy TEMP/muni.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/muni.txt  -R -JL -St$sizes2 -W$ths2/$municlr   -K -O >> $psfilep04
psxy TEMP/muniD.txt -R -JL -St$sizes2 -G$municlr         -K -O >> $psfilep04
psxy TEMP/muni.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# OGS Italy
psxy TEMP/ogsi.txt  -R -JL -Sc0.3     -W$thickE/$ogsiclr -K -O >> $psfile07
psxy TEMP/ogsi.txt  -R -JL -Sc0.3     -W$thickE/$ogsiclr -K -O >> $psfile12
psxy TEMP/ogsi.txt  -R -JL -St$sizes2 -W$ths2/$ogsiclr   -K -O >> $psfile13
psxy TEMP/ogsiD.txt -R -JL -St$sizes2 -G$ogsiclr         -K -O >> $psfile13
psxy TEMP/ogsi.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/ogsi.txt  -R -JL -St$sizes2 -W$ths2/$ogsiclr   -K -O >> $psfilep04
psxy TEMP/ogsiD.txt -R -JL -St$sizes2 -G$ogsiclr         -K -O >> $psfilep04
psxy TEMP/ogsi.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Uni Oulu
psxy TEMP/oulu.txt  -R -JL -Sc0.3     -W$thickE/$ouluclr -K -O >> $psfile07
psxy TEMP/oulu.txt  -R -JL -Sc0.3     -W$thickE/$ouluclr -K -O >> $psfile12
psxy TEMP/oulu.txt  -R -JL -St$sizes2 -W$ths2/$ouluclr   -K -O >> $psfile13
psxy TEMP/ouluD.txt -R -JL -St$sizes2 -G$ouluclr         -K -O >> $psfile13
psxy TEMP/oulu.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/oulu.txt  -R -JL -St$sizes2 -W$ths2/$ouluclr   -K -O >> $psfilep04
psxy TEMP/ouluD.txt -R -JL -St$sizes2 -G$ouluclr         -K -O >> $psfilep04
psxy TEMP/oulu.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Uni Oulu + Uni Wien at Oulu stations - dots only
psxy TEMP/ouwiD.txt  -R -JL -Sc0.1    -G$wienclr         -K -O >> $psfile13   # Oulu + UniWien digitizers
psxy TEMP/ouwiD.txt  -R -JL -Sc0.1    -G$wienclr         -K -O >> $psfilep04  # Oulu + UniWien digitizers

# Geoazur + GIPP = Ukraine
psxy TEMP/gige.txt  -R -JL -Sc0.3     -W$thickE/$gigeclr -K -O >> $psfile07
psxy TEMP/gige.txt  -R -JL -Sc0.3     -W$thickE/$gigeclr -K -O >> $psfile12
psxy TEMP/gige.txt  -R -JL -St$sizes2 -W$ths2/$gigeclr   -K -O >> $psfile13
psxy TEMP/gigeD.txt -R -JL -St$sizes2 -G$gigeclr         -K -O >> $psfile13
psxy TEMP/gige.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/gige.txt  -R -JL -St$sizes2 -W$ths2/$gigeclr   -K -O >> $psfilep04
psxy TEMP/gigeD.txt -R -JL -St$sizes2 -G$gigeclr         -K -O >> $psfilep04
psxy TEMP/gige.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Geoazur + GIPP - dots only
psxy TEMP/gige.txt  -R -JL -Sc0.1    -G$gippclr         -K -O >> $psfile13  # Geoazur sensors + GIPP digitizers
psxy TEMP/gige.txt  -R -JL -Sc0.1    -G$gippclr         -K -O >> $psfilep04

# Poland
psxy TEMP/pola.txt  -R -JL -Sc0.3     -W$thickE/$polaclr -K -O >> $psfile07
psxy TEMP/pola.txt  -R -JL -Sc0.3     -W$thickE/$polaclr -K -O >> $psfile12
psxy TEMP/pola.txt  -R -JL -St$sizes2 -W$ths2/$polaclr   -K -O >> $psfile13
psxy TEMP/polaD.txt -R -JL -St$sizes2 -G$polaclr         -K -O >> $psfile13
psxy TEMP/pola.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/pola.txt  -R -JL -St$sizes2 -W$ths2/$polaclr   -K -O >> $psfilep04
psxy TEMP/polaD.txt -R -JL -St$sizes2 -G$polaclr         -K -O >> $psfilep04
psxy TEMP/pola.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Resif-Sismob
psxy TEMP/resf.txt  -R -JL -Sc0.3     -W$thickE/$resfclr -K -O >> $psfile07
psxy TEMP/resf.txt  -R -JL -Sc0.3     -W$thickE/$resfclr -K -O >> $psfile12
psxy TEMP/resf.txt  -R -JL -St$sizes2 -W$ths2/$resfclr   -K -O >> $psfile13
psxy TEMP/resfD.txt -R -JL -St$sizes2 -G$resfclr         -K -O >> $psfile13
psxy TEMP/resf.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/resf.txt  -R -JL -St$sizes2 -W$ths2/$resfclr   -K -O >> $psfilep04
psxy TEMP/resfD.txt -R -JL -St$sizes2 -G$resfclr         -K -O >> $psfilep04
psxy TEMP/resf.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Uni Twente, the Netherlands
psxy TEMP/twen.txt  -R -JL -Sc0.3     -W$thickE/$twenclr -K -O >> $psfile07
psxy TEMP/twen.txt  -R -JL -Sc0.3     -W$thickE/$twenclr -K -O >> $psfile12
psxy TEMP/twen.txt  -R -JL -St$sizes2 -W$ths2/$twenclr   -K -O >> $psfile13
psxy TEMP/twenD.txt -R -JL -St$sizes2 -G$twenclr         -K -O >> $psfile13
psxy TEMP/twen.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/twen.txt  -R -JL -St$sizes2 -W$ths2/$twenclr   -K -O >> $psfilep04
psxy TEMP/twenD.txt -R -JL -St$sizes2 -G$twenclr         -K -O >> $psfilep04
psxy TEMP/twen.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# UniWien
psxy TEMP/wien.txt  -R -JL -Sc0.3     -W$thickE/$wienclr -K -O >> $psfile07
psxy TEMP/wien.txt  -R -JL -Sc0.3     -W$thickE/$wienclr -K -O >> $psfile12
psxy TEMP/wien.txt  -R -JL -St$sizes2 -W$ths2/$wienclr   -K -O >> $psfile13
psxy TEMP/wienD.txt -R -JL -St$sizes2 -G$wienclr         -K -O >> $psfile13
psxy TEMP/wien.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/wien.txt  -R -JL -St$sizes2 -W$ths2/$wienclr   -K -O >> $psfilep04
psxy TEMP/wienD.txt -R -JL -St$sizes2 -G$wienclr         -K -O >> $psfilep04
psxy TEMP/wien.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Montenegro Pool
psxy TEMP/mnep.txt  -R -JL -Sc0.3     -W$thickE/$mnepclr -K -O >> $psfile07
psxy TEMP/mnep.txt  -R -JL -Sc0.3     -W$thickE/$mnepclr -K -O >> $psfile12
psxy TEMP/mnep.txt  -R -JL -St$sizes2 -W$ths2/$mnepclr   -K -O >> $psfile13
psxy TEMP/mnepD.txt -R -JL -St$sizes2 -G$mnepclr         -K -O >> $psfile13
psxy TEMP/mnep.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/mnep.txt  -R -JL -St$sizes2 -W$ths2/$mnepclr   -K -O >> $psfilep04
psxy TEMP/mnepD.txt -R -JL -St$sizes2 -G$mnepclr         -K -O >> $psfilep04
psxy TEMP/mnep.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# Kosovo Pool
psxy TEMP/kosv.txt  -R -JL -Sc0.3     -W$thickE/$kosvclr -K -O >> $psfile07
psxy TEMP/kosv.txt  -R -JL -Sc0.3     -W$thickE/$kosvclr -K -O >> $psfile12
psxy TEMP/kosv.txt  -R -JL -St$sizes2 -W$ths2/$kosvclr   -K -O >> $psfile13
psxy TEMP/kosvD.txt -R -JL -St$sizes2 -G$kosvclr         -K -O >> $psfile13
psxy TEMP/kosv.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/kosv.txt  -R -JL -St$sizes2 -W$ths2/$kosvclr   -K -O >> $psfilep04
psxy TEMP/kosvD.txt -R -JL -St$sizes2 -G$kosvclr         -K -O >> $psfilep04
psxy TEMP/kosv.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# NIEP Pool
psxy TEMP/niep.txt  -R -JL -Sc0.3     -W$thickE/$niepclr -K -O >> $psfile07
psxy TEMP/niep.txt  -R -JL -Sc0.3     -W$thickE/$niepclr -K -O >> $psfile12
psxy TEMP/niep.txt  -R -JL -St$sizes2 -W$ths2/$niepclr   -K -O >> $psfile13
psxy TEMP/niepD.txt -R -JL -St$sizes2 -G$niepclr         -K -O >> $psfile13
psxy TEMP/niep.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/niep.txt  -R -JL -St$sizes2 -W$ths2/$niepclr   -K -O >> $psfilep04
psxy TEMP/niepD.txt -R -JL -St$sizes2 -G$niepclr         -K -O >> $psfilep04
psxy TEMP/niep.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# KIT
psxy TEMP/kitp.txt  -R -JL -Sc0.3     -W$thickE/$kitpclr -K -O >> $psfile07
psxy TEMP/kitp.txt  -R -JL -Sc0.3     -W$thickE/$kitpclr -K -O >> $psfile12
psxy TEMP/kitp.txt  -R -JL -St$sizes2 -W$ths2/$kitpclr   -K -O >> $psfile13
psxy TEMP/kitpD.txt -R -JL -St$sizes2 -G$kitpclr         -K -O >> $psfile13
psxy TEMP/kitp.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfile13
psxy TEMP/kitp.txt  -R -JL -St$sizes2 -W$ths2/$kitpclr   -K -O >> $psfilep04
psxy TEMP/kitpD.txt -R -JL -St$sizes2 -G$kitpclr         -K -O >> $psfilep04
psxy TEMP/kitp.txt  -R -JL -St$sizeps -W$thps/$blck      -K -O >> $psfilep04

# not assigned
psxy TEMP/none.txt  -R -JL -Sc$sizes2 -W$thps/$noneclr   -K -O >> $psfile13
psxy TEMP/none.txt  -R -JL -Sc$sizes2 -W$thps/$noneclr   -K -O >> $psfilep04

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
psxy AUXI/netXX.txt -R -JL -St$sizeps -G$clrXX         -K -O >> $psfile16
psxy AUXI/netXX.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfile16
psxy AUXI/net1Y.txt -R -JL -St$sizeps -G$clr1Y         -K -O >> $psfilep10
psxy AUXI/net1Y.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/net2Y.txt -R -JL -St$sizeps -G$clr2Y         -K -O >> $psfilep10
psxy AUXI/net2Y.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/net4P.txt -R -JL -St$sizeps -G$clr4P         -K -O >> $psfilep10
psxy AUXI/net4P.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/net7B.txt -R -JL -St$sizeps -G$clr7B         -K -O >> $psfilep10
psxy AUXI/net7B.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/net9H.txt -R -JL -St$sizeps -G$clr9H         -K -O >> $psfilep10
psxy AUXI/net9H.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/netY5.txt -R -JL -St$sizeps -G$clrY5         -K -O >> $psfilep10
psxy AUXI/netY5.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/netY8.txt -R -JL -St$sizeps -G$clrY8         -K -O >> $psfilep10
psxy AUXI/netY8.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/netZ6.txt -R -JL -St$sizeps -G$clrZ6         -K -O >> $psfilep10
psxy AUXI/netZ6.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/netXP.txt -R -JL -St$sizeps -G$clrRF         -K -O >> $psfilep10
psxy AUXI/netXP.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10
psxy AUXI/netXX.txt -R -JL -St$sizeps -G$clrXX         -K -O >> $psfilep10
psxy AUXI/netXX.txt -R -JL -St$sizeps -W$thps/$blck    -K -O >> $psfilep10

# local experiments - map 01
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Vrancea
26.49 45.78 0.0 240 270
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Albania
20.1 40.85 +30.0 120 160
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Cephalonia
20.65 39.50 +50.0 120 240
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile01 # Marine North
19.5 41.5 -60.0 70 110
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile01 # Marine South
20.3 38.5 -60.0 70 110
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile01 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 02
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Vrancea
26.49 45.78 0.0 240 270
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Albania
20.1 40.85 +30.0 120 160
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Cephalonia
20.65 39.50 +50.0 120 240
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile02 # Marine North
19.5 41.5 -60.0 70 110
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile02 # Marine South
20.3 38.5 -60.0 70 110
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile02 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 06
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Vrancea
26.49 45.78 0.0 240 270
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Albania
20.1 40.85 +30.0 120 160
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Cephalonia
20.65 39.50 +50.0 120 240
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile06 # Marine North
19.5 41.5 -60.0 70 110
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile06 # Marine South
20.3 38.5 -60.0 70 110
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile06 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 03
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Vrancea
26.49 45.78 0.0 240 270
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Albania
20.1 40.85 +30.0 120 160
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Cephalonia
20.65 39.50 +50.0 120 240
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile03 # Marine North
19.5 41.5 -60.0 70 110
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile03 # Marine South
20.3 38.5 -60.0 70 110
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Italy
14.59 41.49 +32.0 140 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile03 # Slovakia
20.22 49.08 -12.0 270 80
end
# local experiments - map 09
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Vrancea
26.49 45.78 0.0 240 270
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Albania
20.1 40.85 +30.0 120 160
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # DuFAULT
16.6 43.60 +30.0 110 250
end
psxy -R -JL -W$thickX/255/255/255  -SE <<end -K -O >> $psfile09 # Cephalonia
20.65 39.50 +50.0 120 240
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile09 # Marine North
19.5 41.5 -60.0 70 110
end
psxy -R -JL -W$thickX/000/135/255  -SE <<end -K -O >> $psfile09 # Marine South
20.3 38.5 -60.0 70 110
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
pstext TEMP/closedT-label.txt       -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile01
pstext PERM/pFUTUolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile01
#pstext PERM/pUNKNlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile01
#pstext PERM/pUNKNolabel.txt         -R -JL -G$labcolorW -K -O >> $psfile01
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
pstext TEMP/rplabel.txt             -R -JL -G$labcolorW -K -O >> $psfile01
pstext PERM/pEIDAnoBBlabel.txt      -R -JL -G$labcolorW -K -O >> $psfile11 # labels for BB non-EIDA stations - permanent
pstext PERM/pEIDAnoBBlabel.txt      -R -JL -G$labcolorW -K -O >> $psfile18 # labels for BB non-EIDA stations - permanent
pstext TEMP/tEIDAnoBBlabel.txt      -R -JL -G$labcolorW -K -O >> $psfile18 # labels for BB non-EIDA stations - temporary
pstext TEMP/notDepllabel.txt        -R -JL -G$labcolorW -K -O >> $psfile18 # labels for not-deployed stations
pstext PERM/pNOSPlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pWHITlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pWHITolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pSPOTlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pSPOTolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pFUTUolabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
#pstext PERM/pUNKNlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile10
#pstext PERM/pUNKNolabel.txt         -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pUPGRlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB30label.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB30olabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB40label.txt          -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB40olabel.txt         -R -JL -G$labcolorB -K -O >> $psfile10
pstext PERM/pBB60label.txt          -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pBB60olabel.txt         -R -JL -G$labcolorW -K -O >> $psfile10
pstext PERM/pCLOSlabel.txt          -R -JL -G$labcolorW -K -O >> $psfile04
pstext TEMP/closedT-label.txt       -R -JL -G$labcolorW -K -O >> $psfile04
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
pstext TEMP/closedT-label.txt       -R -JL -G$labcolorW -K -O >> $psfile05
pstext PERM/pFUTUlabel.txt          -R -JL -G$labcolorB -K -O >> $psfile05
pstext PERM/pBB30label.txt          -R -JL -G$labcolorB -K -O >> $psfile05
pstext PERM/pBB40label.txt          -R -JL -G$labcolorB -K -O >> $psfile05
pstext PERM/pBB60label.txt          -R -JL -G$labcolorW -K -O >> $psfile05
pstext TEMP/mcent-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/meast-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/mwest-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/mnort-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05
pstext TEMP/mstea-label.txt         -R -JL -G$labcolorB -K -O >> $psfile05

# ESMH20 hazard map by EFEHR taken using the following command:
# http://appsrvr.share-eu.org:8080/share/map?id=81&lon1=-2&lat1=33&lon2=34&lat2=52.5&imt=PGA&hmapexceedprob=0.0021030&hmapexceedyears=1&soiltype=rock_vs30_800ms-1&aggregationtype=arithmetic&aggregationlevel=0.5
# where annual frequency of exceedance = 0.0021030 means return period = 475 years which means 10 percent probability of exceedance in 50 years
# maximum PGA for 475 years is = 0.74599 g
#makecpt -CAUXI/PGAscale-in.cpt -T-0.0/+0.6/0.001 -D > AUXI/PGAscale-out.cpt
#psxy AUXI/EFEHR-475r.txt    -R -JL -Sr -CAUXI/PGAscale-out.cpt -K -O >> $psfilep13 # to plot the hazard map as rectangles at every grid node
# the -R range is given in the nearneighbor command to match the range of the AdAtopo.grd and shadow.grd files
#nearneighbor AUXI/EFEHR-475.txt -R-3.1/+35.1/33.9/66.6 -GAUXI/EFEHR-475.grd -I0.01666666666666666666666 -S0.08d -N1
grdimage AUXI/EFEHR-475.grd -R$mapborder -JL -CAUXI/PGAscale-out.cpt -IAUXI/shadow.grd -Q -K -O >> $psfilep13

pscoast                     -R -JL -Di -N1/0.2p -W0.2p              -K -O >> $psfilep13
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0                     -K -O >> $psfilep13
psxy AUXI/borderLandA.dat   -R -JL -W1.3p/$temp                     -K -O >> $psfilep13
psxy AUXI/borderLandB.dat   -R -JL -W1.3p/$temp                     -K -O >> $psfilep13
psxy AUXI/borderLandC.dat   -R -JL -W1.3p/$temp                     -K -O >> $psfilep13
psxy AUXI/borderSeaA.dat    -R -JL -W1.3p+t2.0_2.0:0/$temp          -K -O >> $psfilep13
psxy AUXI/borderSeaB.dat    -R -JL -W1.3p+t2.0_2.0:0/$temp          -K -O >> $psfilep13
psxy AUXI/borderSeaC.dat    -R -JL -W1.3p+t2.0_2.0:0/$temp          -K -O >> $psfilep13
psxy AUXI/borderLandA.dat -R -JL -W1.3p/$temp            -K -O >> $psfilep05
psxy AUXI/borderLandB.dat -R -JL -W1.3p/$temp            -K -O >> $psfilep05
psxy AUXI/borderLandC.dat -R -JL -W1.3p/$temp            -K -O >> $psfilep05
psxy AUXI/borderSeaA.dat  -R -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep05
psxy AUXI/borderSeaB.dat  -R -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep05
psxy AUXI/borderSeaC.dat  -R -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep05
psxy AUXI/borderLandA.dat -R -JL -W1.3p/$temp            -K -O >> $psfilep06
psxy AUXI/borderLandB.dat -R -JL -W1.3p/$temp            -K -O >> $psfilep06
psxy AUXI/borderLandC.dat -R -JL -W1.3p/$temp            -K -O >> $psfilep06
psxy AUXI/borderSeaA.dat  -R -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep06
psxy AUXI/borderSeaB.dat  -R -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep06
psxy AUXI/borderSeaC.dat  -R -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep06

# plotting borders over the coverage circles
pscoast -R -Di -N1/0.2p -W0.2p -JL -K -O >> $psfile04
pscoast -R -Di -N1/0.2p -W0.2p -JL -K -O >> $psfile05
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0 -K -O >> $psfile04
psxy AUXI/kosovo-border.dat -R -JL -W0.2p/0/0/0 -K -O >> $psfile05

# logo
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep01
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep02
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep03
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep04
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep05
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep06
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep07
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep08
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep09
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep10
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.34 -K -O >> $psfilep11
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep12
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep13

# map of institutions
psxy AUXI/eidanodes-perm.txt  -R$mapbordeB -JL$mapproB -Ss0.4            -W1.5p/$eidaclr -K -O >> $psfile15
psxy AUXI/eidanodes-perm.txt  -R           -JL         -Ss0.5            -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/eidanodes-temp.txt  -R           -JL         -Ss0.5 -G$eidaclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/candidates.txt      -R           -JL         -Ss0.4 -G$candclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/pending.txt         -R           -JL         -Ss0.4 -G$pendclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/members.txt         -R           -JL         -Ss0.4 -G$membclr -W0.6p/$blck    -K -O >> $psfile15
psxy AUXI/eidanodes-perm.txt  -R           -JL         -Ss0.4            -W1.5p/$eidaclr -K -O >> $psfilep11
psxy AUXI/eidanodes-perm.txt  -R           -JL         -Ss0.5            -W0.6p/$blck    -K -O >> $psfilep11
psxy AUXI/eidanodes-temp.txt  -R           -JL         -Ss0.5 -G$eidaclr -W0.6p/$blck    -K -O >> $psfilep11
psxy AUXI/candidates.txt      -R           -JL         -Ss0.4 -G$candclr -W0.6p/$blck    -K -O >> $psfilep11
psxy AUXI/pending.txt         -R           -JL         -Ss0.4 -G$pendclr -W0.6p/$blck    -K -O >> $psfilep11
psxy AUXI/members.txt         -R           -JL         -Ss0.4 -G$membclr -W0.6p/$blck    -K -O >> $psfilep11

# --------------------------------------------------------------------- LEGENDS ------------------------------------------------------------
# plotting another "map" to each file, where only the legend is placed

gmtset TICK_LENGTH 0.0c
gmtset FRAME_PEN 0.8p
gmtset BASEMAP_TYPE plain

# legend to map 01
pscoast -R17.6/21.5/-4.9/4.0 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile01
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile01
17.95  3.50
end
psxy -R -JM -St0.6 -G$bb40 -W$thickL/$blck -K -O << end >> $psfile01
17.95  3.00
end
psxy -R -JM -St0.6 -G$bb30 -W$thickL/$blck -K -O << end >> $psfile01
17.95  2.50
end
psxy -R -JM -St0.6 -G$pcse -W$thickL/$blck  -K -O << end >> $psfile01
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
# temp stations - colors
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
psxy -R -JM -St0.4 -W$thickLM/$blck -K -O << end >> $psfile01
17.95 -4.50
end
# temp stations - contours
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
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile01
17.95 -4.50
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
18.3 -0.77 8 0 0 TL perm stations operational after
18.3 -1.00 8 0 0 TL May 2022 but closed now
18.3 -1.40 8 0 0 TL temporary West
18.3 -1.90 8 0 0 TL temporary Center
18.3 -2.40 8 0 0 TL temporary North
18.3 -2.90 8 0 0 TL temporary East
18.3 -3.40 8 0 0 TL temporary Southeast
18.3 -3.90 8 0 0 TL other temporary
18.3 -4.27 8 0 0 TL temp stations operational after
18.3 -4.50 8 0 0 TL May 2022 but closed now
end
# end of the legend to map 01

# legend to map 02
pscoast -R17.6/21.5/-3.9/3.0 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile02
psxy -R -JM -St0.6 -G$bb60 -W$thickL/$blck -K -O << end >> $psfile02
17.95  2.50
end
psxy -R -JM -St0.6 -G$bb40 -W$thickL/$blck -K -O << end >> $psfile02
17.95  2.00
end
psxy -R -JM -St0.6 -G$bb30 -W$thickL/$blck -K -O << end >> $psfile02
17.95  1.50
end
psxy -R -JM -St0.6 -G$pcse -W$thickL/$blck   -K -O << end >> $psfile02
17.95  1.00
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile02
17.95  0.50
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile02
17.95  0.00
end
# temporary stations - colors
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
psxy -R -JM -St0.4 -W$thickLM/$blck -K -O << end >> $psfile02
17.95 -3.50
end
# temporary stations - contours
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
psxy -R -JM -St0.6 -W$thickL/$blck -K -O << end >> $psfile02
17.95 -3.50
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
18.3  0.23 8 0 0 TL perm stations operational after
18.3  0.00 8 0 0 TL May 2022 but closed now
18.3 -0.40 8 0 0 TL temporary West
18.3 -0.90 8 0 0 TL temporary Center
18.3 -1.40 8 0 0 TL temporary North
18.3 -1.90 8 0 0 TL temporary East
18.3 -2.40 8 0 0 TL temporary Southeast
18.3 -2.90 8 0 0 TL other temporary
18.3 -3.27 8 0 0 TL temp stations operational after
18.3 -3.50 8 0 0 TL May 2022 but closed now
end
# end of the legend to map 02

# legend to map 03
pscoast -R17.6/21.5/-2.4/2.0 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile03
psxy -R -JM -St0.6 -G$perm -W$thickL/$blck -K -O << end >> $psfile03
17.95  1.50
end
psxy -R -JM -St0.6 -G$futu -W$thickL/$blck -K -O << end >> $psfile03
17.95  1.00
end
psxy -R -JM -St0.6 -G$blck -W$thickL/$blck -K -O << end >> $psfile03
17.95  0.50
end
# temporary stations - colors
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
18.3  0.10 8 0 0 TL temporary West
18.3 -0.40 8 0 0 TL temporary Center
18.3 -0.90 8 0 0 TL temporary North
18.3 -1.40 8 0 0 TL temporary East
18.3 -1.90 8 0 0 TL temporary Southeast
end
# end of the legend to map 03

# legend to map 04
pscoast -R17.6/21.0/-2.9/2.5 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile04
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
18.3 -0.40 8 0 0 TL temporary West
18.3 -0.90 8 0 0 TL temporary Center
18.3 -1.40 8 0 0 TL temporary North
18.3 -1.90 8 0 0 TL temporary East
18.3 -2.40 8 0 0 TL temporary Southeast
end
# end of the legend to map 04

# legend to map 05
pscoast -R17.6/21.0/-2.9/2.5 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile05
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
18.3 -0.40 8 0 0 TL temporary West
18.3 -0.90 8 0 0 TL temporary Center
18.3 -1.40 8 0 0 TL temporary North
18.3 -1.90 8 0 0 TL temporary East
18.3 -2.40 8 0 0 TL temporary Southeast
end
# end of the legend to map 05

# legend to map 06
pscoast -R17.6/21.5/-1.4/1.0 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile06
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
18.3 -0.90 8 0 0 TL temporary BB stations
end
# end of the legend to map 06

# legend to map 07
pscoast -R17.6/21.5/-8.8/7.3 -Dc -JM20/60/4.3c -G$graylg -S$graylg -Y+0.2 -X+24.0 -K -O >> $psfile07
# temporary stations - circles
psxy -R -JM -Sc$circsize -W$thickLC/$gigeclr -K -O << end >> $psfile07 # Geoazur + GIPP
17.95  7.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$jenaclr -K -O << end >> $psfile07 # Jena
17.95  6.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$gippclr -K -O << end >> $psfile07 # GIPP
17.95  6.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$kitpclr -K -O << end >> $psfile07 # KIT
17.95  5.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$niepclr -K -O << end >> $psfile07 # NIEP Pool
17.95  5.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$kosvclr -K -O << end >> $psfile07 # Kosovo Pool
17.95  4.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$mnepclr -K -O << end >> $psfile07 # Montenegro Pool
17.95  4.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$csscclr -K -O << end >> $psfile07 # CSS
17.95  3.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$boloclr -K -O << end >> $psfile07 # Bologna
17.95  3.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$ethzclr -K -O << end >> $psfile07 # ETH
17.95  2.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$ogsiclr -K -O << end >> $psfile07 # OGS
17.95  2.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$resfclr -K -O << end >> $psfile07 # France
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
# triangles - temporary stations
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
18.3  7.1 7.5 0 0 TL Geoazur + GIPP
18.3  6.6 7.5 0 0 TL Uni Jena, Germany
18.3  6.1 7.5 0 0 TL GIPP, GFZ, Germany
18.3  5.6 7.5 0 0 TL Karlsruhe IT, Germany
18.3  5.1 7.5 0 0 TL NIEP Pool, Romania
18.3  4.6 7.5 0 0 TL Kosovo Pool
18.3  4.1 7.5 0 0 TL Montenegro Pool
18.3  3.6 7.5 0 0 TL Croatia Seism. Survey
18.3  3.1 7.5 0 0 TL INGV Bologna, Italy
18.3  2.6 7.5 0 0 TL ETH Zurich, Switzerland
18.3  2.1 7.5 0 0 TL OGS, Italy
18.3  1.6 7.5 0 0 TL Resif-Sismob, France
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
18.3 -6.4 7.5 0 0 TL temporary West
18.3 -6.9 7.5 0 0 TL temporary Center
18.3 -7.4 7.5 0 0 TL temporary North
18.3 -7.9 7.5 0 0 TL temporary East
18.3 -8.4 7.5 0 0 TL temporary Southeast
end
# end of the legend to map 07

# legend to map 08 - GNSS
pscoast -R17.6/21.5/-0.9/1.0 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile08
psxy -R -JM -Sc0.5 -G255/0/0 -K -O << end >> $psfile08
17.95  0.50
end
psxy -R -JM -Sc0.5 -G0/255/0 -K -O << end >> $psfile08
17.95  0.0
end
psxy -R -JM -Sc0.5 -G$outs -K -O << end >> $psfile08
17.95 -0.50
end
# text legendy
pstext -R -JM -G0/0/0 -K -O << end >> $psfile08
18.3  0.74 8 0 0 TL stations available through
18.3  0.49 8 0 0 TL EPOS data portal
18.3  0.10 8 0 0 TL other stations
18.3 -0.40 8 0 0 TL additional stations
end
# end of the legend to map 08

# legend to map 09
pscoast -R17.6/21.5/-1.4/1.5 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile09
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
18.3 -0.4 8 0 0 TL temporary BB stations
18.3 -0.9 8 0 0 TL additional BB stations
end
# end of the legend to map 09

# legend to map 10
pscoast -R17.6/21.5/-2.4/2.5 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile10
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
pscoast -R17.6/21.5/-0.9/0.5 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile11
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
pscoast -R17.6/21.5/-7.8/6.3 -Dc -JM20/60/4.3c -G$graylg -S$graylg -Y+0.2 -X+24.0 -K -O >> $psfile12
# temporary stations - circles
psxy -R -JM -Sc$circsize -W$thickLC/$gigeclr -K -O << end >> $psfile12 # Geoazur + GIPP
17.95  6.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$jenaclr -K -O << end >> $psfile12 # Jena
17.95  5.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$gippclr -K -O << end >> $psfile12 # GIPP
17.95  5.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$kitpclr -K -O << end >> $psfile12 # KIT
17.95  4.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$niepclr -K -O << end >> $psfile12 # NIEP Pool
17.95  4.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$kosvclr -K -O << end >> $psfile12 # Kosovo Pool
17.95  3.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$mnepclr -K -O << end >> $psfile12 # Montenegro Pool
17.95  3.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$csscclr -K -O << end >> $psfile12 # CSS
17.95  2.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$boloclr -K -O << end >> $psfile12 # Bologna
17.95  2.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$ethzclr -K -O << end >> $psfile12 # ETH
17.95  1.5
end
psxy -R -JM -Sc$circsize -W$thickLC/$ogsiclr -K -O << end >> $psfile12 # OGS
17.95  1.0
end
psxy -R -JM -Sc$circsize -W$thickLC/$resfclr -K -O << end >> $psfile12 # France
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
# triangles - temporary stations
psxy -R -JM -St$triasize -G$temp -W$thickL/$blck -K -O << end >> $psfile12
17.95 -7.5
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile12
18.3  6.1 7.5 0 0 TL Geoazur + GIPP
18.3  5.6 7.5 0 0 TL Uni Jena, Germany
18.3  5.1 7.5 0 0 TL GIPP, GFZ, Germany
18.3  4.6 7.5 0 0 TL Karlsruhe IT, Germany
18.3  4.1 7.5 0 0 TL NIEP Pool, Romania
18.3  3.6 7.5 0 0 TL Kosovo Pool
18.3  3.1 7.5 0 0 TL Montenegro Pool
18.3  2.6 7.5 0 0 TL Croatia Seism. Survey
18.3  2.1 7.5 0 0 TL INGV Bologna, Italy
18.3  1.6 7.5 0 0 TL ETH Zurich, Switzerland
18.3  1.1 7.5 0 0 TL OGS, Italy
18.3  0.6 7.5 0 0 TL Resif-Sismob, France
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
18.3 -7.4 7.5 0 0 TL temporary BB stations
end
# end of the legend to map 12

# legend to map 13
pscoast -R17.6/21.5/-8.3/7.4 -Dc -JM20/60/4.3c -G$graylg -S$graylg -Y+0.2 -X+24.0 -K -O >> $psfile13
psxy -R -JM -St$triasize -G$gigeclr -W$thickL/$blck -K -O << end >> $psfile13 # Geoazur + GIPP - triangle
17.95  7.0
end
psxy -R -JM -Sc0.16 -G$gippclr                      -K -O << end >> $psfile13 # Geoazur + GIPP - dot
17.95  7.0
end
psxy -R -JM -St$triasize -G$jenaclr -W$thickL/$blck -K -O << end >> $psfile13 # Jena
17.95  6.5
end
psxy -R -JM -St$triasize -G$gippclr -W$thickL/$blck -K -O << end >> $psfile13 # GIPP
17.95  6.0
end
psxy -R -JM -St$triasize -G$gippclr -W$thickL/$blck -K -O << end >> $psfile13 # GIPP + IRSM
17.95  5.5
end
psxy -R -JM -Sc0.16 -G$irsmclr                      -K -O << end >> $psfile13 # GIPP + IRSM
17.95  5.5
end
psxy -R -JM -St$triasize -G$gippclr -W$thickL/$blck -K -O << end >> $psfile13 # GIPP + CarP
17.95  5.0
end
psxy -R -JM -Sc0.16 -G$jenaclr                      -K -O << end >> $psfile13 # GIPP + CarP
17.95  5.0
end
psxy -R -JM -St$triasize -G$kitpclr -W$thickL/$blck -K -O << end >> $psfile13 # KIT
17.95  4.5
end
psxy -R -JM -St$triasize -G$niepclr -W$thickL/$blck -K -O << end >> $psfile13 # NIEP Pool
17.95  4.0
end
psxy -R -JM -St$triasize -G$kosvclr -W$thickL/$blck -K -O << end >> $psfile13 # Kosovo Pool
17.95  3.5
end
psxy -R -JM -St$triasize -G$mnepclr -W$thickL/$blck -K -O << end >> $psfile13 # Montenegro Pool
17.95  3.0
end
psxy -R -JM -St$triasize -G$csscclr -W$thickL/$blck -K -O << end >> $psfile13 # CSS
17.95  2.5
end
psxy -R -JM -St$triasize -G$boloclr -W$thickL/$blck -K -O << end >> $psfile13 # Bologna
17.95  2.0
end
psxy -R -JM -St$triasize -G$ethzclr -W$thickL/$blck -K -O << end >> $psfile13 # ETH
17.95  1.5
end
psxy -R -JM -St$triasize -G$ogsiclr -W$thickL/$blck -K -O << end >> $psfile13 # OGS
17.95  1.0
end
psxy -R -JM -St$triasize -G$resfclr -W$thickL/$blck -K -O << end >> $psfile13 # France
17.95  0.5
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
18.3  7.1 7.5 0 0 TL Geoazur + GIPP
18.3  6.6 7.5 0 0 TL Uni Jena, Germany
18.3  6.1 7.5 0 0 TL GIPP, GFZ, Germany
18.3  5.6 7.5 0 0 TL GIPP + IRSM
18.3  5.1 7.5 0 0 TL GIPP + Carpathian Project
18.3  4.6 7.5 0 0 TL Karlsruhe IT, Germany
18.3  4.1 7.5 0 0 TL NIEP Pool, Romania
18.3  3.6 7.5 0 0 TL Kosovo Pool
18.3  3.1 7.5 0 0 TL Montenegro Pool
18.3  2.6 7.5 0 0 TL Croatia Seism. Survey
18.3  2.1 7.5 0 0 TL INGV Bologna, Italy
18.3  1.6 7.5 0 0 TL ETH Zurich, Switzerland
18.3  1.1 7.5 0 0 TL OGS, Italy
18.3  0.6 7.5 0 0 TL Resif-Sismob, France
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
pscoast -R17.6/21.5/-1.4/0.9 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile14
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
pscoast -R17.6/21.5/-1.9/1.4 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile15
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
pscoast -R17.6/21.5/-2.4/2.9 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile16
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
psxy -R -JM -St0.6 -G$clrXX -W$thickL/$blck -K -O << end >> $psfile16
17.95 -2.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfile16
18.3  2.6  8 0 0 TL 1Y (NOA, embargo)
18.3  2.1  8 0 0 TL 2Y (INGV, embargo)
18.3  1.6  8 0 0 TL 4P (INGV, open)
18.3  1.1  8 0 0 TL 7B (ODC, open)
18.3  0.6  8 0 0 TL 9H (UIB-NORSAR, embargo)
18.3  0.1  8 0 0 TL Y5 (ETHZ, open)
18.3 -0.4  8 0 0 TL Y8 (NIEP, embargo)
18.3 -0.9  8 0 0 TL Z6 (LMU, embargo)
18.3 -1.4  8 0 0 TL XP (RESIF, open)
18.3 -1.77 8 0 0 TL permanent codes used for
18.3 -2.0  8 0 0 TL temporary equipment (open)
end
# end of the legend to map 16

# legend to map 17
pscoast -R17.6/21.5/-1.9/1.4 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile17
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
pscoast -R17.6/21.5/-0.9/0.9 -Dc -JM20/60/4.95c -G$graylg -S$graylg -Y+5.2 -X+23.1 -K -O >> $psfile18
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

# legend to map p01 - TECTONICS - for paper
pscoast -R-6.0/+6.0/-1.10/0.30 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-3.40 -X+0.0 -K -O >> $psfilep01
psxy -R -JM -W1.8p/$thrst -Sf+0.7/5.0prt:5p -G$thrst -K -O << end >> $psfilep01
-5.8 0.10
-4.5 0.10
end
#psxy -R -JM -W0.9p/$thrst -Sf+0.3/3.0prt:5p -G$thrst -K -O << end >> $psfilep01
#-5.8 0.03
#-4.5 0.03
#end
psxy -R -JM -W1.8p/$slips                            -K -O << end >> $psfilep01
-1.8 0.10
-0.5 0.10
end
#psxy -R -JM -W0.9p/$slips                            -K -O << end >> $psfilep01
#-1.8 0.03
#-0.5 0.03
#end
psxy -R -JM -W1.2p/$exten -Sf+0.2/7.0prf:7p          -K -O << end >> $psfilep01
+2.20 0.10
+3.50 0.10
end
#psxy -R -JM -W0.9p/$exten                            -K -O << end >> $psfilep01
#+2.2 0.03
#+3.5 0.03
#end
#psxy -R -JM -W0.45p/$exten -Sf+0.3/4.0prb:5p         -K -O << end >> $psfilep01
#+2.2 0.03
#+3.5 0.03
#end
psxy -R -JM -W0.3p/$blck -G196/149/149 -K -O << end >> $psfilep01 # undeformedIberia
-5.8 -0.15
-5.0 -0.15
-5.0 -0.38
-5.8 -0.38
-5.8 -0.15
end
psxy -R -JM -W0.3p/$blck -G236/209/209 -K -O << end >> $psfilep01 # deformed Iberia - light pinkish
-5.8 -0.45
-5.0 -0.45
-5.0 -0.68
-5.8 -0.68
-5.8 -0.45
end
psxy -R -JM -W0.3p/$blck -G217/217/112 -K -O << end >> $psfilep01 # deformed Africa
-2.8 -0.15
-2.0 -0.15
-2.0 -0.38
-2.8 -0.38
-2.8 -0.15
end
psxy -R -JM -W0.3p/$blck -G225/229/177 -K -O << end >> $psfilep01 # undeformed Africa
-2.8 -0.45
-2.0 -0.45
-2.0 -0.68
-2.8 -0.68
-2.8 -0.45
end
psxy -R -JM -W0.3p/$blck -G171/123/085 -K -O << end >> $psfilep01 # undeformed Adria
+0.2 -0.15
+1.0 -0.15
+1.0 -0.38
+0.2 -0.38
+0.2 -0.15
end
psxy -R -JM -W0.3p/$blck -G228/205/170 -K -O << end >> $psfilep01 # deformed Adria
+0.2 -0.45
+1.0 -0.45
+1.0 -0.68
+0.2 -0.68
+0.2 -0.45
end
psxy -R -JM -W0.3p/$blck -G180/180/180 -K -O << end >> $psfilep01 # undeformed Eurasia
+3.2 -0.15
+4.0 -0.15
+4.0 -0.38
+3.2 -0.38
+3.2 -0.15
end
psxy -R -JM -W0.3p/$blck -G191/217/206 -K -O << end >> $psfilep01 # deformed Eurasia
+3.2 -0.45
+4.0 -0.45
+4.0 -0.68
+3.2 -0.68
+3.2 -0.45
end
psxy -R -JM -W0.3p/$blck -G145/160/153 -K -O << end >> $psfilep01 # AlKaPeCa
-5.8 -0.75
-5.0 -0.75
-5.0 -0.98
-5.8 -0.98
-5.8 -0.75
end
psxy -R -JM -W0.3p/$blck -G075/180/233 -K -O << end >> $psfilep01 # E - light blue
-2.8 -0.75
-2.0 -0.75
-2.0 -0.98
-2.8 -0.98
-2.8 -0.75
end
psxy -R -JM -W0.3p/$blck -G076/121/169 -K -O << end >> $psfilep01 # F - dark blue
+0.2 -0.75
+1.0 -0.75
+1.0 -0.98
+0.2 -0.98
+0.2 -0.75
end
psxy -R -JM -W0.3p/$blck -G166/162/209 -K -O << end >> $psfilep01 # Anatolia - purplish
+3.2 -0.75
+4.0 -0.75
+4.0 -0.98
+3.2 -0.98
+3.2 -0.75
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep01
-4.3  0.17 10 0 0 TL main thrust fronts
-0.3  0.17 10 0 0 TL main strike slip faults
+3.7  0.17 10 0 0 TL main extensional faults
-4.8 -0.2 10 0 0 TL undeformed Iberia
-4.8 -0.5 10 0 0 TL deformed Iberia
-4.8 -0.8 10 0 0 TL AlKaPeCa
-1.8 -0.2 10 0 0 TL undeformed Africa
-1.8 -0.5 10 0 0 TL deformed Africa
-1.8 -0.8 10 0 0 TL young oceanic
+1.2 -0.2 10 0 0 TL undeformed Adria
+1.2 -0.5 10 0 0 TL deformed Adria
+1.2 -0.8 10 0 0 TL old oceanic
+4.2 -0.2 10 0 0 TL undeformed Eurasia
+4.2 -0.5 10 0 0 TL deformed Eurasia
+4.2 -0.8 10 0 0 TL Anatolia
end
# end of the legend to map p01

# legend to map p02 - EXPERIMENTS - for paper
pscoast -R-6.0/+6.0/-0.5/0.6 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-2.8 -X+0.0 -K -O >> $psfilep02
psxy -R -JM -St$triasize -G$perm  -W$thickLp/$blck -K -O << end >> $psfilep02
-5.8 0.3
end
psxy -R -JM -St$triasize -G$futu  -W$thickLp/$blck -K -O << end >> $psfilep02
-2.8 0.3
end
psxy -R -JM -St$triasize -G$blck  -W$thickLp/$blck -K -O << end >> $psfilep02
+0.2 0.3
end
psxy -R -JM -St$triasize -G$outsA -W$thickLp/$blck -K -O << end >> $psfilep02 # additional
+3.5 0.3
end
psxy -R -JM -St$triasize -G$temp  -W$thickLp/$blck -K -O << end >> $psfilep02
-5.8 0.0
end
psxy -R -JM -St$triasize -G$grAA  -W$thickLp/$blck -K -O << end >> $psfilep02
-2.8 0.0
end
psxy -R -JM -St0.3       -G$ouluclr -W$thickLp/$blck -K -O << end >> $psfilep02 # CASE
+0.2 0.0
end
psxy -R -JM -St0.3       -G$wienclr -W$thickLp/$blck -K -O << end >> $psfilep02 # IVREA
+3.2 0.0
end
psxy -R -JM -St0.3       -G$municlr -W$thickLp/$blck -K -O << end >> $psfilep02 # Swath D
-5.8 -0.3
end
psxy -R -JM -St0.3       -G$igczclr -W$thickLp/$blck -K -O << end >> $psfilep02 # EASI
-3.5 -0.3
end
psxy -R -JM -St0.3       -G$twenclr -W$thickLp/$blck -K -O << end >> $psfilep02 # LiSard
-1.2 -0.3
end
psxy -R -JM -St0.3       -G$aarhclr -W$thickLp/$blck -K -O << end >> $psfilep02 # Stress Transfer
+0.9 -0.3
end
psxy -R -JM -St0.3       -G$polaclr -W$thickLp/$blck -K -O << end >> $psfilep02 # Cifalps
+3.0 -0.3
end
psxy -R -JM -St0.3       -G$resfclr -W$thickLp/$blck -K -O << end >> $psfilep02 # Cifalps2
+3.4 -0.3
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep02
-5.55  0.53 10 0 0 TL permanent BB stations
-5.55  0.33 10 0 0 TL in the AdriaArray region
-2.55  0.43 10 0 0 TL planned permanent stations
+0.45  0.53 10 0 0 TL perm. and temp. active after
+0.45  0.33 10 0 0 TL May 2022, closed before Jan 2025
+3.75  0.43 10 0 0 TL additional BB stations
-5.55  0.08 10 0 0 TL active temporary AdriaArray
-2.55  0.18 10 0 0 TL AlpArray and PACASE closed
-2.55 -0.02 10 0 0 TL before May 2022
+0.45  0.08 10 0 0 TL CASE
+3.45  0.08 10 0 0 TL IvreaArray
-5.55 -0.22 10 0 0 TL Swath-D
-3.25 -0.22 10 0 0 TL EASI
-0.95 -0.22 10 0 0 TL LiSard
+1.15 -0.22 10 0 0 TL StressTransfer
+3.15 -0.22 10 0 0 TL +        CIFALPS + CIFALPS2
end
# end of the legend to map p02

# legend to map p03 - colored topography and bathymetry  - for paper
pscoast -R-6.0/+6.0/-0.35/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-2.05 -X+0.0 -K -O >> $psfilep03
psscale -CAUXI/cl.cpt -D+5.5c/1.08/10.0c/0.5ch -K -O -B2000.0f1000.0 >> $psfilep03
psxy -R -JM -St$triasize -G$topo -W$thickLp/$blck -K -O << end >> $psfilep03
+2.4 0.0
end
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep03
-0.4  0.1 10 0 0 TL bathymetry & topography [m]
+2.65  0.1 10 0 0 TL permanent and temporary BB stations
end
# end of the legend to map p03

# legend to map p04 - DEPLOYED - for paper
pscoast -R-6.0/+6.0/-1.25/1.05 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-5.1 -X+0.0 -K -O >> $psfilep04
psxy -R -JM -St$triasize -G$grey    -W$thickLp/$blck -K -O << end >> $psfilep04 # permanent
-5.8 +0.84
end
psxy -R -JM -St$triasize -G$igczclr -W$thickLp/$blck -K -O << end >> $psfilep04 # IG CAS CZ
-5.8 +0.56
end
psxy -R -JM -St$triasize -G$helsclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Helsinki
-5.8 +0.28
end
psxy -R -JM -St$triasize -G$helsclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Helsinki+IRSM
-5.8  0.0
end
psxy -R -JM -Sc0.16 -G$irsmclr                      -K -O << end >> $psfilep04 # Helsinki+IRSM
-5.8  0.0
end
psxy -R -JM -St$triasize -G$aarhclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Denmark
-5.8 -0.28
end
psxy -R -JM -St$triasize -G$polaclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Poland
-5.8 -0.56
end
psxy -R -JM -St$triasize -G$ouluclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Oulu
-5.8 -0.84
end
psxy -R -JM -St$triasize -G$ouluclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Oulu+UniWien
-5.8 -1.12
end
psxy -R -JM -Sc0.16 -G$wienclr                      -K -O << end >> $psfilep04 # Oulu+UniWien
-5.8 -1.12
end
psxy -R -JM -St$triasize -G$brzgclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Norway + Zagreb
-2.8 +0.84
end
psxy -R -JM -St$triasize -G$kielclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Kiel
-2.8 +0.56
end
psxy -R -JM -St$triasize -G$epssclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Hungary
-2.8 +0.28
end
psxy -R -JM -St$triasize -G$twenclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Netherlands
-2.8 -0.00
end
psxy -R -JM -St$triasize -G$bochclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Bochum
-2.8 -0.28
end
psxy -R -JM -St$triasize -G$bochclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Bochum + Frankfurt
-2.8 -0.56
end
psxy -R -JM -Sc0.16 -G$frnkclr                      -K -O << end >> $psfilep04 # Bochum + Frankfurt
-2.8 -0.56
end
psxy -R -JM -St$triasize -G$municlr -W$thickLp/$blck -K -O << end >> $psfilep04 # Munich
-2.8 -0.84
end
psxy -R -JM -St$triasize -G$wienclr -W$thickLp/$blck -K -O << end >> $psfilep04 # UniWien
-2.8 -1.12
end
psxy -R -JM -St$triasize -G$resfclr -W$thickLp/$blck -K -O << end >> $psfilep04 # France
+0.2 +0.84
end
psxy -R -JM -St$triasize -G$ogsiclr -W$thickLp/$blck -K -O << end >> $psfilep04 # OGS
+0.2 +0.56
end
psxy -R -JM -St$triasize -G$ethzclr -W$thickLp/$blck -K -O << end >> $psfilep04 # ETH
+0.2 +0.28
end
psxy -R -JM -St$triasize -G$boloclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Bologna
+0.2 0.00
end
psxy -R -JM -St$triasize -G$csscclr -W$thickLp/$blck -K -O << end >> $psfilep04 # CSS
+0.2 -0.28
end
psxy -R -JM -St$triasize -G$mnepclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Montenegro Pool
+0.2 -0.56
end
psxy -R -JM -St$triasize -G$kosvclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Kosovo Pool
+0.2 -0.84
end
psxy -R -JM -St$triasize -G$niepclr -W$thickLp/$blck -K -O << end >> $psfilep04 # NIEP Pool
+3.2  0.84
end
psxy -R -JM -St$triasize -G$kitpclr -W$thickLp/$blck -K -O << end >> $psfilep04 # KIT
+3.2  0.56
end
psxy -R -JM -St$triasize -G$gippclr -W$thickLp/$blck -K -O << end >> $psfilep04 # GIPP + IRSM
+3.2  0.28
end
psxy -R -JM -Sc0.16 -G$irsmclr                      -K -O << end >> $psfilep04 # GIPP + IRSM
+3.2  0.28
end
psxy -R -JM -St$triasize -G$gippclr -W$thickLp/$blck -K -O << end >> $psfilep04 # GIPP + CarP
+3.2  0.0
end
psxy -R -JM -Sc0.16 -G$jenaclr                      -K -O << end >> $psfilep04 # GIPP + CarP
+3.2  0.0
end
psxy -R -JM -St$triasize -G$gippclr -W$thickLp/$blck -K -O << end >> $psfilep04 # GIPP
+3.2  -0.28
end
psxy -R -JM -St$triasize -G$jenaclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Jena
+3.2  -0.56
end
psxy -R -JM -St$triasize -G$gigeclr -W$thickLp/$blck -K -O << end >> $psfilep04 # Geoazur + GIPP
+3.2  -0.84
end
psxy -R -JM -Sc0.16 -G$gippclr                      -K -O << end >> $psfilep04 # Geoazur + GIPP
+3.2  -0.84
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep04
-5.6 +0.94 10 0 0 TL permanent BB stations
-5.6 +0.66 10 0 0 TL IG CAS Prague, CZ
-5.6 +0.38 10 0 0 TL Uni Helsinki, Finland
-5.6 +0.10 10 0 0 TL Uni Helsinki + IRSM Prague
-5.6 -0.18 10 0 0 TL Uni Aarhus, Denmark
-5.6 -0.46 10 0 0 TL Unis + PAS, Poland
-5.6 -0.74 10 0 0 TL Uni Oulu, Finland
-5.6 -1.02 10 0 0 TL Uni Oulu + Uni Wien
-2.6 +0.94 10 0 0 TL Norwegian Pool + UniZagreb
-2.6 +0.66 10 0 0 TL Uni Kiel, Germany
-2.6 +0.38 10 0 0 TL EPSS, Hungary
-2.6 +0.10 10 0 0 TL Uni Twente, the Netherlands
-2.6 -0.18 10 0 0 TL Uni Bochum, Germany
-2.6 -0.46 10 0 0 TL Uni Bochum + Uni Frankfurt
-2.6 -0.74 10 0 0 TL Uni Munich, Germany
-2.6 -1.02 10 0 0 TL Uni Wien, Austria
+0.4 +0.94 10 0 0 TL Resif-Sismob, France
+0.4 +0.66 10 0 0 TL OGS, Italy
+0.4 +0.38 10 0 0 TL ETH Zurich, Switzerland
+0.4 +0.10 10 0 0 TL INGV Bologna, Italy
+0.4 -0.18 10 0 0 TL Croatia Seism. Survey
+0.4 -0.46 10 0 0 TL Montenegro Pool
+0.4 -0.74 10 0 0 TL Kosovo Pool
+3.4 +0.94 10 0 0 TL NIEP Pool, Romania
+3.4 +0.66 10 0 0 TL Karlsruhe IT, Germany
+3.4 +0.38 10 0 0 TL GIPP + IRSM
+3.4 +0.10 10 0 0 TL GIPP + Carpathian Project
+3.4 -0.18 10 0 0 TL GIPP, GFZ, Germany
+3.4 -0.46 10 0 0 TL Uni Jena, Germany
+3.4 -0.74 10 0 0 TL Geoazur + GIPP
end
# end of the legend to map p04

# legend to map p05 - COVERAGE, permanent stations - for paper
pscoast -R-6.0/+6.0/-0.25/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-1.85 -X+0.0 -K -O >> $psfilep05
psxy -R -JM -Sc0.15 -G$ci10 -K -O << end >> $psfilep05
-5.8 0.03
end
psxy -R -JM -Sc0.30 -G$ci20 -K -O << end >> $psfilep05
-2.8 0.03
end
psxy -R -JM -Sc0.45 -G$ci30 -K -O << end >> $psfilep05
+0.2 0.03
end
psxy -R -JM -Sc0.60 -G$ci40 -K -O << end >> $psfilep05
+3.2 0.03
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep05
-5.62  0.1 10 0 0 TL 10 km radius coverage
-2.58  0.1 10 0 0 TL 20 km radius coverage
+0.44  0.1 10 0 0 TL 30 km radius coverage
+3.46  0.1 10 0 0 TL 40 km radius coverage
end
# end of the legend to map p06

# legend to map p06 - COVERAGE, both permanent and temporary - for paper
pscoast -R-6.0/+6.0/-0.25/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-1.85 -X+0.0 -K -O >> $psfilep06
psxy -R -JM -Sc0.15 -G$ci10 -K -O << end >> $psfilep06
-5.8 0.03
end
psxy -R -JM -Sc0.30 -G$ci20 -K -O << end >> $psfilep06
-2.8 0.03
end
psxy -R -JM -Sc0.45 -G$ci30 -K -O << end >> $psfilep06
+0.2 0.03
end
psxy -R -JM -Sc0.60 -G$ci40 -K -O << end >> $psfilep06
+3.2 0.03
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep06
-5.62  0.1 10 0 0 TL 10 km radius coverage
-2.58  0.1 10 0 0 TL 20 km radius coverage
+0.44  0.1 10 0 0 TL 30 km radius coverage
+3.46  0.1 10 0 0 TL 40 km radius coverage
end
# end of the legend to map p06

# legend to map p07 - COMPLETE - for paper
pscoast -R-6.0/+6.0/-0.80/0.60 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-3.38 -X+0.0 -K -O >> $psfilep07
psxy -R -JM -St0.6 -G$bb60 -W$thickLp/$blck -K -O << end >> $psfilep07
-5.8  0.30
end
psxy -R -JM -St0.6 -G$bb40 -W$thickLp/$blck -K -O << end >> $psfilep07
-5.8  0.00
end
psxy -R -JM -St0.6 -G$bb30 -W$thickLp/$blck -K -O << end >> $psfilep07
-5.8 -0.3
end
psxy -R -JM -St0.6 -G$futu -W$thickLp/$blck -K -O << end >> $psfilep07
-5.8 -0.6
end
psxy -R -JM -St0.6 -G$upgr -W$thickLp/$blck -K -O << end >> $psfilep07
-2.8  0.3
end
psxy -R -JM -St0.6 -G$blck -W$thickLp/$blck -K -O << end >> $psfilep07
-2.8 -0.15
end
psxy -R -JM -St0.6 -G$pcse -W$thickLp/$blck  -K -O << end >> $psfilep07
-2.8 -0.6
end
psxy -R -JM -St0.4 -W$thickLM/$westP -K -O << end >> $psfilep07
+0.2  0.3
end
psxy -R -JM -St0.4 -W$thickLM/$centP -K -O << end >> $psfilep07
+0.2  0.00
end
psxy -R -JM -St0.4 -W$thickLM/$nortP -K -O << end >> $psfilep07
+0.2 -0.3
end
psxy -R -JM -St0.4 -W$thickLM/$eastP -K -O << end >> $psfilep07
+0.2 -0.6
end
psxy -R -JM -St0.4 -W$thickLM/$steaP -K -O << end >> $psfilep07
+3.2  0.3
end
psxy -R -JM -St0.4 -W$thickLM/$blck -K -O << end >> $psfilep07
+3.2 -0.15
end
psxy -R -JM -St0.4 -W$thickLM/$outs -K -O << end >> $psfilep07
+3.2 -0.6
end
# temp stations - contours
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+0.2  0.3
end
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+0.2  0.00
end
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+0.2 -0.3
end
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+0.2 -0.6
end
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+3.2  0.3
end
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+3.2 -0.15
end
psxy -R -JM -St0.6 -W$thickLp/$blck -K -O << end >> $psfilep07
+3.2 -0.6
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep07
-5.55  0.40 10 0 0 TL permanent BB >= 60s
-5.55  0.10 10 0 0 TL permanent 40s <= BB < 60s
-5.55 -0.20 10 0 0 TL permanent 30s
-5.55 -0.50 10 0 0 TL permanent planned
-2.55  0.40 10 0 0 TL permanent SM, SP, BB < 30s
-2.55 +0.07 10 0 0 TL perm stations operational after
-2.55 -0.14 10 0 0 TL May 2022 but closed now
-2.55 -0.50 10 0 0 TL PACASE used for AdriaArray
+0.45  0.40 10 0 0 TL temporary West
+0.45  0.10 10 0 0 TL temporary Center
+0.45 -0.20 10 0 0 TL temporary North
+0.45 -0.50 10 0 0 TL temporary East
+3.45  0.40 10 0 0 TL temporary Southeast
+3.45 +0.07 10 0 0 TL temp stations operational after
+3.45 -0.14 10 0 0 TL May 2022 but closed now
+3.45 -0.50 10 0 0 TL other temporary
end
# end of the legend to map p07

# legend to map p08 - VIRTUAL, backbone vs. _ADARRAY - for paper
pscoast -R-6.0/+6.0/-0.25/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-1.85 -X+0.0 -K -O >> $psfilep08
psxy -R -JM -St0.6 -G$upgr -W$thickLp/$blck -K -O << end >> $psfilep08
-5.6 0.0
end
psxy -R -JM -St0.6 -G$pcse -W$thickLp/$blck -K -O << end >> $psfilep08
+0.8 0.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep08
-5.35  0.10 10 0 0 TL AdriaArray backbone stations in EIDA, all included in the _ADARRAY
+1.05  0.10 10 0 0 TL additional stations of the _ADARRAY virtual network
end
# end of the legend to map p08

# legend to map p09 - CORNER PERIODS - for paper
pscoast -R-6.0/+6.0/-0.25/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-1.85 -X+0.0 -K -O >> $psfilep09
psxy -R -JM -St0.6 -G$bb240 -W$thickLp/$blck -K -O << end >> $psfilep09
-5.7  0.0
end
psxy -R -JM -St0.6 -G$bb120 -W$thickLp/$blck -K -O << end >> $psfilep09
-4.1  0.0
end
psxy -R -JM -St0.6 -G$bb60 -W$thickLp/$blck -K -O << end >> $psfilep09
-2.0  0.0
end
psxy -R -JM -St0.6 -G$bb40 -W$thickLp/$blck -K -O << end >> $psfilep09
+0.1  0.0
end
psxy -R -JM -St0.6 -G$bb30 -W$thickLp/$blck -K -O << end >> $psfilep09
+2.3  0.0
end
psxy -R -JM -St0.6 -G$grey -W$thickLp/$blck -K -O << end >> $psfilep09
+4.2  0.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep09
-5.45  0.1 10 0 0 TL T >= 240s
-3.85  0.1 10 0 0 TL 120s =< T < 240s
-1.75  0.1 10 0 0 TL  60s =< T < 120s
+0.35  0.1 10 0 0 TL  40s =< T <  60s
+2.55  0.1 10 0 0 TL  T = 30s
+4.45  0.1 10 0 0 TL not deployed yet
end
# end of the legend to map p09

# legend to map p10 - NETWORKS - for paper
pscoast -R-6.0/+6.0/-0.5/0.6 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-2.8 -X+0.0 -K -O >> $psfilep10
psxy -R -JM -St0.6 -G$clr1Y -W$thickLp/$blck -K -O << end >> $psfilep10
-5.8 +0.3
end
psxy -R -JM -St0.6 -G$clr2Y -W$thickLp/$blck -K -O << end >> $psfilep10
-5.8  0.0
end
psxy -R -JM -St0.6 -G$clr4P -W$thickLp/$blck -K -O << end >> $psfilep10
-5.8 -0.3
end
psxy -R -JM -St0.6 -G$clr7B -W$thickLp/$blck -K -O << end >> $psfilep10
-2.8 +0.3
end
psxy -R -JM -St0.6 -G$clr9H -W$thickLp/$blck -K -O << end >> $psfilep10
-2.8  0.0
end
psxy -R -JM -St0.6 -G$clrY5 -W$thickLp/$blck -K -O << end >> $psfilep10
-2.8 -0.3
end
psxy -R -JM -St0.6 -G$clrY8 -W$thickLp/$blck -K -O << end >> $psfilep10
+0.3 +0.3
end
psxy -R -JM -St0.6 -G$clrZ6 -W$thickLp/$blck -K -O << end >> $psfilep10
+0.3  0.0
end
psxy -R -JM -St0.6 -G$clrRF -W$thickLp/$blck -K -O << end >> $psfilep10
+0.3 -0.3
end
psxy -R -JM -St0.6 -G$clrXX -W$thickLp/$blck -K -O << end >> $psfilep10
+3.2  0.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep10
-5.55  +0.40 10 0 0 TL 1Y (NOA, embargo)
-5.55  +0.10 10 0 0 TL 2Y (INGV, embargo)
-5.55  -0.20 10 0 0 TL 4P (INGV, open)
-2.55  +0.40 10 0 0 TL 7B (ODC, open)
-2.55 +0.10 10 0 0 TL 9H (UIB-NORSAR, embargo)
-2.55 -0.20 10 0 0 TL Y5 (ETHZ, open)
+0.55 +0.40 10 0 0 TL Y8 (NIEP, embargo)
+0.55 +0.10 10 0 0 TL Z6 (LMU, embargo)
+0.55 -0.20 10 0 0 TL XP (RESIF, open)
+3.45 +0.23 10 0 0 TL permanent codes used for
+3.45 +0.00 10 0 0 TL temporary equipment (open)
end
# end of the legend to map p10

# legend to map p11 - AdA MEMBERS - for paper
pscoast -R17.6/21.5/-2.0/1.4 -Dc -JM20/60/4.95c -Bwesn -G$graylg -S$graylg -Y+12.3 -X+13.0 -K -O >> $psfilep11
psxy -R -JM -Ss0.6 -G$membclr -W$thickLp/$blck -K -O << end >> $psfilep11
17.95 1.0
end
psxy -R -JM -Ss0.6 -G$pendclr -W$thickLp/$blck -K -O << end >> $psfilep11
17.95 0.5
end
psxy -R -JM -Ss0.6 -G$candclr -W$thickLp/$blck -K -O << end >> $psfilep11
17.95 0.0
end
psxy -R -JM -Ss0.6 -G$eidaclr -W$thickLp/$blck -K -O << end >> $psfilep11
17.95 -0.5
end
psxy -R -JM -Ss0.5 -W2.0p/$eidaclr -K -O << end >> $psfilep11
17.95 -1.0
end
psxy -R -JM -Ss0.6 -W$thickLp/$blck -K -O << end >> $psfilep11
17.95 -1.0
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep11
18.3  1.10 8 0 0 TL AdriaArray members
18.3  0.60 8 0 0 TL membership pending
18.3  0.10 8 0 0 TL candidates
18.3 -0.40 8 0 0 TL EIDA nodes for temp. stations
18.3 -0.90 8 0 0 TL EIDA nodes for perm. stations
18.3 -1.35 8 0 0 TL locations of all branches of the
18.3 -1.63 8 0 0 TL member institutions are shown
end
# end of the legend to map p11

# legend to map p13 - EFEHR hazard map - for paper
pscoast -R-6.0/+6.0/-0.35/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-2.05 -X+0.0 -K -O >> $psfilep13
psscale -CAUXI/PGAscale-out.cpt -D+5.5c/1.08/10.0c/0.5ch -K -O -B0.1f0.05 >> $psfilep13
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep13
-0.4  0.1 10 0 0 TL PGA [g], ESHM20 model by EFEHR, 10% exceedance probability in 50 years
end
# end of the legend to map p13

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
pscoast -R17.6/22.5/47.50/47.70 -Dc -JM20/60/6.2c -G255/255/255 -S255/255/255 -Y-5.8 -X-1.3 -K -O >> $psfile08
pstext -R -JM -G0/0/0 -K -O << end >> $psfile08
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

# the last command to close the ps files
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
psxy -R -JL << end -O >> $psfile08
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
psxy -R -JL << end -O >> $psfilep01
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep02
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep03
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep04
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep05
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep06
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep07
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep08
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep09
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep10
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep11
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep12
0.0 0.0
end
psxy -R -JL << end -O >> $psfilep13
0.0 0.0
end

# ---------------------- coverage maps for PAPER - two plots together -------------------------------
gmtset PAPER_MEDIA a4
gmtset TICK_LENGTH 0.1c
gmtset FRAME_PEN 0.4p
gmtset BASEMAP_TYPE fancy
pscoast                     -R$mapborder -JL$mapproj -Di -B$mapnet/:."": -P -X+0.8 -Y+5.4 -W0.1p -K > $psfilep14
grdimage AUXI/AdAtopo.grd   -R           -JL         -CAUXI/bw.cpt   -K -O >> $psfilep14
# coverage of all permanent and temporary stations in EIDA - lower plot
psxy PERM/perm30io40.txt    -R           -JL -G$ci40 -SE             -K -O >> $psfilep14
psxy TEMP/tEIDA40.txt       -R           -JL -G$ci40 -SE             -K -O >> $psfilep14
psxy PERM/perm30io30.txt    -R           -JL -G$ci30 -SE             -K -O >> $psfilep14
psxy TEMP/tEIDA30.txt       -R           -JL -G$ci30 -SE             -K -O >> $psfilep14
psxy PERM/perm30io20.txt    -R           -JL -G$ci20 -SE             -K -O >> $psfilep14
psxy TEMP/tEIDA20.txt       -R           -JL -G$ci20 -SE             -K -O >> $psfilep14
psxy PERM/perm30io10.txt    -R           -JL -G$ci10 -SE             -K -O >> $psfilep14
psxy TEMP/tEIDA10.txt       -R           -JL -G$ci10 -SE             -K -O >> $psfilep14
pscoast                     -R           -JL -Di -N1/0.2p -W0.2p     -K -O >> $psfilep14
psxy AUXI/kosovo-border.dat -R           -JL -W0.2p/0/0/0            -K -O >> $psfilep14
# AdA outline for coverage maps - lower
psxy AUXI/borderLandA.dat   -R           -JL -W1.3p/$temp            -K -O >> $psfilep14
psxy AUXI/borderLandB.dat   -R           -JL -W1.3p/$temp            -K -O >> $psfilep14
psxy AUXI/borderLandC.dat   -R           -JL -W1.3p/$temp            -K -O >> $psfilep14
psxy AUXI/borderSeaA.dat    -R           -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep14
psxy AUXI/borderSeaB.dat    -R           -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep14
psxy AUXI/borderSeaC.dat    -R           -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep14
psimage AUXI/AdA_logo_gb.eps -W1.0c -C0.0/-0.57 -K -O >> $psfilep14
# coverage of all permanent stations in EIDA - upper plot
pscoast                     -R$mapborder -JL$mapproj -Di -B$mapnet/:."": -X+0.0 -Y+15.8  -W0.1p -K -O >> $psfilep14
grdimage AUXI/AdAtopo.grd   -R           -JL         -K -O -CAUXI/bw.cpt >> $psfilep14
psxy PERM/perm30io40.txt    -R           -JL -G$ci40 -SE             -K -O >> $psfilep14
psxy PERM/perm30io30.txt    -R           -JL -G$ci30 -SE             -K -O >> $psfilep14
psxy PERM/perm30io20.txt    -R           -JL -G$ci20 -SE             -K -O >> $psfilep14
psxy PERM/perm30io10.txt    -R           -JL -G$ci10 -SE             -K -O >> $psfilep14
pscoast                     -R           -JL -Di -N1/0.2p -W0.2p     -K -O >> $psfilep14
psxy AUXI/kosovo-border.dat -R           -JL -W0.2p/0/0/0            -K -O >> $psfilep14
# AdA outline for coverage maps - upper
psxy AUXI/borderLandA.dat   -R           -JL -W1.3p/$temp            -K -O >> $psfilep14
psxy AUXI/borderLandB.dat   -R           -JL -W1.3p/$temp            -K -O >> $psfilep14
psxy AUXI/borderLandC.dat   -R           -JL -W1.3p/$temp            -K -O >> $psfilep14
psxy AUXI/borderSeaA.dat    -R           -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep14
psxy AUXI/borderSeaB.dat    -R           -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep14
psxy AUXI/borderSeaC.dat    -R           -JL -W1.3p+t2.0_2.0:0/$temp -K -O >> $psfilep14
# legend to map p14 - COVERAGE, two plots together - for paper
gmtset TICK_LENGTH 0.0c
gmtset FRAME_PEN 0.8p
gmtset BASEMAP_TYPE plain
pscoast -R-6.0/+6.0/-0.25/0.35 -Dc -JM0/0/23c -Bwesn -G$graylg -S$graylg -Y-17.65 -X+0.0 -K -O >> $psfilep14
psxy -R -JM -Sc0.15 -G$ci10 -K -O << end >> $psfilep14
-5.8 0.03
end
psxy -R -JM -Sc0.30 -G$ci20 -K -O << end >> $psfilep14
-2.8 0.03
end
psxy -R -JM -Sc0.45 -G$ci30 -K -O << end >> $psfilep14
+0.2 0.03
end
psxy -R -JM -Sc0.60 -G$ci40 -K -O << end >> $psfilep14
+3.2 0.03
end
# text of the legend
pstext -R -JM -G0/0/0 -K -O << end >> $psfilep14
-5.62  0.1 10 0 0 TL 10 km radius coverage
-2.58  0.1 10 0 0 TL 20 km radius coverage
+0.44  0.1 10 0 0 TL 30 km radius coverage
+3.46  0.1 10 0 0 TL 40 km radius coverage
end
# end of the legend to map p14
# posledni prikaz
psxy                        -R -JL << end -O >> $psfilep14
0.0 0.0
end
# ----------- end of two coverage plots together ----------

# saving pdf and png files
#gs -o MAPS/01AdriaTotal.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile01
#gs -o MAPS/02AdriaBBonl.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile02
#gs -o MAPS/03AdriaBBsub.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile03
#gs -o MAPS/04AdriaCrc30.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile04
#gs -o MAPS/05AdriaCrc40.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile05
#gs -o MAPS/06AdriaBBovr.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile06
#gs -o MAPS/07AdriaMobil.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile07
#gs -o MAPS/08AdriaGNSS.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile08
#gs -o MAPS/09AdriaCOST.pdf  -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile09
#gs -o MAPS/10AdriaTotPR.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile10
#gs -o MAPS/11AdriaEIDA.pdf  -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile11
#gs -o MAPS/12AdriaMobRG.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile12
#gs -o MAPS/13AdriaDploy.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile13
#gs -o MAPS/14AA+AdA+PCS.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile14
#gs -o MAPS/15AdAmembers.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile15
#gs -o MAPS/16AdAnetwork.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile16
#gs -o MAPS/17AdAcorners.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile17
#gs -o MAPS/18AdAEIDAall.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfile18
#gs -o PAPER/p01AdAtectono.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep01
#gs -o PAPER/p02AA+AdA+PCS.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep02
#gs -o PAPER/p03AdAcolorTP.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep03
#gs -o PAPER/p04AdriaDploy.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep04
#gs -o PAPER/p05AdAcoverP.pdf  -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep05
#gs -o PAPER/p06AdAcoverPT.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep06
#gs -o PAPER/p07AdAcomplet.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep07
#gs -o PAPER/p08AdAvirtual.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep08
#gs -o PAPER/p09AdAcorners.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep09
#gs -o PAPER/p10AdAnetwork.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep10
#gs -o PAPER/p11AdAmembers.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep11
#gs -o PAPER/p12AdAhistory.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep12
#gs -o PAPER/p13EFEHRhazar.pdf -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep13
#gs -o PAPER/p14AdAcovTWO.pdf  -sDEVICE=pdfwrite -r3600 -g29772x42084 -dPDFFitPage $psfilep14
#gs -o MAPS/01AdriaTotal.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile01
#gs -o MAPS/02AdriaBBonl.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile02
#gs -o MAPS/03AdriaBBsub.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile03
#gs -o MAPS/04AdriaCrc30.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile04
#gs -o MAPS/05AdriaCrc40.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile05
#gs -o MAPS/06AdriaBBovr.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile06
#gs -o MAPS/07AdriaMobil.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile07
#gs -o MAPS/08AdriaGNSS.png  -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile08
#gs -o MAPS/09AdriaCOST.png  -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile09
#gs -o MAPS/10AdriaTotPR.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile10
#gs -o MAPS/11AdriaEIDA.png  -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile11
#gs -o MAPS/12AdriaMobRG.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile12
#gs -o MAPS/13AdriaDploy.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile13
#gs -o MAPS/14AA+AdA+PCS.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile14
#gs -o MAPS/15AdAmembers.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile15
#gs -o MAPS/16AdAnetwork.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile16
#gs -o MAPS/17AdAcorners.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile17
#gs -o MAPS/18AdAEIDAall.png -sDEVICE=png16m -r500 -c '<</Orientation 3>> setpagedevice' -dDownScaleFactor=4 $psfile18

# following ps --> ps is here just to rotate the image, otherwise the png is rotated wrongly
gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep01.X -c "<</Orientation 3>> setpagedevice" -f $psfilep01
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep02.X -c "<</Orientation 3>> setpagedevice" -f $psfilep02
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep03.X -c "<</Orientation 3>> setpagedevice" -f $psfilep03
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep04.X -c "<</Orientation 3>> setpagedevice" -f $psfilep04
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep05.X -c "<</Orientation 3>> setpagedevice" -f $psfilep05
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep06.X -c "<</Orientation 3>> setpagedevice" -f $psfilep06
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep07.X -c "<</Orientation 3>> setpagedevice" -f $psfilep07
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep08.X -c "<</Orientation 3>> setpagedevice" -f $psfilep08
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep09.X -c "<</Orientation 3>> setpagedevice" -f $psfilep09
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep10.X -c "<</Orientation 3>> setpagedevice" -f $psfilep10
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep11.X -c "<</Orientation 3>> setpagedevice" -f $psfilep11
##gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep12.X -c "<</Orientation 3>> setpagedevice" -f $psfilep12
#gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=ps2write -sOutputFile=$psfilep13.X -c "<</Orientation 3>> setpagedevice" -f $psfilep13

# the bounding boxes are used to crop the image in the next section
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep01.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep02.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep03.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep04.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep05.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep06.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep07.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep08.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep09.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep10.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep11.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep12.X 2>&1 | grep %%BoundingBox
#gs -q -dBATCH -dNOPAUSE -sDEVICE=bbox -dLastPage=1 $psfilep13.X 2>&1 | grep %%BoundingBox

# pngs are scaled by the bounding boxes given above and cropped in the Y dierction by different amounts as the legends are of different heights
# take the upper limit minus lower limit of the bounding box and multiply *7; this gives the Y size in pixels
# in the next command, the Y starting point of boundingbox needs to be added with minus sign
gs -o PAPER/p01AdAtectono.png -sDEVICE=png16m -r504 -g4865x3766 -c '<</Install {0  -56 translate}>> setpagedevice' -f $psfilep01.X
#gs -o PAPER/p02AA+AdA+PCS.png -sDEVICE=png16m -r504 -g4865x3647 -c '<</Install {0  -73 translate}>> setpagedevice' -f $psfilep02.X
#gs -o PAPER/p03AdAcolorTP.png -sDEVICE=png16m -r504 -g4865x3500 -c '<</Install {0  -94 translate}>> setpagedevice' -f $psfilep03.X
#gs -o PAPER/p04AdriaDploy.png -sDEVICE=png16m -r504 -g4865x4102 -c '<</Install {0   -8 translate}>> setpagedevice' -f $psfilep04.X
#gs -o PAPER/p05AdAcoverP.png  -sDEVICE=png16m -r504 -g4865x3458 -c '<</Install {0 -100 translate}>> setpagedevice' -f $psfilep05.X
#gs -o PAPER/p06AdAcoverPT.png -sDEVICE=png16m -r504 -g4865x3458 -c '<</Install {0 -100 translate}>> setpagedevice' -f $psfilep06.X
#gs -o PAPER/p07AdAcomplet.png -sDEVICE=png16m -r504 -g4865x3766 -c '<</Install {0  -56 translate}>> setpagedevice' -f $psfilep07.X
#gs -o PAPER/p08AdAvirtual.png -sDEVICE=png16m -r504 -g4865x3458 -c '<</Install {0 -100 translate}>> setpagedevice' -f $psfilep08.X
#gs -o PAPER/p09AdAcorners.png -sDEVICE=png16m -r504 -g4865x3458 -c '<</Install {0 -100 translate}>> setpagedevice' -f $psfilep09.X
#gs -o PAPER/p10AdAnetwork.png -sDEVICE=png16m -r504 -g4865x3647 -c '<</Install {0  -73 translate}>> setpagedevice' -f $psfilep10.X
#gs -o PAPER/p11AdAmembers.png -sDEVICE=png16m -r504 -g3731x3766 -c '<</Install {0  -56 translate}>> setpagedevice' -f $psfilep11.X
#gs -o PAPER/p12AdAhistory.png -sDEVICE=png16m -r504 -g4865x3206 -c '<</Install {0 -136 translate}>> setpagedevice' -f $psfilep12.X
#gs -o PAPER/p13EFEHRhazar.png -sDEVICE=png16m -r504 -g4865x3500 -c '<</Install {0  -94 translate}>> setpagedevice' -f $psfilep13.X
#gs -o PAPER/p14AdAcovTWO.png  -sDEVICE=png16m -r504 -g4865x6600 -c '<</Install {0 -100 translate}>> setpagedevice' -f $psfilep14