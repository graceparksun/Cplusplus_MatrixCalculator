TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    smartarray.cpp \
    smartarray2d.cpp \
    fraction.cpp \
    Exception.cpp

include(deployment.pri)
qtcAddDeployment()

HEADERS += \
    smartarray.h \
    smartarray2d.h \
    fraction.h \
    Exception.h

