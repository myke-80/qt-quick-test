import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    width: 200
    height: 200
    title: "Qt-Quick-Test"
    visible: true
    FontLoader {
        id: myTahoma;
        source: "/font/tahoma.ttf"
        onStatusChanged: if (loader.status === FontLoader.Ready) console.log('Loaded')
    }

    visibility: Window.FullScreen

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Rectangle {
        id: rect
        color: "#47f879"
        border.color: "#037724"
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent

        Text {
            id: press
            text: qsTr("PRESS ME")
            font.bold: false
            font.family: myTahoma.name
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 20
        }
    }
}

