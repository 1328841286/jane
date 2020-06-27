import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandHouseGreen
    entityId: "sandHouseGreen"
    entityType: "sandHouseGreen"
    width: 26
    height: 26

    property alias sandHouseGreenBody: sandHouseGreenBody
    property alias circleCollider: boxCollider

    Image {
      id: sandHouseGreenBody
      width:26
      height: 26
      source:"../../assets/img/SandHouseGreen.bmp"
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
