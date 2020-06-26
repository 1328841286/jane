import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandHouseYellow
    entityId: "sandHouseYellow"
    entityType: "sandHouseYellow"
    width: 26
    height: 26

    property alias sandTreeGreenBody: sandHouseYellow
    property alias circleCollider: boxCollider

    Image {
      id: sandHouseGreenBody
      width:26
      height: 26
      source:"../../assets/img/TownHouseYellow.png"
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
