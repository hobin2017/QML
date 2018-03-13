/*
using Text element;
*/
import QtQuick 2.0

Item{
id: root;
  Text{
  width:80; height:120;
  text: 'a very long text'
  elide: Text.ElideMiddle
  style: Text.Sunken
  styleColor: '#FF4444'
  verticalAlignment: Text.AlignTop
  }

}