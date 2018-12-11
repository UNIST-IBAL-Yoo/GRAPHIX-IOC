TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = GRAPHIX
# GRAPHIX.dbd will be created and installed
DBD += GRAPHIX.dbd

# GRAPHIX.dbd will be made up from these files:
GRAPHIX_DBD += base.dbd

# Include dbd files from all support applications:
#GRAPHIX_DBD += xxx.dbd
GRAPHIX_DBD += asyn.dbd
GRAPHIX_DBD += stream.dbd
GRAPHIX_DBD += drvAsynSerialPort.dbd

# Add all the support libraries needed by this IOC
#GRAPHIX_LIBS += xxx
GRAPHIX_LIBS += asyn
GRAPHIX_LIBS += stream
#GRAPHIX_LIBS += calc

# GRAPHIX_registerRecordDeviceDriver.cpp derives from GRAPHIX.dbd
GRAPHIX_SRCS += GRAPHIX_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
GRAPHIX_SRCS_DEFAULT += GRAPHIXMain.cpp
GRAPHIX_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#GRAPHIX_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
GRAPHIX_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

