import QtQuick 2.2
import Sailfish.Silica 1.0
import "./components"

Page
{
    id: translationpage
        allowedOrientations: Orientation.All

    SilicaFlickable
    {
        anchors.fill: parent
        contentHeight: content.height

        VerticalScrollDecorator {}

        PullDownMenu
        {
            MenuItem
            {
                text: qsTr("Transifex Fileman project")
                onClicked: Qt.openUrlExternally("https://www.transifex.com/fileman/fileman-1")
            }
        }

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
                title: "Chinese"
                labelData: [ "Dashinfantry" ]
            }

            CollaboratorsLabel {
                title: "Czech"
                labelData: [ "Malakay" ]
            }

            CollaboratorsLabel {
                title: "French"
                labelData: [ "Arusekk" ]
            }
            
            CollaboratorsLabel {
                title: "German"
                labelData: [ "Arusekk, Inta" ]
            }
            
            CollaboratorsLabel {
                title: "Italian"
                labelData: [ "Fravaccaro" ]
            }            

            CollaboratorsLabel {
                title: "Portuguese Brazil"
                labelData: [ "Rafael Vinicius" ]
            }

            CollaboratorsLabel {
                title: "Polish"
                labelData: [ "Atlochowski" ]
            }

            CollaboratorsLabel {
                title: "Russian"
                labelData: [ "Laphilis" ]
            }

            CollaboratorsLabel {
                title: "Spanish"
                labelData: [ "Carmenfdezb" ]
            }

            CollaboratorsLabel {
                title: "Swedish"
                labelData: [ "Eson" ]
            }
        }
    }
}
