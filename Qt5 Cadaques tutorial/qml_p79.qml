/*
using Repeater element to separate the data from the visualization;
*/
import QtQuick 2.0

Item {
  id: root
  Column {
    spacing:2
    Repeater{
        model: 3
        delegate: MySquare{color:'blue'; width:100; height:32}
    }
  }
}
