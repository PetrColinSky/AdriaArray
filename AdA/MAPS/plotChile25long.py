# skript pro namalovani ASCII rotovanych dat
import numpy as np
import matplotlib.pyplot as plt
from obspy.core import read
from obspy.core import UTCDateTime
import obspy.signal
from matplotlib import pyplot
from matplotlib import colors
import math
from os import walk, path, listdir, curdir
import copy
import os

# select the starting time and length of the data in seconds
sampling      = 10
reducedkm     = 10230         # km deducted from the distance for calculating the amplitudes - nejlip zvolit vzdalenost o kousek mensi nez nejblizsi stanice
maxdist       = 12410         # maximal distance for calculating the amplitudes
minplot       = 600 #+2940   # time in second, musi to byt vetsi, nez kdy zacina soubor, jinak to exne
maxplot       = 4400          # musi to byt mensi, nez je v souboru, jinak to maluje divne cary od koncu zaznamu
numofstations = 1179          # how many stations do we plot - for scaling the amplitudes
sample        = [0.123]    * (61000)
Z             = [0.123]    * (61000)
N             = [0.123]    * (61000)
E             = [0.123]    * (61000)
scale         = 35; # cim vetsi je tuto cislo, tedy cim vic to v nasledujicim radku zmensim, tim jsou zaznamy vetsi a vic se prekryvaji == 12
maxampl       = 1000000000/scale  # devet nul je normalizovana amplituda vstupnich zaznamu
red           = 1.0
green         = 0.5
blue          = 0.0
mindistkm     = 25000
maxdistkm     = 0
counter       = 0
singles       = '' # 'yes'

fvert,  (ax1) = plt.subplots(1, sharex=True, sharey=False, figsize=(18,11)) # time domain
fradi,  (ax2) = plt.subplots(1, sharex=True, sharey=False, figsize=(18,11)) # time domain
ftran,  (ax3) = plt.subplots(1, sharex=True, sharey=False, figsize=(18,11)) # time domain

# loop over all files
for root, dir, filenames in walk("/DeeGee/13AlpPhase/output/20240719a/"): # walks through all *.dat files
    for jmenosouboru in filenames:
        origjmenosouboru = jmenosouboru
        jmenosouboru = '/DeeGee/13AlpPhase/output/20240719a/'+jmenosouboru
        if jmenosouboru.endswith(".dat") and (path.isfile(jmenosouboru)): # if the filename ends with *.dat and if it is a file - we dont need subdirectiorie
            #print (path.join(root,jmenosouboru))
            lejblovka = ''
            #lejblovka = origjmenosouboru.split('.')[0]+'.'+origjmenosouboru.split('.')[1]
            pocitadlo = 0
            datafile = open(jmenosouboru, 'r')
            header1 = datafile.readline() # precte radku vzdalenost, kterou potrebuju, je zapsana jako double :12:4, tedy ma 12 pozic a z toho posledni 4 jsou za desetinnou teckou
            #print (header1) # a pred tim celym je presne 17 pozic zaplnenych casem, a to je tam dycky, i kdyz neco z toho jsou nuly, takze vzdalenost lze cist od 18 do 29 pozice vcetne
            distkmstr = header1[18:29] # vykuchnu tu vzdalenost, ale distkm je porad string
            distkm = float(distkmstr)
            #print ('distance            ', distkm)
            origintimestr = header1[30:39]
            origintime = float(origintimestr)   # vzdalenost zacatku souboru od origin time
            #print ('time difference     ', origintime)
            if distkm > maxdistkm: maxdistkm = distkm
            if distkm < mindistkm: mindistkm = distkm
            header2 = datafile.readline() # precte radku
            header3 = datafile.readline() # precte radku
            header4 = datafile.readline() # precte radku
            header5 = datafile.readline() # precte radku
            header6 = datafile.readline() # precte radku
            header7 = datafile.readline() # precte radku
            header8 = datafile.readline() # precte radku
            for line in datafile:
                pocitadlo = pocitadlo + 1
                sample[pocitadlo] = float(pocitadlo)/float(sampling)+origintime # casova znacka kazdeho sampliku
                line = line.strip()
                columns = line.split()
                Z[pocitadlo] = (float(columns[0])/maxampl)*(maxdist-reducedkm)/numofstations + distkm
                N[pocitadlo] = (float(columns[1])/maxampl)*(maxdist-reducedkm)/numofstations + distkm
                E[pocitadlo] = (float(columns[2])/maxampl)*(maxdist-reducedkm)/numofstations + distkm
            datafile.close()
            #print ('number of samples   ', pocitadlo)
            ax1.plot(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],c=(red,green,blue), label=lejblovka, linewidth=0.2) # Z component
            ax1.text(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][-1],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][-1],'  '+lejblovka,fontsize=8,color=(red,green,blue))
            ax1.text(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][0],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][0],'  '+lejblovka,fontsize=8,color=(red,green,blue))
            
            # plots with a single record one by one
            if singles == 'yes':
                fvertX, (ax4) = plt.subplots(1, sharex=True, sharey=False, figsize=(18,11)) # time domain
                ax4.plot(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],c=(red,green,blue), label=lejblovka, linewidth=0.5) # Z component
                ax4.set_ylabel('distance [km]',color='white')
                ax4.set_xlabel('time from origin [s]',color='white')
                ax4.tick_params(axis='x', colors='white')
                ax4.xaxis.label.set_color('white')
                ax4.tick_params(axis='y', colors='white')
                ax4.yaxis.label.set_color('white')
                ax4.set_xlim(minplot, maxplot)
                ax4.set_ylim(mindistkm-(((maxdist-reducedkm)/numofstations)/2)*scale*1.5-30,maxdistkm+(((maxdist-reducedkm)/numofstations)/2)*scale*1.5+30)
                ax4.set_facecolor('black')
                fvertX.patch.set_facecolor('black')
                fvertX.subplots_adjust(hspace=0)
                fvertX.subplots_adjust(left=0.04)
                fvertX.subplots_adjust(bottom=0.04)
                fvertX.subplots_adjust(right=0.97)
                fvertX.subplots_adjust(top=0.98)
                if os.path.isfile('/DeeGee/13AlpPhase/output/20240719a/plots/singles/'+lejblovka+'.png') == False:
                    fvertX.savefig('/DeeGee/13AlpPhase/output/20240719a/plots/singles/'+lejblovka+'.png', dpi=150, facecolor=fvertX.get_facecolor(), edgecolor='black', bbox_inches='tight')
                pyplot.close(fvertX)
            # end of plotting single records

            ax2.plot(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],N[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],c=(red,green,blue), label=lejblovka, linewidth=0.2) # N component
            ax2.text(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][-1],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][-1],'  '+lejblovka,fontsize=8,color=(red,green,blue))
            ax2.text(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][0],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][0],'  '+lejblovka,fontsize=8,color=(red,green,blue))
            ax3.plot(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],E[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling:4],c=(red,green,blue), label=lejblovka, linewidth=0.2) # E component
            ax3.text(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][-1],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][-1],'  '+lejblovka,fontsize=8,color=(red,green,blue))
            ax3.text(sample[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][0],Z[int(minplot-origintime)*sampling:int(maxplot-origintime)*sampling][0],'  '+lejblovka,fontsize=8,color=(red,green,blue))
            red = red + 0.25        # 0.25 / 0.15
            green = green + 0.45    # 0.45 / 0.35
            blue = blue + 0.55      # 0.55 / 0.45
            if red > 1: red = red - 1 # byvalo tady -1, jakoze jsem tu barvu dal na nulu, ale chci to cele svetlejsi, takze je nevracim na nulu ale na 0.3
            if green > 1: green = green - 1
            if blue > 1: blue = blue - 1
            counter = counter + 1
    break # po prvnim levelu to vypadne, takze to neprohledava subdirectories
# end of the loop over all stations
print ('mindist', mindistkm)
print ('maxdist', maxdistkm)
print ('num of stations plotted', counter)

#vs = [2.5, 4.0] # seznam rychlosti
#veltimePOSlist = [] # prazdny seznam
#veldistPOSlist = [] # prazdny seznam

#for v in vs:  # pro ruzne rychlosti v tom seznamu rychlosti
#    veltimePOS = []             # prazdny seznam
#    veltimePOS.append((+(mindistkm/v)))  # pridam prvni cas do seznamu veltimePOS
#    veltimePOS.append((+(maxdistkm/v)))  # pridam posledni cas do sezamu veltimePOS
#    veltimePOSlist.append(copy.deepcopy(veltimePOS))            # pridam ty dva nove vypocitane casy, coz je novy seznam, do toho puvodniho seznamu
#    veldistPOS = []             # prazdny seznam                  to same pro vzdalenosti, i kdyz ty jsou porad stejne, ale vytvarim seznamy uplne stejne
#    veldistPOS.append(mindistkm)
#    veldistPOS.append(maxdistkm)
#    veldistPOSlist.append(copy.deepcopy(veldistPOS))
#for index, veltimePOS in enumerate(veltimePOSlist):             # musim zarucit, ze tedka budu malovat stejny kousek z jednoho seznamu vuci stejnemu kousku z druheho seznamu
#    veldistPOSn = veldistPOSlist[index]                         # to enumerate mi do index nacpe index toho veltimePOS a ja si pomoci tohoto indexu vyberu z veldistPOSlistu prave ten veldistPOSn, ktery patri k tomu veltimePOS z veltimePOSlistu
#    veloc = vs[index]
#    ax1.plot(veltimePOS,veldistPOSn,'w--')
#    ax2.plot(veltimePOS,veldistPOSn,'w--')
#    ax3.plot(veltimePOS,veldistPOSn,'w--')
#    ax1.text(veltimePOS[0],veldistPOSn[0],'  '+str(veloc)+' km/s',fontsize=12,color='white')         # do koncoveho bodu te cary to napise text
#    ax2.text(veltimePOS[0],veldistPOSn[0],'  '+str(veloc)+' km/s',fontsize=12,color='white')
#    ax3.text(veltimePOS[0],veldistPOSn[0],'  '+str(veloc)+' km/s',fontsize=12,color='white')

# top labels
ax1.text(861.869,12420,'P',fontsize=10,color='white',horizontalalignment='center') # Pdiff
ax1.text(894.658,12420,'pP',fontsize=10,color='white',horizontalalignment='center') # pPdiff
#ax1.text(908.284,12420,'sPdiff',fontsize=10,color='white')
ax1.text(1079.189,12420,'PKiKP',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(1133.284,12420,'pPKiKP',fontsize=10,color='white')
ax1.text(1162.538,12420,'PP',fontsize=10,color='white',horizontalalignment='center')
ax1.text(1488.373,12420,'SKS',fontsize=10,color='white',horizontalalignment='center')
ax1.text(1718.898,12420,'PS',fontsize=10,color='white',horizontalalignment='center')
ax1.text(2069.257,12420,'SS',fontsize=10,color='white',horizontalalignment='center')
ax1.text(2186.831,12420,'SKKS',fontsize=10,color='white',horizontalalignment='center')
ax1.text(3150.0,12420,'R  a  y  l  e  i  g  h    w  a  v  e  s',fontsize=10,color='white')

# bottom labels
ax1.text(774.272,10170,'P',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(774.858,10170,'PcP',fontsize=10,color='white')
ax1.text(806.926,10170,'pP',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(820.583,10170,'sP',fontsize=10,color='white')
ax1.text(985.267,10170,'PP',fontsize=10,color='white',horizontalalignment='center')
ax1.text(1073.714,10170,'PKiKP',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(1097.865,10170,'pPKiKP',fontsize=10,color='white')
#ax1.text(1111.185,10170,'sPKiKP',fontsize=10,color='white')
#ax1.text(1266.257,10170,'SKiKP',fontsize=10,color='white')
ax1.text(1384.753,10170,'SKS',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(1411.241,10170,'SKKS',fontsize=10,color='white')
ax1.text(1435.230,10170,'S',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(1427.091,10170,'ScS',fontsize=10,color='white')
#ax1.text(1440.355,10170,'pSKS',fontsize=10,color='white')
#ax1.text(1454.233,10170,'sSKS',fontsize=10,color='white')
#ax1.text(1467.499,10170,'pS',fontsize=10,color='white')
#ax1.text(1482.516,10170,'sS',fontsize=10,color='white')
#ax1.text(1497.593,10170,'SP',fontsize=10,color='white')
ax1.text(1512.754,10170,'PS',fontsize=10,color='white',horizontalalignment='center')
ax1.text(1798.211,10170,'SS',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(1806.608,10170,'PKIKKIKP',fontsize=10,color='white')
#ax1.text(1809.538,10170,'PKKP',fontsize=10,color='white')
#ax1.text(2009.079,10170,'SKIKKIKP',fontsize=10,color='white')
#ax1.text(2016.624,10170,'SKKP',fontsize=10,color='white')
#ax1.text(2022.399,10170,'PKIKKIKS',fontsize=10,color='white')
#ax1.text(2029.997,10170,'PKKS',fontsize=10,color='white')
#ax1.text(2224.682,10170,'SKIKKIKS',fontsize=10,color='white')
ax1.text(2235.875,10170,'SKKS',fontsize=10,color='white',horizontalalignment='center')
#ax1.text(2300.520,10170,'PKIKPPKIKP',fontsize=10,color='white')
#ax1.text(3152.058,10170,'SKIKSSKIKS',fontsize=10,color='white')
#ax1.text(3154.390,10170,'SKSSKS',fontsize=10,color='white')
ax1.text(2550.0,10170,'R  a  y  l  e  i  g  h    w  a  v  e  s',fontsize=10,color='white')




# labels of the plots
ax1.set_ylabel('distance [km]',color='white')
ax2.set_ylabel('distance [km]',color='white')
ax3.set_ylabel('distance [km]',color='white')
ax1.set_xlabel('time from origin [s]',color='white')
ax2.set_xlabel('time from origin [s]',color='white')
ax3.set_xlabel('time from origin [s]',color='white')
ax1.tick_params(axis='x', colors='white')
ax1.xaxis.label.set_color('white')
ax1.tick_params(axis='y', colors='white')
ax1.yaxis.label.set_color('white')
ax2.tick_params(axis='x', colors='white')
ax2.xaxis.label.set_color('white')
ax2.tick_params(axis='y', colors='white')
ax2.yaxis.label.set_color('white')
ax3.tick_params(axis='x', colors='white')
ax3.xaxis.label.set_color('white')
ax3.tick_params(axis='y', colors='white')
ax3.yaxis.label.set_color('white')
ax1.set_xlim(minplot, maxplot)
ax2.set_xlim(minplot, maxplot)
ax3.set_xlim(minplot, maxplot)
ax1.set_ylim(mindistkm-(((maxdist-reducedkm)/numofstations)/2)*scale*1.5-30,maxdistkm+(((maxdist-reducedkm)/numofstations)/2)*scale*1.5+30)
ax2.set_ylim(mindistkm-(((maxdist-reducedkm)/numofstations)/2)*scale*1.5-30,maxdistkm+(((maxdist-reducedkm)/numofstations)/2)*scale*1.5+30)
ax3.set_ylim(mindistkm-(((maxdist-reducedkm)/numofstations)/2)*scale*1.5-30,maxdistkm+(((maxdist-reducedkm)/numofstations)/2)*scale*1.5+30)
ax1.text(0.01, 1.0,'San Pedro de Atacama, Chile   Mw 7.4   2024-07-19 01:50:48 UTC   23.079S 67.840W   depth 127 km   vertical component   1164 AdriaArray stations'  , horizontalalignment='left',verticalalignment='center',transform=ax1.transAxes,fontsize=14, fontweight='bold',color='white')
ax2.text(0.01, 1.0,'San Pedro de Atacama, Chile   Mw 7.4   2024-07-19 01:50:48 UTC   23.079S 67.840W   depth 127 km   radial component   1164 AdriaArray stations'  , horizontalalignment='left',verticalalignment='center',transform=ax2.transAxes,fontsize=14, fontweight='bold',color='white')
ax3.text(0.01, 1.0,'San Pedro de Atacama, Chile   Mw 7.4   2024-07-19 01:50:48 UTC   23.079S 67.840W   depth 127 km   transverse component  1164 AdriaArray stations'  , horizontalalignment='left',verticalalignment='center',transform=ax3.transAxes,fontsize=14, fontweight='bold',color='white')
#ax2.text(0.01, 0.9,'radial'    , horizontalalignment='left',verticalalignment='center',transform=ax2.transAxes,fontsize=20, fontweight='bold',color='white')
#ax3.text(0.01, 0.9,'transverse', horizontalalignment='left',verticalalignment='center',transform=ax3.transAxes,fontsize=20, fontweight='bold',color='white')
ax1.set_facecolor('black')
ax2.set_facecolor('black')
ax3.set_facecolor('black')


fvert.patch.set_facecolor('black')
fvert.subplots_adjust(hspace=0)
fvert.subplots_adjust(left=0.04)
fvert.subplots_adjust(bottom=0.04)
fvert.subplots_adjust(right=0.97)
fvert.subplots_adjust(top=0.98)
#fvert.savefig('1Z.ps', dpi=300, facecolor=fvert.get_facecolor(), edgecolor='black', orientation='landscape', papertype='a3', bbox_inches='tight', pad_inches=0.2)
fvert.savefig('1Z.png', dpi=150, facecolor=fvert.get_facecolor(), edgecolor='black', bbox_inches='tight')
#fvert.savefig('1Z.pdf', dpi=300, facecolor=fvert.get_facecolor(), edgecolor='black', orientation='landscape', bbox_inches='tight', pad_inches=0.2)

fradi.patch.set_facecolor('black')
fradi.subplots_adjust(hspace=0)
fradi.subplots_adjust(left=0.04)
fradi.subplots_adjust(bottom=0.04)
fradi.subplots_adjust(right=0.97)
fradi.subplots_adjust(top=0.98)
#fradi.savefig('2R.ps', dpi=300, facecolor=fvert.get_facecolor(), edgecolor='black', orientation='landscape', papertype='a3', bbox_inches='tight', pad_inches=0.2)
fradi.savefig('2R.png', dpi=150, facecolor=fvert.get_facecolor(), edgecolor='black', bbox_inches='tight')

ftran.patch.set_facecolor('black')
ftran.subplots_adjust(hspace=0)
ftran.subplots_adjust(left=0.04)
ftran.subplots_adjust(bottom=0.04)
ftran.subplots_adjust(right=0.97)
ftran.subplots_adjust(top=0.98)
#ftran.savefig('3T.ps', dpi=300, facecolor=fvert.get_facecolor(), edgecolor='black', orientation='landscape', papertype='a3', bbox_inches='tight', pad_inches=0.2)
ftran.savefig('3T.png', dpi=150, facecolor=fvert.get_facecolor(), edgecolor='black', bbox_inches='tight')

#plt.show()