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
                ComboBox {
                    width: parent.width
                    label: qsTr("Default view mode")
                    currentIndex: settings.defaultViewMode == "list" ? 1 : 0

                    menu: ContextMenu {
                        MenuItem { text: qsTr("Grid") }
                        MenuItem { text: qsTr("List") }
                    }

                    onCurrentIndexChanged: {
                        if (currentIndex === 0)
                            settings.defaultViewMode = qsTr("grid")
                        else if (currentIndex === 1)
                            settings.defaultViewMode = qsTr("list")
                    }
                }
             }

            SectionHeader {
                text: qsTr("Thumbnails")
            }

            Column {
                width: parent.width
            }

            Column {
                // No spacing in this column
                width: parent.width
                TextSwitch {
                    text: qsTr("Display thumbnails")
                    description: qsTr("Display thumbnails for image files")

                    checked: settings.displayThumbnails

                    onCheckedChanged: settings.displayThumbnails = checked
                }
                TextSwitch {
                    text: qsTr("Cache thumbnails")
                    description: qsTr("Save generated thumbnails for faster loading")

                    checked: settings.cacheThumbnails

                    onCheckedChanged: settings.cacheThumbnails = checked
                }
            }
        }
    }
 }
