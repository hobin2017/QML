/*
using GridView element separate the data from the visualization.
The main difference is that the GridView element places the delegates in two dimensional.
Therefore, some properties are different.
*/
import QtQuick 2.0

Item {
  id: root
  MySquare{
    color: 'grey'
    width:220
    height:300

    GridView{
        anchors.fill: parent
        anchors.margins: 20
        clip: true  //P82
        model: 30
        cellWidth: 45
        cellHeight: 45
        delegate: numberDelegate
    }

    Component{
        id: numberDelegate
        MySquare{color:'green';width:40; height:40; text:index}
    }
  }
}
