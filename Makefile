#############################################################################
# Makefile for building: matrix
# Generated by qmake (3.0) (Qt 5.3.2)
# Project:  matrix.pro
# Template: app
# Command: /Users/gracepark/Qt5.3.2/5.3/clang_64/bin/qmake -spec macx-clang CONFIG+=debug CONFIG+=x86_64 -o Makefile matrix.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
CXX           = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
DEFINES       = 
CFLAGS        = -pipe -g -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk -mmacosx-version-min=10.6 -Wall -W -fPIE $(DEFINES)
CXXFLAGS      = -pipe -g -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk -mmacosx-version-min=10.6 -Wall -W -fPIE $(DEFINES)
INCPATH       = -I../../../Qt5.3.2/5.3/clang_64/mkspecs/macx-clang -I.
LINK          = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
LFLAGS        = -headerpad_max_install_names -Wl,-syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk -mmacosx-version-min=10.6
LIBS          = $(SUBLIBS)  
AR            = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar cq
RANLIB        = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib -s
QMAKE         = /Users/gracepark/Qt5.3.2/5.3/clang_64/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = 
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		smartarray.cpp \
		smartarray2d.cpp \
		fraction.cpp \
		Exception.cpp 
OBJECTS       = main.o \
		smartarray.o \
		smartarray2d.o \
		fraction.o \
		Exception.o
DIST          = ../../../Qt5.3.2/5.3/clang_64/mkspecs/features/spec_pre.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/qdevice.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/device_config.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/shell-unix.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/unix.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/mac.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/macx.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/gcc-base.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/gcc-base-mac.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/clang.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/clang-mac.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/qconfig.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bluetooth.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_clucene_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_concurrent.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_core.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_core_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_dbus.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_dbus_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_declarative.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_declarative_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designer.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designer_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_enginio.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_enginio_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_gui.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_gui_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_help.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_help_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_macextras.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_macextras_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimedia.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_network.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_network_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_nfc.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_nfc_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_opengl.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_opengl_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_openglextensions.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_positioning.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_positioning_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_printsupport.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qml.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qml_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmltest.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quick.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quick_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_script.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_script_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_scripttools.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sensors.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sensors_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_serialport.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_serialport_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sql.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sql_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_svg.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_svg_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_testlib.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_testlib_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_uitools.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_uitools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkit.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkit_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_websockets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_websockets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_widgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_widgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xml.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xml_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/qt_functions.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/qt_config.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/macx-clang/qmake.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/exclusive_builds.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/default_pre.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/default_pre.prf \
		deployment.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/resolve_config.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/default_post.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/sdk.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/default_post.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/objective_c.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/warn_on.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/rez.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/testcase_targets.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/exceptions.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/yacc.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/lex.prf \
		matrix.pro main.cpp \
		smartarray.cpp \
		smartarray2d.cpp \
		fraction.cpp \
		Exception.cpp
QMAKE_TARGET  = matrix
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = matrix

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-g \
		-isysroot \
		/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk \
		-mmacosx-version-min=10.6 \
		-Wall \
		-W



first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: matrix.pro ../../../Qt5.3.2/5.3/clang_64/mkspecs/macx-clang/qmake.conf ../../../Qt5.3.2/5.3/clang_64/mkspecs/features/spec_pre.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/qdevice.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/device_config.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/shell-unix.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/unix.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/mac.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/macx.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/gcc-base.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/gcc-base-mac.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/clang.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/common/clang-mac.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/qconfig.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bluetooth.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_clucene_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_concurrent.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_core.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_core_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_dbus.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_dbus_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_declarative.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_declarative_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designer.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designer_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_enginio.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_enginio_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_gui.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_gui_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_help.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_help_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_macextras.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_macextras_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimedia.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_network.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_network_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_nfc.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_nfc_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_opengl.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_opengl_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_openglextensions.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_positioning.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_positioning_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_printsupport.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qml.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qml_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmltest.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quick.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quick_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_script.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_script_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_scripttools.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sensors.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sensors_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_serialport.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_serialport_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sql.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sql_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_svg.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_svg_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_testlib.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_testlib_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_uitools.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_uitools_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkit.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkit_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_websockets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_websockets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_widgets.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_widgets_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xml.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xml_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/qt_functions.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/qt_config.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/macx-clang/qmake.conf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/exclusive_builds.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/default_pre.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/default_pre.prf \
		deployment.pri \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/resolve_config.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/default_post.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/sdk.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/default_post.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/objective_c.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/warn_on.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/rez.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/testcase_targets.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/exceptions.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/yacc.prf \
		../../../Qt5.3.2/5.3/clang_64/mkspecs/features/lex.prf \
		matrix.pro
	$(QMAKE) -spec macx-clang CONFIG+=debug CONFIG+=x86_64 -o Makefile matrix.pro
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/spec_pre.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/qdevice.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/device_config.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/shell-unix.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/unix.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/mac.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/macx.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/gcc-base.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/gcc-base-mac.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/clang.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/common/clang-mac.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/qconfig.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bluetooth.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_clucene_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_concurrent.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_concurrent_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_core.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_core_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_dbus.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_dbus_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_declarative.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_declarative_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designer.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designer_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_enginio.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_enginio_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_gui.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_gui_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_help.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_help_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_macextras.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_macextras_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimedia.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimedia_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_network.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_network_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_nfc.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_nfc_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_opengl.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_opengl_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_openglextensions.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_positioning.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_positioning_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_printsupport.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_printsupport_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qml.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qml_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmltest.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qmltest_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quick.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quick_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickwidgets.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_script.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_script_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_scripttools.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_scripttools_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sensors.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sensors_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_serialport.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_serialport_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sql.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_sql_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_svg.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_svg_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_testlib.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_testlib_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_uitools.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_uitools_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkit.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkit_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkitwidgets.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_websockets.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_websockets_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_widgets.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_widgets_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xml.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xml_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/qt_functions.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/qt_config.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/macx-clang/qmake.conf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/spec_post.prf:
.qmake.stash:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/exclusive_builds.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/default_pre.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/default_pre.prf:
deployment.pri:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/resolve_config.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/default_post.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/sdk.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/default_post.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/objective_c.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/warn_on.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/mac/rez.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/testcase_targets.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/exceptions.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/yacc.prf:
../../../Qt5.3.2/5.3/clang_64/mkspecs/features/lex.prf:
matrix.pro:
qmake: FORCE
	@$(QMAKE) -spec macx-clang CONFIG+=debug CONFIG+=x86_64 -o Makefile matrix.pro

qmake_all: FORCE

dist: 
	@test -d .tmp/matrix1.0.0 || mkdir -p .tmp/matrix1.0.0
	$(COPY_FILE) --parents $(DIST) .tmp/matrix1.0.0/ && (cd `dirname .tmp/matrix1.0.0` && $(TAR) matrix1.0.0.tar matrix1.0.0 && $(COMPRESS) matrix1.0.0.tar) && $(MOVE) `dirname .tmp/matrix1.0.0`/matrix1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/matrix1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


####### Sub-libraries

check: first

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cpp fraction.h \
		smartarray.h \
		smartarray2d.h \
		Exception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

smartarray.o: smartarray.cpp fraction.h \
		smartarray.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o smartarray.o smartarray.cpp

smartarray2d.o: smartarray2d.cpp fraction.h \
		smartarray.h \
		smartarray2d.h \
		Exception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o smartarray2d.o smartarray2d.cpp

fraction.o: fraction.cpp fraction.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o fraction.o fraction.cpp

Exception.o: Exception.cpp Exception.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Exception.o Exception.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/opt/matrix/bin || mkdir -p $(INSTALL_ROOT)/opt/matrix/bin
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/opt/matrix/bin/$(QMAKE_TARGET)"

uninstall_target: FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/opt/matrix/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/matrix/bin/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:
