import QtQuick 2.9

import "." as CoinevoComponents
import "effects/" as CoinevoEffects

Rectangle {
    color: CoinevoComponents.Style.appWindowBorderColor
    height: 1

    CoinevoEffects.ColorTransition {
        targetObj: parent
        blackColor: CoinevoComponents.Style._b_appWindowBorderColor
        whiteColor: CoinevoComponents.Style._w_appWindowBorderColor
    }
}
