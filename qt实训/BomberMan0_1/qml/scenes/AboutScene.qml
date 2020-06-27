import QtQuick 2.0
import Felgo 3.0
import '../common'
SceneBase{
    id:aboutScene
    Image {
      z: -2
      id: background
      source: "../../assets/img/About.png"
      anchors.centerIn: parent
      scale: 0.6
    }
    MenuButton{
        text: "Back"
        anchors.right: aboutScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: aboutScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: backButtonPressed()
    }
    Text {
        text: "Author
        :王中山
        :谢涛
        :王鑫"
        color: "black"
        font.family: "Times"
        anchors.left: aboutScene.gameWindowAnchorItem.lefe
        anchors.leftMargin: 10
        anchors.top:aboutScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
    }
}

