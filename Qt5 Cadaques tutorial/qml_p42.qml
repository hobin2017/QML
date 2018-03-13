/*
Positioning Elements: Column, Row, Grid and etc.
*/
import QtQuick 2.0

Item {
  id: root
  width: 680; height:520

  Rectangle {
    id: widget1
    width: 120; height: 240
    color: 'black'
    Column {
        id: row1
        anchors.centerIn: parent
        spacing: 8
        MySquare { color:'#ea7025'}
        MySquare { width: 96; color:"green" }
        MySquare { color:"blue"}
    }
  }
  Rectangle {
    id: widget2
    y: 240
    width: 400; height: 120
    color: 'black'
    Row {
        id: row2
        anchors.centerIn: parent
        spacing: 20
        MySquare { color:"blue"}
        MySquare { color:"green"}
        MySquare { color:'#ea7025'}
    }
  }

  Rectangle {
    id: widget3
    y:360
    width: 160; height: 160
    color: 'black'
    Grid {
        id: grid
        rows: 2
        columns: 2
        anchors.centerIn: parent
        spacing: 8
        MySquare { color:'#ea7025'}
        MySquare { color:'#ea7025'}
        MySquare { color:'#ea7025'}
        MySquare { color:'#ea7025'}
    }
  }

}

