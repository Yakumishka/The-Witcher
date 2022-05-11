import QtQuick 2.4
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import Rikardo_Milos 1.0

Item{
    Window {
        id: w1
        visible: true
        width: 640
        height: 480
        x: (Screen.width - width) / 2
        y: (Screen.height - height) / 2


        Timer {
            interval: 1500
            repeat: true
            running: true

            onTriggered: {
                w1.hide()
                w2.show()

            }
        }



        MouseArea {
            anchors.fill: parent


            Image {
                id: image1
                x: 0
                y: 0
                width: 640
                height: 480
                clip: true
                anchors.fill: parent
                source: "99.jpg"
            }
        }

        Text {
            color: "#e8e5e5"
            text: qsTr("The Witcher Inc.")
            font.pointSize: 14
            font.bold: true
            font.italic: true
            font.family: "Tahoma"
            anchors.verticalCenterOffset: 207
            anchors.horizontalCenterOffset: -77
            anchors.centerIn: parent
        }
     }

Window{
     id: w2
    visible: false
    width: 1024
    height: 768
    title: "The Withcer"
      x: (Screen.width - width) / 2
      y: (Screen.height - height) / 2
    maximumHeight: 768
    maximumWidth: 1024
    minimumHeight: 768
    minimumWidth: 1024

    MouseArea {
        anchors.fill: parent

        SuperStar {
            id: lab1
            source: "dmesg.txt"
            onError: console.log(msg)
        }

        SuperStar{
            id: lab2z1
            source: "devices.txt"
            onError: console.log(msg)
        }

        SuperStar{
            id: caps
            source: "devices.txt"
            onError: console.log(msg)
        }

        Image {
            anchors.fill: parent
            id: image2
            x: 0
            y: 0
            width: 1024
            height: 768
            visible: true
            clip: true
            source: "55.jpg"

            Button {
                id: button1
                x: 40
                y: 40
                width: 90
                height: 90
                text: qsTr("")
                clip: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "11_1.png" :
                                                  (control.hovered ? "11_1.png" : "11.png")
                    }
                }

                onClicked: Qt.quit()
            }

            Button {
                id: button2
                x: 800
                y: 100
                width: 190
                height: 134
                text: qsTr("")
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "111_1.png" :
                                                  (control.hovered ? "111_1.png" : "111.png")
                    }

                }
                onClicked:{
                    if(button3.visible == false){
                        text2.visible = true
                        button3.visible = true
                        button4.visible = true
                        button5.visible = true
                        button6.visible = true }
                    else{
                        text2.visible = false
                        button3.visible = false
                        button4.visible = false
                        button5.visible = false
                        button6.visible = false
                    }
                }
            }


            Text {
                id: text2
                x: 780
                y: 250
                width: 235
                height: 69
                color: "LIGHTGRAY"
                text: qsTr("Выберите Знак")
                clip: true
                visible: false

                horizontalAlignment: Text.AlignHCenter
                style: Text.Raised
                font.italic: true
                font.bold: true
                font.pixelSize: 21
            }

            Button {
                id: button3
                x: 830
                y: 550
                width: 150
                height: 110
                text: qsTr(" ")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "22.png" :
                                                  (control.hovered ? "22.png" : "22_1.png")
                    }

                }
                onClicked: image2.source = "77.jpg"
            }

            Button {
                id: button4
                x: 750
                y: 421
                width: 150
                height: 110
                text: qsTr(" ")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "33.png" :
                                                  (control.hovered ? "33.png" : "33_1.png")
                    }

                }
                onClicked: image2.source = "55.jpg"
            }

            Button {
                id: button5
                x: 825
                y: 280
                width: 150
                height: 110
                text: qsTr(" ")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "44.png" :
                                                  (control.hovered ? "44.png" : "44_1.png")
                    }

                }
                onClicked: image2.source = "66.jpg"
            }



            Text {
                id: text1
                x: w2.width/2-330
                y: 0
                width: 660
                height: 117
                color: "LIGHTCYAN"
                text: qsTr("The Withcer")
                font.bold: true

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                //font.underline: true
                font.italic: true
                font.pixelSize: 42
            }

            Button {
                id: button7
                x: 78
                y: 131
                implicitWidth: 131
                implicitHeight: 57






                text: qsTr("Dmesg")
                checkable: true
                onClicked: {
                    if(button7.checked == true){
                        image5.visible = false
                        image4.visible = false
                        image3.visible = false
                        textArea1.visible = true
                        textArea3.visible = false
                        textArea2.visible = false
                        button9.checked = false
                        button10.checked = false
                        button11.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        buttonCom.checked = false
                        textArea1.text = lab1.read();
                    }
                        else textArea1.visible = false


                }
            }

            Button {
                id: button8
                x: 100
                y: 10
                width:150
                height: 150
                text: qsTr("")
                clip: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "222_1.png" :
                                                  (control.hovered ? "222_1.png" : "222.png")
                    }

                }
                onClicked:
                { if(image3.visible == false){
                        image5.visible = false
                        image4.visible = false
                        image3.visible = true
                        button7.checked = false
                        textArea1.visible = false
                        textArea3.visible = false
                        textArea2.visible = false
                        button9.checked = false
                        button10.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        button11.checked = false
                        buttonCom.checked = false}
                    else image3.visible = false
                }
            }

            Image {
                id: image3
                x: 159
                y: 270
                width: 569
                height: 315
                opacity: 1
                source: "fon2.jpg"
                visible: false


                TextEdit {
                    id: textEdit1
                    x: 35
                    y: 15
                    width: 470
                    height: 396
                    text: qsTr(" Мутацию прошли: \n \n Якушевич Максим Сергеевич (Цири) \n \n Бойко Сергей Васильевич ( Дядюшка Весемир) \n \n Мишенин Даниил Сергеевич (Эскель) \n\
\n \n \n\n\n\n\n\n\n\n\n                                                                    ©Witcher Inc. 2022")
                    font.pixelSize: 12
                }
            }

            Button {
                id: button9
                x: 204
                y: 131
                width: 131
                height: 57
                text: qsTr("Info OUT")
                checkable: true
                onClicked: {
                    if(button9.checked == true){
                        image5.visible = false
                        image4.visible = false
                        image3.visible = false
                        textArea2.visible = true
                        textArea3.visible = false
                        textArea1.visible = false
                        button7.checked = false
                        button10.checked = false
                        button12.visible = true
                        button13.visible = true
                        button14.visible = true
                        button11.checked = false
                        buttonCom.checked = false}
                        else textArea2.visible = false


                }
            }

            Button {
                id: button10
                x: 333
                y: 131
                width: 131
                height: 57
                text: qsTr("Клавиатура")
                checkable: true
                onClicked: {
                    if(button10.checked == true){
                        image4.visible = false
                        image5.visible = false
                        image3.visible = false
                        textArea3.visible = true
                        textArea2.visible = false
                        textArea1.visible = false
                        button7.checked = false
                        button9.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        button11.checked = false
                        buttonCom.checked = false}
                        else textArea3.visible = false


                }
            }


            Button {
                id: button11
                x: 462
                y: 131
                width: 131
                height: 57
                text: qsTr("Проектор")
                checkable: true
                onClicked:
                { if(image5.visible == false){
                        image5.visible = true
                        button11.checked = true
                        image4.visible = false
                        image3.visible = false
                        button7.checked = false
                        textArea1.visible = false
                        textArea3.visible = false
                        textArea2.visible = false
                        button9.checked = false
                        button10.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        buttonCom.checked = false
                    }
                    else image5.visible = false
                }
            }

            Image {
                id: image5
                x: 159
                y: 270
                width: 569
                height: 315
                opacity: 1
                source: "fon2.jpg"
                visible: false


                TextEdit {
                    id: textEdit112
                    x: 15
                    y: 15
                    width: 470
                    height: 396
                    text: qsTr("\n\n\n
                               1.Используемая технология: 3LCD
                               2. Способы подключения: HDMI, VGA, Video, USB Display,
                               USB, LAN, Wi-Fi.
                               3. Что можно отображать: Экран телефона или компьютера,
                               Фотографии, Видео(.avi), PDF, Web pages, Камеру и др.
                               ")
                    font.pixelSize: 13
                }
            }

            Button {
                id: buttonCom
                x: 591
                y: 131
                width: 131
                height: 57
                text: qsTr("COM порты")
                checkable: true
                onClicked:
                { if(image4.visible == false){
                        image4.visible = true
                        image5.visible = false
                        image3.visible = false
                        button7.checked = false
                        textArea1.visible = false
                        textArea3.visible = false
                        textArea2.visible = false
                        button9.checked = false
                        button10.checked = false
                        button12.visible = false
                        button13.visible = false
                        button14.visible = false
                        button11.checked = false}
                    else image4.visible = false
                }
            }

            Image {
                id: image4
                x: 159
                y: 270
                width: 569
                height: 315
                opacity: 1
                source: "fon2.jpg"
                visible: false


                TextEdit {
                    id: textEdit111
                    x: 35
                    y: 15
                    width: 470
                    height: 396
                    text: qsTr("\n\n\n1. Произвести внутренюю(аппаратную) коммутацию необходимых сигналов;
2. Произвести внутреннюю(программную) коммутацию сигналов порта
с помощью регистров конфигурирования выводов;
3. Произвести программирование последовательного порта;
4. Записать в исходную ячейку(4100h) передаваемого число;
5. Выполнить программу передачи байта;
6. Убедиться, что переданный байт находиться в ячейке 4200h;")
                    font.pixelSize: 12
                }
            }


            TextArea {
                id: textArea1
                x: 69
                y: 228
                width: 659
                height: 458
                text: ""
                font.pixelSize: 10
                visible: false
                clip: true
            }

            TextArea {
                id: textArea2
                x: 67
                y: 226
                width: 655
                height: 458
                visible: false
            }

            TextArea {
                id: textArea3
                x: 69
                y: 230
                width: 659
                height: 461
                visible: false
                Keys.onPressed: {
                     text = event.key
                    if(text == "16777235"){
                        text = "Нажмите  клавишу  включения  любого  индикатора
клавиатуры  "
                      indikator.checked = true

                    }

                 if(text == "16777252"  && indikator.checked == true)
                        text = caps.lab3zd2()

                 else if(text == "16777253"  && indikator.checked == true)
                        text = caps.lab3zd22()


                   else if(text == "16777265"){
                        text = "Посмотрите на индикаторы"
                        text = caps.lab3zd3() }
                   else if(text == "49")
                   {text = "okey"; text = caps.lab3zd1()
                   }
                // else
                // {text = " - Это не та клавиша"
                //}
                }
            }

            Button {
                id: button12
                x: 166
                y: 692
                width: 120
                height: 27
                text: qsTr("Devices")
                visible: false
                checkable: true
                onClicked: {
                    if(button12.checked == true){
                        button13.checked = false
                         button14.checked = false
                        textArea2.text = lab2z1.lab2zd1();

                    }
                }
            }

            Button {
                id: button13
                x: 284
                y: 692
                width: 120
                height: 27
                text: qsTr("CPU")
                visible: false
                checkable: true
                onClicked: {
                    if(button13.checked == true){
                        button12.checked = false
                         button14.checked = false
                        textArea2.text = lab2z1.lab2zd2();

                    }
                }
            }

            Button {
                id: button14
                x: 400
                y: 692
                width: 120
                height: 27
                text: qsTr("MemInfo")
                visible: false
                checkable: true
                onClicked: {
                    if(button14.checked == true){
                        button13.checked = false
                         button12.checked = false
                        textArea2.text = lab2z1.lab2zd3();

                    }
                }
            }

            Button {
                id: indikator
                x: 796
                y: 636
                width: 15
                height: 17
                text: qsTr("Button")
                visible: false
                checkable: true
            }



        }
    }

}


}
