QT += core sql
QT -= gui

TARGET = SyncAccountsManager

CONFIG += c++11
CONFIG += release

CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += src/main.cpp \
    src/connectdb.cpp

HEADERS += \
    src/connectdb.h

DESTDIR = bin

win32 {
    MOC_DIR = tmp-win32
    UI_DIR = tmp-win32
    UI_HEADERS_DIR = tmp-win32
    UI_SOURCES_DIR = tmp-win32
    OBJECTS_DIR = tmp-win32
    RCC_DIR = tmp-win32
}

linux {
    MOC_DIR = tmp-lin64
    UI_DIR = tmp-lin64
    UI_HEADERS_DIR = tmp-lin64
    UI_SOURCES_DIR = tmp-lin64
    OBJECTS_DIR = tmp-lin64
    RCC_DIR = tmp-lin64
#    QMAKE_POST_LINK = strip $${PWD}/$${DESTDIR}/$${TARGET}
#    QMAKE_RPATHDIR =
#    QMAKE_RPATHLINKDIR = # Possibly not needed
    QMAKE_POST_LINK = $${PWD}/src/fix_executable.sh $${TARGET} $$(QTDIR) $${PWD}/$${DESTDIR} $${PWD}

}

DISTFILES += \
    src/fix_executable.sh

