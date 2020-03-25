import QtQuick 2.9

import "../components" as CoinevoComponents

TextEdit {
    color: CoinevoComponents.Style.defaultFontColor
    font.family: CoinevoComponents.Style.fontRegular.name
    selectionColor: CoinevoComponents.Style.textSelectionColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
