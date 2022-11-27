import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    signal anyadir()
    property alias modelo: listView.model
    property alias text1: text1

    ListView {
        id: listView
        x: 228
        y: 124
        width: 110
        height: 160
        currentIndex: -1

        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Item {

            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {listView.currentIndex = index
                text1.text = index
                }
            }
        }
    }
    RoundButton {
        id: roundButton
        x: 449
        y: 415
        text: "+"
        anchors.right: listView.left
        anchors.bottom: listView.top
        anchors.rightMargin: -253
        anchors.bottomMargin: -323
        onClicked: anyadir()
    }

    Text {
        id: text1
        x: 205
        y: 423
        width: 146
        height: 44
        text: qsTr("Text")
        font.pixelSize: 12
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
