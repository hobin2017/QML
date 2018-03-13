/*
using ListView element separate the data from the visualization;
*/
import QtQuick 2.0

Item {
  id: root
  MySquare{
    color: 'grey'
    width:520
    height:520
    ListView{
        //orientation: ListView.Horizontal //P83
        header: headerComponent  //P86
        footer: footerComponent  //P86
        anchors.fill: parent
        anchors.margins: 20
        clip: true  //P82
        model: 10
        delegate: numberDelegate
        spacing: 5
    }

    Component{
        id: numberDelegate
        MySquare{color:'green';width:40; height:40; text:index}
    }
    Component{
        id: headerComponent
        MySquare{color:'yellow';width:List.view.width;height:20;text:'Header'}
    }
    Component{
        id: footerComponent
        MySquare{color:'yellow';width:List.view.width;height:20;text:'Footer'}
    }
  }
}
