import QtQuick 2.2
import Sailfish.Silica 1.0

PullDownMenu {
    id: pullDownMenu
    MenuItem {
        text: qsTr("Settings")
        visible: 'isShortcutsPage' in getDirectoryView() ? true : false
        onClicked: pageStack.push(Qt.resolvedUrl("../SettingsPage.qml"))
    }
    MenuItem {
        text: qsTr("New...")
        visible: 'isShortcutsPage' in getDirectoryView() ? false : true
        onClicked: getDirectoryPage().addNewFiles()
    }
    MenuItem {
        id: showHidden
        text: qsTr("Show hidden files")
        visible: false
        onClicked: {
            visible = false
            dontHidden.visible = true
            settings.showHiddenFiles = true
        }
    }
    MenuItem {
        id: dontHidden
        text: qsTr("Don't show hidden files")
        visible: false
        onClicked: {
            visible = false
            showHidden.visible = true
            settings.showHiddenFiles = false
        }
    }
    MenuItem {
        text: qsTr("Places")
        visible: 'isShortcutsPage' in getDirectoryView() ? false : true
        onClicked: getDirectoryPage().openShortcuts()
    }

function updatesHiddenFilesOptions() {

    if ('isShortcutsPage' in getDirectoryView())
        return

    if (settings.showHiddenFiles == true) {
          dontHidden.visible = true
          showHidden.visible = false
    } else {
          dontHidden.visible = false
          showHidden.visible = true
    }
  }
}
