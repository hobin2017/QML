/*
Layout Items
using 'anchors' property to manage the layout
Anchors are expressions of relativeness, you always need a related element to anchor with;
*/
import QtQuick 2.0

Item {
  id: root

  MySquare {
    color: 'green'
    MySquare {
        color: 'blue'
        width: 48
        y:8
        anchors.left: parent.left
        anchors.margins: 8
        text: '2'
    }
  }
}
