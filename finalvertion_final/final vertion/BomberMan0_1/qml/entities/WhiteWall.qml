import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."
//white wall can not be distoried
EntityBase {
    id:wallWhite
    entityId: "whiteWall"
    entityType: "whiteWall"
    width: 28
    height: 28

    property alias whiteWallBody: whiteWallBody
    property alias circleCollider: boxCollider

    Image {
      id: whiteWallBody
      width:26
      height: 26
      source:"../../assets/img/whiteWall.png"
    }


    BoxCollider {
      id: boxCollider
      width: 24
      height: 24
      bodyType: Body.Static
    }

    function beShoted(){

    }

}
