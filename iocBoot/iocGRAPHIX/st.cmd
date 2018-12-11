#!../../bin/linux-x86_64/GRAPHIX

#- You may have to change GRAPHIX to something else
#- everywhere it appears in this file

< envPaths

epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/protocols")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/GRAPHIX.dbd"
GRAPHIX_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=ykh")
dbLoadRecords("db/GRAPHIX.db", "DEVICE_NAME=GRAPHIX3,PORT=L0,A=0")
#dbLoadRecords("db/asynRecord.db", "P=Vacuum:,R=Gauge,PORT=L0,ADDR=24,IMAX=100,OMAX=100")

## Serial configuration
drvAsynSerialPortConfigure("L0","/dev/ttyUSB1",0,0,0)
asynSetOption("L0",-1,"baud","9600")
asynSetOption("L0",-1,"bits","8")
asynSetOption("L0",-1,"parity","none")
asynSetOption("L0",-1,"stop","1")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=ykh"
