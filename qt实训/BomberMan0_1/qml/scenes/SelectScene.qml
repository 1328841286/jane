import QtQuick 2.0
import Felgo 3.0
import "../common"


SceneBase{
    id:sectionScene
    signal singlePlayScenepressed
    signal multiPlayScenepressed
    Image {
      z: -2
      id: background
      source: "../../assets/img/beijing.png"
      anchors.centerIn: parent
      scale: 0.7
    }
    Column{
        anchors.centerIn: parent
        MenuButton{
            text: "单人闯关"
            color:"transparent"
            buttonText.color: "green"
            buttonText.font.family: radish.name
            buttonText.opacity: 1
            buttonText.font.pixelSize: 28
            onClicked: singlePlayScenepressed()

        }
        MenuButton{
            text:"多人对战"
            color:"transparent"
            buttonText.color: "red"
            buttonText.font.family: radish.name
            buttonText.opacity: 1
            buttonText.font.pixelSize: 28
            onClicked: multiPlayScenepressed()
        }
       }
    MenuButton{
        text: "Back"
        anchors.right: sectionScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: sectionScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: backButtonPressed()
    }
}
