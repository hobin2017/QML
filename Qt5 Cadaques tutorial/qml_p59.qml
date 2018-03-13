/*

*/
import QtQuick 2.0

Item {
  id: root
  width:700
  height:700
  ClickableImageV2 {
    id: rocket1
    x: 40; y: root.height-height
    source: "images/payment.png"
    text: "animation on property"
    NumberAnimation on y {to: 40; duration: 4000}
  }

  ClickableImageV2 {
    id: rocket2
    x: 152; y: root.height-height
    source: "images/payment.png"
    text: "behavior on property"
    Behavior on y {
        NumberAnimation { duration: 4000 }
    }
    onClicked: y = 40
  }

  ClickableImageV2 {
    id: rocket3
    x: 264; y: root.height-height
    source: "images/payment.png"
    onClicked: anim.start()
    // onClicked: anim.restart()
    text: "standalone animation"
    NumberAnimation {
        id: anim
        target: rocket3
        properties: "y"
        to: 40
        duration: 4000
    }
  }
}
