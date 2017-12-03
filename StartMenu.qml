import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle
{
    id: rectangle
    width: 1280
    height: 720
    property alias settingGame: settingGame

    Column {
        id: column
        x: 380
        y: 4
        width: 520
        height: 712
        clip: false
        transformOrigin: Item.Center
        anchors.horizontalCenterOffset: 1
        spacing: 7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Button {
            id: startGame
            text: qsTr("Start Game")
            anchors.verticalCenterOffset: -150
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 0
            padding: 10
            rightPadding: 20
            leftPadding: 20
            bottomPadding: 10
            topPadding: 10
            font.letterSpacing: 5
            font.wordSpacing: 25
            font.capitalization: Font.SmallCaps
            font.pointSize: 50
            onClicked:
            {
                loader.setSource("game.qml")
            }
        }

        Button {
            id: settingGame
            text: qsTr("Settings")
            anchors.verticalCenterOffset: 150
            anchors.verticalCenter: startGame.verticalCenter
            anchors.horizontalCenterOffset: 0
            padding: 10
            rightPadding: 20
            leftPadding: 20
            bottomPadding: 10
            topPadding: 10
            font.letterSpacing: 5
            font.wordSpacing: 25
            font.capitalization: Font.SmallCaps
            font.pointSize: 50
            anchors.horizontalCenter: startGame.horizontalCenter
            onClicked:
            {
                loader.setSource("settings.qml")
            }
        }

        Button {
            id: exitGame
            text: qsTr("Exit")
            anchors.verticalCenterOffset: 150
            hoverEnabled: true
            highlighted: false
            checkable: false
            padding: 10
            rightPadding: 20
            leftPadding: 20
            bottomPadding: 10
            topPadding: 10
            font.letterSpacing: 5
            font.wordSpacing: 25
            font.capitalization: Font.SmallCaps
            font.pointSize: 50
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: settingGame.verticalCenter
            onClicked:
            {
                root.close()
            }
        }
    }

}
