#!../../bin/linux-x86_64/SOFBMon

#- You may have to change SOFBMon to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/SOFBMon.dbd"
SOFBMon_registerRecordDeviceDriver(pdbbase) 

## Load record instances
#dbLoadRecords("../../db/SOFBMon.db","user=root")

iocInit()

## Start any sequence programs
#seq sncSOFBMon,"user=root"
