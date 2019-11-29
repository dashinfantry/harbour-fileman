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

            PageHeader { title: qsTr("Settings") }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                    leftMargin: Theme.horizontalPageMargin
                    rightMargin: Theme.horizontalPageMargin
                }
                height: implicitHeight + Theme.paddingMedium
                color: Theme.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                wrapMode: Text.WordWrap
                horizontalAlignment: Qt.AlignHCenter
                text: qsTr("Fileman settings")
            }

            LabelSpacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Cache thumbnails")
                onClicked: pageStack.push(Qt.resolvedUrl("settings/DirectoryViewSettings.qml"))
            }

            LabelSpacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("File ordering")
                onClicked: pageStack.push(Qt.resolvedUrl("settings/FileOrderSettings.qml"))
            }

            LabelSpacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("File display")
                onClicked: pageStack.push(Qt.resolvedUrl("settings/FileDisplay.qml"))
            }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                    leftMargin: Theme.horizontalPageMargin
                    rightMargin: Theme.horizontalPageMargin
                }
                height: implicitHeight + Theme.paddingMedium
                color: Theme.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                wrapMode: Text.WordWrap
                horizontalAlignment: Qt.AlignHCenter
                text: qsTr("<br />" + "Fileman information")
            }

            LabelSpacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("About Fileman")
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                    leftMargin: Theme.horizontalPageMargin
                    rightMargin: Theme.horizontalPageMargin
                }
                height: implicitHeight + Theme.paddingMedium
                color: Theme.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                wrapMode: Text.WordWrap
                horizontalAlignment: Qt.AlignHCenter
                text: qsTr("<br />" + "Fileman GitHub wiki")
            }

            LabelSpacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Fileman Wiki")
                onClicked: pageStack.push(Qt.openUrlExternally("https://github.com/Xray1870/harbour-fileman/wiki"))
            }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                    leftMargin: Theme.horizontalPageMargin
                    rightMargin: Theme.horizontalPageMargin
                }
                height: implicitHeight + Theme.paddingMedium
                color: Theme.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                wrapMode: Text.WordWrap
                horizontalAlignment: Qt.AlignHCenter
                text: qsTr("<br />" + "Fileman translations")
            }

            LabelSpacer { }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Translations")
                onClicked: pageStack.push(Qt.resolvedUrl("TranslationsPage.qml"))
            }
          }
        }
      }
