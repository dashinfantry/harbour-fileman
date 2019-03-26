import QtQuick 2.2
import Sailfish.Silica 1.0

Page {

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        VerticalScrollDecorator {}

        Column {
            id: column
            spacing: Theme.paddingLarge
            width: parent.width
            PageHeader {
                title: qsTr("Directory view")
            }

            SectionHeader {
                id: directoryLookHeader
                text: "Directory look"
            }
            Column {
                width: parent.width
            }
            TextSwitch {
                text: "Show hidden files"
                description: "Show hidden files and folders"

                checked: settings.showHiddenFiles

                onCheckedChanged: settings.showHiddenFiles = checked
            }

            SectionHeader {
                text: "Thumbnails"
            }
            Column {
                // No spacing in this column
                width: parent.width
                TextSwitch {
                    text: "Display thumbnails"
                    description: "Display thumbnails for image files"

                    checked: settings.displayThumbnails

                    onCheckedChanged: settings.displayThumbnails = checked
                }
                TextSwitch {
                    text: "Cache thumbnails"
                    description: "Save generated thumbnails for faster loading"

                    checked: settings.cacheThumbnails

                    onCheckedChanged: settings.cacheThumbnails = checked
                }
            }
        }
    }
 }
