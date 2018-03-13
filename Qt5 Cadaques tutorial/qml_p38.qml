/*
A component is a reusable element just like a combination of many elements.
This qml use another qml 'Button.qml' as its child element.
It is important to know that only the root level properties can be accessed from outside this file by other elements;
*/
import QtQuick 2.0

Item {
  id: root

  Button { // our Button component
    id: button
    x: 12; y: 12
    text: "Start"
    onClicked: {
    status.text = "Button clicked!"
    }
  }

  Text { // text changes when button was clicked
    id: status
    x: 12; y: 76
    width: 116; height: 26
    text: "waiting ..."
    horizontalAlignment: Text.AlignHCenter
  }
}