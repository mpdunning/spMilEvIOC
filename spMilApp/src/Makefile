TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = spMil

DBD += spMil.dbd

spMil_DBD += base.dbd
spMil_DBD += stream.dbd
spMil_DBD += asyn.dbd
spMil_DBD += asSupport.dbd
#spMil_DBD += calcSupport.dbd
spMil_DBD += drvAsynIPPort.dbd

spMil_SRCS += spMil_registerRecordDeviceDriver.cpp
spMil_SRCS_DEFAULT += spMilMain.cpp

spMil_LIBS += asyn
spMil_LIBS += autosave
spMil_LIBS += stream
#spMil_LIBS += calc

spMil_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

