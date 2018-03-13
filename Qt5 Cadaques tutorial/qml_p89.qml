/*

*/
import QtQuick 2.0

Rectangle{
  id: root
  width: 120
  height: 300

  gradient: Gradient{
    GradientStop{position:0.0; color:'#f6f6f6'}
    GradientStop{position:1.0; color:'#d7d7d7'}
  }

  ListView{
    id: mylist
    anchors.fill: parent
    anchors.margins: 20
    clip: true
    model: 50
    delegate: numberDelegate
    spacing: 5
    focus: true
  }

  Component{
  // if the Text element is placed outside the rectangle element, there is an error!
    id: numberDelegate
    Rectangle{
        width: ListView.view.width
        height:40
        color: ListView.isCurrentItem?'#157efb':'#53d769'
        border.color: Qt.lighter(color, 1.1)
        Text{
        anchors.centerIn: parent
        font.pixelSize: 10
        text: index
        }
        MouseArea{anchors.fill:parent; onClicked: mylist.currentIndex=index}
    }

  }
}
