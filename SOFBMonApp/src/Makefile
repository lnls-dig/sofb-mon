TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = SOFBMon
# SOFBMon.dbd will be created and installed
DBD += SOFBMon.dbd

# SOFBMon.dbd will be made up from these files:
SOFBMon_DBD += base.dbd

# Include dbd files from all support applications:
#SOFBMon_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#SOFBMon_LIBS += xxx

# SOFBMon_registerRecordDeviceDriver.cpp derives from SOFBMon.dbd
SOFBMon_SRCS += SOFBMon_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
SOFBMon_SRCS_DEFAULT += SOFBMonMain.cpp
SOFBMon_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#SOFBMon_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
SOFBMon_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

