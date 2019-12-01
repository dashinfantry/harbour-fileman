import QtQuick 2.1
import Sailfish.Silica 1.0
import "./components"

Page {
    id: settingspage
        allowedOrientations: Orientation.All

    SilicaFlickable
    {
        anchors.fill: parent
        contentHeight: content.height

        Column
        {
            id: content
            width: parent.width

            PageHeader { title: qsTr("Fileman settings") }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Cache thumbnails")
                onClicked: pageStack.push(Qt.resolvedUrl("settings/DirectoryViewSettings.qml"))
            }

            Spacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("File ordering")
                onClicked: pageStack.push(Qt.resolvedUrl("settings/FileOrderSettings.qml"))
            }

            Spacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("File display")
                onClicked: pageStack.push(Qt.resolvedUrl("settings/FileDisplay.qml"))
            }
          }
        }
      }
