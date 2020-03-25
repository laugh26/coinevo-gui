import QtQuick 2.9
import QtQuick.Layouts 1.1

import "../components" as CoinevoComponents

ColumnLayout {
    property alias buttonText: button.text
    property alias description: description.text
    property alias title: title.text
    signal clicked()

    id: settingsListItem
    Layout.fillWidth: true
    spacing: 0

    Rectangle {
        // divider
        Layout.preferredHeight: 1
        Layout.fillWidth: true
        Layout.bottomMargin: 8
        color: CoinevoComponents.Style.dividerColor
        opacity: CoinevoComponents.Style.dividerOpacity
    }

    RowLayout {
        Layout.fillWidth: true
        spacing: 0

        ColumnLayout {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
            spacing: 0

            CoinevoComponents.TextPlain {
                id: title
                Layout.fillWidth: true
                Layout.preferredHeight: 20
                Layout.topMargin: 8
                color: CoinevoComponents.Style.defaultFontColor
                opacity: CoinevoComponents.Style.blackTheme ? 1.0 : 0.8
                font.bold: true
                font.family: CoinevoComponents.Style.fontRegular.name
                font.pixelSize: 16
            }

            CoinevoComponents.TextPlainArea {
                id: description
                color: CoinevoComponents.Style.dimmedFontColor
                colorBlackTheme: CoinevoComponents.Style._b_dimmedFontColor
                colorWhiteTheme: CoinevoComponents.Style._w_dimmedFontColor
                Layout.fillWidth: true
                horizontalAlignment: TextInput.AlignLeft
            }
        }

        CoinevoComponents.StandardButton {
            id: button
            small: true
            onClicked: {
                settingsListItem.clicked()
            }
            width: 135
        }
    }
}
