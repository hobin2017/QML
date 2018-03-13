/*
It is given in P37.
We use the alias feature to export properties 'label.text' as 'text'
*/
import QtQuick 2.0

Rectangle {
  id: root
  // export button properties
  property alias text: label.text
  signal clicked

  width: 116; height: 26
  color: "lightsteelblue"
  border.color: "slategrey"

  Text {
    id: label
    anchors.centerIn: parent
    text: "Start"
  }
  MouseArea {
    anchors.fill: parent
    onClicked: {
    root.clicked()
    }
  }
}
