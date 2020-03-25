import QtQuick 2.9
import QtQuick.Controls 2.2

import FontAwesome 1.0
import "../components" as CoinevoComponents

MouseArea {
    signal paste()

    id: root
    acceptedButtons: Qt.RightButton
    anchors.fill: parent
    onClicked: {
        if (mouse.button === Qt.RightButton)
            contextMenu.open()
    }

    Menu {
        id: contextMenu

        background: Rectangle {
            border.color: CoinevoComponents.Style.buttonBackgroundColorDisabledHover
            border.width: 1
            radius: 2
            color: CoinevoComponents.Style.buttonBackgroundColorDisabled
        }

        padding: 1
        width: 100
        x: root.mouseX
        y: root.mouseY

        CoinevoComponents.ContextMenuItem {
            enabled: root.parent.canPaste === true
            glyphIcon: FontAwesome.paste
            onTriggered: root.paste()
            text: qsTr("Paste") + translationManager.emptyString
        }
    }
}
