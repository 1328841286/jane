import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandTreeGreen
    entityId: "sandTreeGreen"
    entityType: "sandTreeGreen"
    width: 26
    height: 26

    property alias sandTreeGreenBody: sandTreeGreen
    property alias circleCollider: boxCollider

    Image {
      id: sandTreeGreenBody
      width:26
      height: 26
      source:"../../assets/img/SandTreeGreen.png"
    }


    BoxCollider {
      id: boxCollider
      width: 23
      height: 23
      bodyType: Body.Static
    }

    function beShoted(){

    }

}
