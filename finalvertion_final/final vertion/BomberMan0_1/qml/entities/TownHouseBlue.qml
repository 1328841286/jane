import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:townHouseBlue
    entityId: "townHouseBlue"
    entityType: "townHouseBlue"
    width: 26
    height: 26

    property alias sandTreeGreenBody: townHouseBlue
    property alias circleCollider: boxCollider

    Image {
      id: townHouseBlueBody
      width:26
      height: 26
      source:"../../assets/img/TownHouseBlue.png"
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
