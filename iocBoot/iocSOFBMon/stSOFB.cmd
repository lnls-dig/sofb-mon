#!../../bin/linux-x86_64/SOFBMon

#- You may have to change SOFBMon to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/SOFBMon.dbd"
SOFBMon_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/SOFBMonOrbit.db", "P=SI-Glob:, R=AP-SOFB:, TARGET=SlowOrb, DIVISOR=1000")
dbLoadRecords("../../db/SOFBMonOrbitConfig.db", "P=SI-Glob:, R=AP-SOFB:")

iocInit()

## Start any sequence programs
seq SOFBMonOrbit, "P=SI-Glob:, R=AP-SOFB:, TARGET=SlowOrb, FIRST=PosX-Mon, SECOND=PosY-Mon"
