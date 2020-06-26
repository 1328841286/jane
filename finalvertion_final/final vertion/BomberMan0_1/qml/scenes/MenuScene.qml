import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.0
import "../common"
import"../entities/props"
import"../entities"
SceneBase{
    id:menuScene
    signal sectionScenepressed
    signal aboutScenepressed
    signal gameScenepressed
    signal settingScenepressed
    BackgroundMusic {
      loops: SoundEffect.Infinite
      volume: 0.35
      id: ambienceMusic
      source: "../../assets/bg.wav"
    }
    Timer {
      id: timerMusic
      interval: 100; running: true; repeat: true;
      onTriggered: {
        ambienceMusic.play()
        running = false
      }
    }
    Image {
      z: -2
      id: background
      source: "../../assets/img/bg.jpg"
      anchors.centerIn: parent
      scale: 0.5
    }
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y:30
        font.pixelSize: 60
        color: "black"
        text: "炸弹人"
        font.family: radish.name
    }
    AddPopo{
        id:popo
        anchors {
            top:menuScene.top
            left:menuScene.left
            topMargin:20
            leftMargin:300
        }
        z:-2
       scale: 2.5
    }

   PowerUp{
       id:power
       anchors {
           top:menuScene.top
           left:menuScene.left
           topMargin:105
           leftMargin:150
       }
       z:-2
      scale: 1.5
   }

   PowerUp{
       id:power1
       anchors {
           top:menuScene.top
           left:menuScene.left
           topMargin:145
           leftMargin:150
       }
       z:-2
      scale: 1.5
   }
   PowerUp{
       id:power3
       anchors {
           top:menuScene.top
           left:menuScene.left
           topMargin:185
           leftMargin:150
       }
       z:-2
      scale: 1.5
   }
    Column{
        anchors.centerIn: parent
        MenuButton{
            text: "Play"
            color:"transparent"
            buttonText.font.family: radish.name
            buttonText.color: "green"
            buttonText.opacity: 1
            buttonText.font.pixelSize: 28
            onClicked: sectionScenepressed()
        }
        MenuButton{
            text: "About"
            color:"transparent"
            buttonText.color: "red"
            buttonText.font.family: radish.name
            buttonText.opacity: 1
            buttonText.font.pixelSize: 28
            onClicked: aboutScenepressed()
        }
        MenuButton{
            text: "Setting"
            color:"transparent"
            buttonText.color: "blue"
            buttonText.font.family: radish.name
            buttonText.opacity: 1
            buttonText.font.pixelSize: 28
            onClicked: settingScenepressed()
        }
        }
}
