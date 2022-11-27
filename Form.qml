import QtQuick 2.15
import QtQuick.Controls 6.3

Item {
    id:formulario

    property alias name: name
    property alias colorCode: colorCode

    signal cancelar()
    signal enviar()



    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Button {
            id: button
            x: 212
            y: 348
            width: 216
            height: 72
            text: qsTr("Cancelar")
            onClicked: formulario.cancelar()
        }

        Button {
            id: button1
            x: 212
            y: 241
            width: 216
            height: 82
            text: qsTr("Enviar")
            onClicked: formulario.enviar()
        }

        TextField {
            id: name
            x: 200
            y: 82
            width: 190
            height: 53
            placeholderText: qsTr("Text Field")
        }

        TextField {
            id: colorCode
            x: 200
            y: 156
            width: 190
            height: 53
            placeholderText: qsTr("Text Field")
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}
}
##^##*/
