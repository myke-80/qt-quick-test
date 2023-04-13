import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    width: 200
    height: 200
    title: "Qt-Quick-Test"
    visible: true

    Timer {
        id: timer
        interval: 1000
        running: true
        repeat: true
        onTriggered: time.text = new Date().toLocaleTimeString(Qt.locale(), "hh:" + "mm:" + "ss")
    }

    FontLoader
    {
        id: myTahoma;
        source: "/font/tahoma.ttf"
        onStatusChanged: if (loader.status === FontLoader.Ready) console.log('Loaded')
    }

    visibility: Window.FullScreen

    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            Qt.quit();
        }
    }

    Item
    {
        focus: true
        Keys.onEscapePressed:
        {
            event.accepted = true;
            Qt.quit();
        }
    }

    Rectangle
    {
        id: rect
        color: "#000000"
        border.color: "#000000"
        anchors.fill: parent

        Text
        {
            id: time
            font.bold: false
            font.family: myTahoma.name
            color: "#FFFFFF"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 250
        }
    }
}

