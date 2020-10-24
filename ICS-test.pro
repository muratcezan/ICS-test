QT += quick core

CONFIG += c++11

HEADERS += \
    hdr/datacontroller.h \
    hdr/datainfo.h \
    hdr/mainwindow.h \
    hdr/worker.h

SOURCES += \
        src/datacontroller.cpp \
        src/datainfo.cpp \
        src/main.cpp \
        src/mainwindow.cpp \
        src/worker.cpp

RESOURCES += qml.qrc

lupdate_only {
# QML Files
SOURCES =+ \
    qml/main.qml \
    qml/components/Button.qml \
    qml/components/LeftBar.qml \
    qml/components/RightBar.qml \
    qml/pages/PageDefault.qml \
    qml/components/Header.qml \
    qml/components/Footer.qml \
    qml/pages/PageCameraPreview.qml \
    qml/pages/PageCookBook.qml \
    qml/pages/PageManuelBake.qml \
    qml/pages/PageRunning.qml \
    qml/pages/PageManuelTimer.qml \
    qml/pages/PageManuelTemperature.qml \
    qml/components/SliderNew.qml \
    qml/components/TempBar.qml \
    qml/Api.qml \
    js/functionList.js

}
DISTFILES += \
    pics/alarm/alarm-clock-emp-line.png \
    pics/alarm/alarm-clock-line.png \
    pics/alarm/alarm-clock-rgb-line.png \
    pics/alarm/alarm-clock-rgb.png \
    pics/bluetooth/bluetooth-off.png \
    pics/bluetooth/bluetooth-on.png \
    pics/light/lightbulb-emp.png \
    pics/light/lightbulb-line-emp.png \
    pics/light/lightbulb-line.png \
    pics/light/lightbulb-off.png \
    pics/light/lightbulb-on.png \
    pics/light/lightbulb-rgb-line.png \
    pics/light/lightbulb-rgb.png \
    pics/menu/menu-black.png \
    pics/menu/menu-rgb.png \
    pics/menu/menu.png \
    pics/more/more-rgb.png \
    pics/more/more.png \
    pics/other/duck.png \
    pics/other/triangle.png \
    pics/oven/oven-line.png \
    pics/oven/oven-rgb-line.png \
    pics/oven/oven-rgb.png \
    pics/power/power-emp.png \
    pics/power/power-off.png \
    pics/power/power-on.png \
    pics/settings/settings.png \
    pics/wifi/wifi-line.png \
    pics/wifi/wifi-rgb-line.png \
    pics/wifi/wifi-rgb.png

