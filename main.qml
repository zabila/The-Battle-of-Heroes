import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: root
    visible: true
    width: 1280
    height: 720
    title: qsTr("The Battle of Heroes")

    Loader
    {
        id: loader
        source: "StartMenu.qml"
    }
}
