/*
Transformation
1, changing the (x,y) position;
2, rotation (the item stays the same, just the painting instructions changes);
3, scaling (the item stays the same, just the painting instructions changes);
*/
import QtQuick 2.0

Item {
  id: root
  // set width based on given background
  width: bg.width*3
  height: bg.height*3
  Image { // nice background image
    id: bg
    source: "images/payment.png"
  }
  MouseArea {
    id: backgroundClicker
    // needs to be before the images as order matters
    // otherwise this mousearea would be before the other elements
    // and consume the mouse events
    anchors.fill: parent
    onClicked: {
    // reset our little scene
    rocket1.x = 20
    rocket2.rotation = 0
    rocket3.rotation = 0
    rocket3.scale = 1.0
    }
  }
  ClickableImage {
    id: rocket1
    x: 20; y: 100
    source: "images/payment.png"
    onClicked: {
    // increase the x-position on click
    x += 5
    }
  }
  ClickableImage {
    id: rocket2
    x: 140; y: 100
    source: "images/payment.png"
    smooth: true // need antialising
    onClicked: {
    // increase the rotation on click
    rotation += 5
    }
  }
  ClickableImage {
    id: rocket3
    x: 240; y: 100
    source: "images/payment.png"
    smooth: true // need antialising
    onClicked: {
    // several transformations
    rotation += 5
    scale -= 0.05
    }
  }
}
