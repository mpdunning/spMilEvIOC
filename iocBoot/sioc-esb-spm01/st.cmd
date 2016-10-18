#!../../bin/linux-x86_64/spMil

epicsEnvSet( "STREAM_PROTOCOL_PATH","../../spMilApp/Db:.")

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/spMil.dbd"
spMil_registerRecordDeviceDriver pdbbase

epicsEnvSet("P",         "ESB:SPM01")
epicsEnvSet("PROTOFILE", "spMil.proto")
epicsEnvSet("LOC",       "ESB Laser Room")
epicsEnvSet("DELAY0",    "0.1")
epicsEnvSet("DELAY1",    "0.1")

#save_restoreSet_status_prefix( "")
#save_restoreSet_IncompleteSetsOk( 1)
#save_restoreSet_DatedBackupFiles( 1)
#set_savefile_path( "/nfs/slac/g/testfac/esb/$(IOC)","autosave")
#set_pass0_restoreFile( "spMil.sav")
#set_pass1_restoreFile( "spMil.sav")

drvAsynIPPortConfigure ("L0","ts-esb-06:2008",0,0,0)

#asynSetTraceMask("L0",-1,0x9)
#asynSetTraceIOMask("L0",-1,0x6)

dbLoadRecords("db/spMil.db","IOC=$(IOC),P=$(P),PROTOFILE=$(PROTOFILE),LOC=$(LOC),DELAY0=$(DELAY0),DELAY1=$(DELAY1),PORT=L0")
dbLoadRecords("db/asynRecord.db","P=$(P):,R=asyn,PORT=L0,ADDR=0,OMAX=0,IMAX=0")

cd ${TOP}/iocBoot/${IOC}
iocInit()

#create_monitor_set( "spMil.req",30,"P=$(P)")

