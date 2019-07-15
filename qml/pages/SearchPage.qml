import QtQuick 2.2
import Sailfish.Silica 1.0
import "./components"

Page {
    id: searchPage
    property string searchString
    property bool keepSearchFieldFocus

    Column {
        id: headerContainer

        width: searchPage.width

        PageHeader {
            title: qsTr("Fileman Search")
        }

        SearchField {
            id: searchField
            width: parent.width

            Binding {
                target: searchPage
                property: "searchString"
                value: searchField.text.toLowerCase().trim()
            }
        }

        TextLabel { labelText: qsTr("The search option is still a work in progress, and do not function.") }
    }

    Component {
        id: gridViewComponent
        SilicaGridView {
            id: gridView
            model: listModel
            anchors.fill: parent
            currentIndex: -1
            header: Item {
                id: header
                width: headerContainer.width
                height: headerContainer.height
                Component.onCompleted: headerContainer.parent = header
            }

            cellWidth: gridView.width / 3
            cellHeight: cellWidth

            delegate: BackgroundItem {
                id: rectangle
                width: gridView.cellWidth
                height: gridView.cellHeight
                GridView.onAdd: AddAnimation {
                    target: rectangle
                }
                GridView.onRemove: RemoveAnimation {
                    target: rectangle
                }

                OpacityRampEffect {
                    sourceItem: label
                    offset: 0.5
                }

                Label {
                    id: label
                    x: Theme.paddingMedium; y: Theme.paddingLarge
                    width: parent.width - y
                    textFormat: Text.StyledText
                    color: searchString.length > 0 ? (highlighted ? Theme.secondaryHighlightColor : Theme.secondaryColor)
                                                   : (highlighted ? Theme.highlightColor : Theme.primaryColor)

                    text: Theme.highlightText(model.text, searchString, Theme.highlightColor)
                    font {
                        pixelSize: Theme.fontSizeLarge
                        family: Theme.fontFamilyHeading
                    }
                }
            }

            VerticalScrollDecorator {}

            Component.onCompleted: {
                if (keepSearchFieldFocus) {
                    searchField.forceActiveFocus()
                }
                keepSearchFieldFocus = false
            }
        }
    }

    Component {
        id: listViewComponent
        SilicaListView {
            model: listModel
            anchors.fill: parent
            currentIndex: -1 // otherwise currentItem will steal focus
            header:  Item {
                id: header
                width: headerContainer.width
                height: headerContainer.height
                Component.onCompleted: headerContainer.parent = header
            }

            delegate: BackgroundItem {
                id: backgroundItem

                ListView.onAdd: AddAnimation {
                    target: backgroundItem
                }
                ListView.onRemove: RemoveAnimation {
                    target: backgroundItem
                }

                Label {
                    x: searchField.textLeftMargin
                    anchors.verticalCenter: parent.verticalCenter
                    color: searchString.length > 0 ? (highlighted ? Theme.secondaryHighlightColor : Theme.secondaryColor)
                                                   : (highlighted ? Theme.highlightColor : Theme.primaryColor)
                    textFormat: Text.StyledText
                    text: Theme.highlightText(model.text, searchString, Theme.highlightColor)
                }
            }

            VerticalScrollDecorator {}

            Component.onCompleted: {
                if (keepSearchFieldFocus) {
                    searchField.forceActiveFocus()
                }
                keepSearchFieldFocus = false
            }
        }
    }
 }
