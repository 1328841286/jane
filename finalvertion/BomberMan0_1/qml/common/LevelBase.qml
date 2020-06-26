import QtQuick 2.0
import Felgo 3.0
import "../entities"
Item {

    id: levelBaseScene
    width: 320
    height: 480
    state: "0"
 //   property alias player: player
Item {
  id: gameWindowAnchorItem
  x: gameScene.gameWindowAnchorItem.x
  y: gameScene.gameWindowAnchorItem.y
  width: gameScene.gameWindowAnchorItem.width
  height: gameScene.gameWindowAnchorItem.height
}
Wall {
  id: wallLeft
  width: 15
  z: 1
  anchors {
    left: gameWindowAnchorItem.left//gameWindowAnchorItem.left
    top: gameWindowAnchorItem.top
    bottom: gameWindowAnchorItem.bottom
  }
  image.source: "../../assets/img/Wall2.png"
  image.rotation: 180
}

Wall {
  id: wallRight
  width: 15
  z: 1
  anchors {
    right: gameWindowAnchorItem.right
    bottom: gameWindowAnchorItem.bottom
    top: gameWindowAnchorItem.top
  }
  image.source: "../../assets/img/Wall2.png"
}

Wall {
  id: wallBottom
  height: 15
  z: 1
  anchors {
    left: gameWindowAnchorItem.left
    right: gameWindowAnchorItem.right
    bottom: gameWindowAnchorItem.bottom
  }
  image.source: "../../assets/img/Wall.png"
}

Wall {
  id: wallTop
  height: 15
  z: 1
  anchors {
    left: gameWindowAnchorItem.left
    right: gameWindowAnchorItem.right
    top:gameWindowAnchorItem.top
  }
  image.source: "../../assets/img/Wall.png"
  image.rotation: 180
}

}
