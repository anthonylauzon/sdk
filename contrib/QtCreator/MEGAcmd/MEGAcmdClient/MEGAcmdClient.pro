CONFIG -= qt

CONFIG(debug, debug|release) {
    CONFIG -= debug release
    CONFIG += debug
}
CONFIG(release, debug|release) {
    CONFIG -= debug release
    CONFIG += release
}

TARGET = MEGAclient
TEMPLATE = app
CONFIG += console

SOURCES += ../../../../examples/megacmd/client/megacmdclient.cpp

win32 {
LIBS +=  -lshlwapi -lws2_32
RC_FILE = icon.rc
}
