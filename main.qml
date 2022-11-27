import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackView {
        id: stackView
        width: 200
        height: 200

        initialItem:
            Listado {
            id: list1
            modelo: modeloPrincipal
            onAnyadir: stackView.push(formulario)

        }
        Component {
            id: formulario
            Form {
                onCancelar: stackView.pop()
                onEnviar: {
                    modeloPrincipal.append ({name: name.text, colorCode: colorCode.text})
                    stackView.pop()
                }

            }
        }
    }



    ListModel {
        id: modeloPrincipal
        ListElement {
            name: "Grey2"
            colorCode: "grey"
        }
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:1}
}
##^##*/
