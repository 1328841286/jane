import QtQuick 2.0
import Felgo 3.0
import '../common'
SceneBase{
    id:multiPlayScene
    Rectangle{
        anchors.fill:parent.gameWindowAnchorItem
        color: "white"
    }
    MenuButton{
        text: "Back"
        anchors.right: multiPlayScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: multiPlayScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: backButtonPressed()
    }
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y:30
        font.pixelSize: 40
        color: "black"
        text: "Levels"
        font.family: radish.name
    }
    Text {
      id: tutorial
      text: "敬请期待"
      color: "#54A4BF"
      font.family: radish.name
      font.pixelSize: 16
      anchors {
        top: parent.top
        topMargin: 168
        left: parent.left
        leftMargin: 29
      }
    }


    Grid {
      anchors.centerIn: parent
      spacing: 2
      columns: 5


      Repeater {
        model: 10
        delegate: Rectangle {
          width: 52
          height: 52
          radius: 12
          color: "white"

          Rectangle {
            width: 44
            height: 44
            anchors.centerIn: parent
            radius: 11
            color: "#54A4BF"

            Rectangle {
              width: 40
              height: 40
              anchors.centerIn: parent
              radius: 10
              color: "white"

              MenuButton {
                property int level: index + 1
                text: level
                width: 36
                height: 36
                anchors.centerIn: parent
                buttonText.color: "#54A4BF"
                buttonText.font.family: radish.name
                buttonText.font.pixelSize: 24
                onClicked: {
                  var levelFile = "Level_"+level+".qml";
                  if(level < 10)
                    levelFile = "Level_0"+level+".qml";
                  levelPressed(levelFile)
                }
              }
            }
          }
        }
      }
    }
}
