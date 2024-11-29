#!../../bin/linux-x86_64/SOFBMon

#- You may have to change SOFBMon to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/SOFBMon.dbd"
SOFBMon_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/SOFBMonOrbit.db", "P=SI-Glob:, R=AP-SOFB:, TARGET=SlowSumQ")
dbLoadRecords("../../db/SOFBMonSum.db", "P=SI-Glob:, R=AP-SOFB:, TARGET=SlowSumRaw-Mon, SOURCE=SlowSumQRaw-Mon")

dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=Intlk-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLtc-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerLtcX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerLtcY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperLtcX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperLtcY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerLtcX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerLtcY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperLtcX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperLtcY-Mon")

dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkPosX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkPosY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtPosMaxX-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtPosMinX-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtPosMaxY-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtPosMinY-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkAngX-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkAngY-Mon")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtAngMaxX-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtAngMinX-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtAngMaxY-RB")
dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=LONG, EGU=nm, TARGET=IntlkLmtAngMinY-RB")

dbLoadRecords("../../db/SOFBMonIntlk.db", "P=SI-Glob:, R=AP-OrbIntlk:, FTVL=DOUBLE, EGU=au, TARGET=IntlkLmtMinSum-RB")

iocInit()

## Start any sequence programs
seq SOFBMonOrbit, "P=SI-Glob:, R=AP-SOFB:, TARGET=SlowSumQ, FIRST=Sum-Mon, SECOND=PosQ-Mon"

seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=Intlk-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLtc-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerLtcX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosLowerLtcY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperLtcX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosUpperLtcY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerLtcX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngLowerLtcY-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperLtcX-Mon"
seq SOFBMonIntlkFlags, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngUpperLtcY-Mon"

seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosX-Mon"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkPosY-Mon"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtPosMaxX-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtPosMinX-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtPosMaxY-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtPosMinY-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngX-Mon"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkAngY-Mon"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtAngMaxX-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtAngMinX-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtAngMaxY-RB"
seq SOFBMonIntlkValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtAngMinY-RB"

seq SOFBMonIntlkDoubleValues, "P=SI-Glob:, R=AP-OrbIntlk:, TARGET=IntlkLmtMinSum-RB"
