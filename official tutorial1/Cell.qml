/*
A component provides a way of defining a new type that we can re-use in other QML files.
A QML component is like a black-box and interacts with the outside world through properties, signals and functions.
A QML component is generally defined in its own QML file.
Be careful: the component's filename must always start with a capital letter!!
*/
import QtQuick 2.0


//An Item is the most basic visual element in QML and is often used as a container for other elements.
Item {
    id: container
    width: 40; height: 25

    // The 'cellColor' property is accessible from outside our component and is an alias to the 'rectangle color'property
    property alias cellColor: rectangle.color

    // the 'cellColor' parameter of type 'color'
    signal clicked(color cellColor)

    Rectangle {
        id: rectangle
        border.color: "white"
        // The anchors.fill property is a convenient way to set the size of an element;
        // Currently, the rectangle will have the same size as its parent;
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
