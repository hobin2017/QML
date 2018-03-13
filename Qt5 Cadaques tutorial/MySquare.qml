/*

*/
import QtQuick 2.0

Rectangle {
  id: root
  property alias text: label.text
  width:48; height:48
  color: 'black'
  border.color: Qt.lighter(color)
  Text{id: label; text: ''; anchors.centerIn: parent}
}
