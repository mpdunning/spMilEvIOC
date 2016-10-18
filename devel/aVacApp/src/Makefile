TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = aVac

DBD += aVac.dbd

aVac_DBD += base.dbd
aVac_DBD += stream.dbd
aVac_DBD += asyn.dbd
aVac_DBD += asSupport.dbd
aVac_DBD += calcSupport.dbd
aVac_DBD += drvAsynIPPort.dbd

aVac_SRCS += aVac_registerRecordDeviceDriver.cpp
aVac_SRCS_DEFAULT += aVacMain.cpp

aVac_LIBS += asyn
aVac_LIBS += autosave
aVac_LIBS += stream
aVac_LIBS += calc

aVac_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

