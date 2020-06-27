import QtQuick 2.0
import Felgo 3.0
import "../common"


SceneBase{
    id:settingScene
    Image {
      z: -2
      id: background
      source: "../../assets/img/load.jpg"
      anchors.centerIn: parent
      scale: 0.4
    }
    MenuButton{
        text: "Back"
        anchors.right: settingScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: settingScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: backButtonPressed()
    }
    Column {
      anchors.top: parent.top
      anchors.topMargin: 20
      anchors.horizontalCenter: parent.horizontalCenter
      width: parent.width - 40
      spacing: 20


      Text {
        font.family: radish.name
        font.pixelSize: 36
        text: "Settings"
        color: "black"
      }


      Text {
        font.family: radish.name
        font.pixelSize: 24
        text: "Background Music"
        color: "black"
      }


      Text {
        font.family: radish.name
        font.pixelSize: 24
        text: "Sound Effects"
        color: "black"
      }
    }
    Column {
      anchors.right: parent.right
      anchors.rightMargin: 20
      anchors.top: parent.top
      anchors.topMargin: 77
      spacing: 8

      MenuButton {
        width: 80
        height: 40
        label.source: active ? "../../assets/img/off.png" : "../../assets/img/on.png"
        active: ! settings.musicEnabled
        opacity: 1
        onClicked:  {
          settings.musicEnabled ^= true
        }
      }

      MenuButton {
        width: 80
        height: 40
        label.source: active ? "../../assets/img/off.png" : "../../assets/img/on.png"
        active: ! settings.soundEnabled
        opacity: 1
        onClicked: {
          settings.soundEnabled ^= true
        }
      }
    }
}
