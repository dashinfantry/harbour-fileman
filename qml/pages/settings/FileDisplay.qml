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
                title: "File display"
            }

            SectionHeader {
                id: directoryLookHeader
                text: "File display look"
            }

            TextSwitch {
                text: "Browse through all files"
                description: "When viewing a file, browse through all viewable files instead of files with the same file type"

                checked: settings.browseAllFileTypes

                onCheckedChanged: settings.browseAllFileTypes = checked
            }
        }
    }
}
