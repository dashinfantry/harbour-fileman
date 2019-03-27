import QtQuick 2.2
import Sailfish.Silica 1.0
import Nemo.FileManager 1.0
import Sailfish.TransferEngine 1.0
 
Page {
    id: sharePage

    property string currentDir: settings.dirPath
 
    property var clipboard: [ ]
    property var selectedFiles: [ ]
    property string directory: ""
 
    allowedOrientations: Orientation.All
 
    ShareMethodList {
        id: shareMethodList
        anchors.fill: parent
        header: PageHeader {
            title: "Share"
        }
        filter: "image/jpeg"
        source: "file://" + page.file
        content: {
            "name": "Photo from advanced camera",
            "data": "file://" + page.selectedFiles,
            "type": "image/jpeg",
            "icon": "image://theme/icon-m-file-image"
        }
 
        ViewPlaceholder {
            enabled: shareMethodList.model.count === 0
            text: "No sharing accounts available!"
        }
    }
}
