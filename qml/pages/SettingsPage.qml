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

            SectionHeader { text: qsTr("Thumbnails") }

            Column {
                width: parent.width
                TextSwitch {
                    text: qsTr("Cache thumbnails")
                    description: qsTr("Save generated thumbnails for faster loading")
                    checked: settings.cacheThumbnails
                    onCheckedChanged: settings.cacheThumbnails = checked
            }

            Spacer { }

                Separator {
                    width: parent.width
                    color: Theme.primaryColor
                    horizontalAlignment: Qt.AlignHCenter
            }

            SectionHeader { text: qsTr("File display look") }

            Slider {
                id: overlayTimeSlider
                width: parent.width
                minimumValue: 1
                maximumValue: 5
                stepSize: 0.25
                handleVisible: true
                value: settings.fileOverlayPeriod
                valueText: value
                onReleased: settings.fileOverlayPeriod = value
                label: qsTr("Overlay visibility (seconds)")
            }

            TextSwitch {
                text: qsTr("Browse through all files")
                description: qsTr("When viewing a file, browse through all viewable files instead of files with the same file type")
                checked: settings.browseAllFileTypes
                onCheckedChanged: settings.browseAllFileTypes = checked
            }

            TextSwitch {
                text: qsTr("Display black background")
                description: qsTr("Display a black background when viewing image and video files")
                checked: settings.showBlackBackground
                onCheckedChanged: settings.showBlackBackground = checked
            }

            Spacer { }

                Separator {
                    width: parent.width
                    color: Theme.primaryColor
                    horizontalAlignment: Qt.AlignHCenter
            }

            SectionHeader { text: qsTr("File arrangement order") }

            Column {
                width: parent.width
                ComboBox {
                    width: parent.width
                    label: qsTr("Sort by")

                    menu: ContextMenu {
                        MenuItem { text: qsTr("Name") }
                        MenuItem { text: qsTr("Time") }
                        MenuItem { text: qsTr("Size") }
                        MenuItem { text: qsTr("Type") }
                    }

                    onCurrentIndexChanged: {
                        switch (currentIndex)
                        {
                            case 0:
                                settings.sortBy = "name"
                                break;

                            case 1:
                                settings.sortBy = "time"
                                break;

                            case 2:
                                settings.sortBy = "size"
                                break;

                            case 3:
                                settings.sortBy = "type"
                                break;
                        }
                    }

                    onParentChanged: {
                        switch (settings.sortBy)
                        {
                            case "name":
                                currentIndex = 0
                                break;

                            case "time":
                                currentIndex = 1
                                break;

                            case "size":
                                currentIndex = 2
                                break;

                            case "type":
                                currentIndex = 3
                                break;
                        }
                    }
                }

                ComboBox {
                    width: parent.width
                    label: qsTr("Sort order")

                    menu: ContextMenu {
                        MenuItem { text: qsTr("Ascending") }
                        MenuItem { text: qsTr("Descending") }
                    }

                    onCurrentIndexChanged: {
                        switch (currentIndex)
                        {
                            case 0:
                                settings.sortOrder = "asc"
                                break;

                            case 1:
                                settings.sortOrder = "desc"
                                break;
                        }
                    }

                    onParentChanged: {
                        switch (settings.sortOrder)
                        {
                            case "asc":
                                currentIndex = 0
                                break;

                            case "desc":
                                currentIndex = 1
                                break;
                        }
                    }
                }

                ComboBox {
                    width: parent.width
                    label: qsTr("Directory order")

                    menu: ContextMenu {
                        MenuItem { text: qsTr("Display directories first") }
                        MenuItem { text: qsTr("Display directories last") }
                        MenuItem { text: qsTr("Don't order directories") }
                    }

                    onCurrentIndexChanged: {
                        switch (currentIndex)
                        {
                            case 0:
                                settings.dirOrder = "first"
                                break;

                            case 1:
                                settings.dirOrder = "last"
                                break;

                            case 2:
                                settings.dirOrder = "none"
                                break;
                        }
                    }

                    onParentChanged: {
                        switch (settings.dirOrder)
                        {
                            case "first":
                                currentIndex = 0
                                break;

                            case "last":
                                currentIndex = 1
                                break;

                            case "none":
                                currentIndex = 2
                                break;
                        }
                   }
                }
             }
          }
       }
    }
 }
