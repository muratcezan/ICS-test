QT += quick

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

lupdate_only {
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
    qml/pages/PageManuelBake.qml
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
