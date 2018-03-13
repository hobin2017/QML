/*
Properties
*/
import QtQuick 2.0

Text {

// (1) identifier
id: thisLabel
// (2) set x- and y-position
x: 24; y: 16
// (3) bind height to 2 * width
height: 2 * width
// (4) custom property
property int times: 25
// (5) property alias
property alias anotherTimes: thisLabel.times
// (6) set text appended by value
text: "Greetings " + anotherTimes
// (7) font is a grouped property
font.family: "Ubuntu"
font.pixelSize: 24
// (8) KeyNavigation is an attached property
KeyNavigation.tab: otherLabel
// (9) signal handler for property changes
onHeightChanged: console.log('height:', height)
// focus is needed to receive key events
focus: false
// change color based on focus value
color: focus?"red":"black"

}
