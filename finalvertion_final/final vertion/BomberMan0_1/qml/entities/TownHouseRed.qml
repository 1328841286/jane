import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandHouseRed
    entityId: "sandHouseRed"
    entityType: "sandHouseRed"
    width: 26
    height: 26

    property alias sandTreeGreenBody: sandHouseRed
    property alias circleCollider: boxCollider

    Image {
      id: sandHouseGreenBody
      width:26
      height: 26
      source:"../../assets/img/TownHouseRed.png"
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
