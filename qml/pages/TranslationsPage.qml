import QtQuick 2.2
import Sailfish.Silica 1.0
import "./components"

Page
{
    id: developerspage
    allowedOrientations: Orientation.Portrait

    SilicaFlickable
    {
        anchors.fill: parent
        contentHeight: content.height

        VerticalScrollDecorator { flickable: parent }

        Column
        {
            id: content
            width: parent.width
            spacing: Theme.paddingLarge

            PageHeader
            {
                id: pageheader
                title: qsTr("Fileman translators")
            }

            CollaboratorsLabel {
                title: qsTr("English");
                labelData: [ "Rudi Timmermans" ]
            }
        }
    }
}
