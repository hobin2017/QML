/*

*/
import QtQuick 2.0

Item {
  id: root
  width:700
  height:700
  Image{
    x: 40; y:80
    source: "images/payment.png"
    NumberAnimation on x {
        to: 240
        duration: 4000
        loops: Animation.Infinite
    }
    RotationAnimation on rotation {
        to: 360
        duration: 2000
        loops: Animation.Infinite
    }
  }
}
