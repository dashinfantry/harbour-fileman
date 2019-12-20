import QtQuick 2.2
import Sailfish.Silica 1.0
import "./components"

Page {
        allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: aboutColumn.height

        VerticalScrollDecorator {}

        PullDownMenu
        {
            MenuItem
            {
                text: qsTr("GitHub repository")
                onClicked: Qt.openUrlExternally("https://github.com/Xray1870/harbour-fileman")
            }

            MenuItem
            {
                text: qsTr("Report an Issue")
                onClicked: Qt.openUrlExternally("https://github.com/Xray1870/harbour-fileman/issues")
            }
        }

        PushUpMenu {

            MenuItem
            {
                text: qsTr("Fileman translations")
                onClicked: pageStack.push(Qt.resolvedUrl("TranslationsPage.qml"))
            }
        }

        Column {
            id: aboutColumn
            width: parent.width
            spacing: Theme.paddingLarge

            PageHeader { title: qsTr("About Fileman") }

            SectionHeader { text: qsTr("What's") + " Fileman?" }

            Image {
                source: "/usr/share/icons/hicolor/172x172/apps/harbour-fileman.png"
                width: 2/3 * parent.width
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextLabel { labelText: qsTr("Fileman is a File Manager for Sailfish OS.") }

            SectionHeader { text: qsTr("Licensing") }
            TextLabel { labelText: "Fileman " + qsTr("is free software released under the GNU General Public License (GPL), version 3 or later.") }

            SectionHeader { text: qsTr("Fileman developer") }

            IconTextButton {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Rudi Timmermans")
                iconSource: "qrc:/images/developer"
                onClicked: { Qt.openUrlExternally("https://twitter.com/RudiTimmermans");
                }
            }

            SectionHeader { text: qsTr("Donations") }

            TextLabel { labelText: qsTr("If you like my work and want to buy me a beer, feel free to do it!") }

            IconTextButton {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Donate with Paypal")
                iconSource: "qrc:/images/paypal"
                onClicked: { Qt.openUrlExternally("https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=29THE9VFMZ4PS");
                }
            }

            SectionHeader { text: qsTr("Icons") }
            TextLabel { labelText: qsTr("Fileman icons made by Gregguh.") }

            SectionHeader { text: qsTr("Thanking") }
            TextLabel { labelText: qsTr("Thanks to Velox and Sargo-devel for the help on the Search function.") }

            SectionHeader { text: qsTr("Version") }
            TextLabel { labelText: "Fileman v" + Qt.application.version }

            Item { width: parent.width; height: Theme.itemSizeMedium } //Spacer
        }
    }
}
