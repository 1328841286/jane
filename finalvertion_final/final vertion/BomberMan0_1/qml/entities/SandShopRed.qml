import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandShopRed
    entityId: "sandShopRed"
    entityType: "sandShopRed"
    width: 26
    height: 26

    property alias sandShopBlueBody: sandShopRedBody
    property alias circleCollider: boxCollider

    Image {

      id: sandShopRedBody
      width:12
      height: 26
      source:"../../assets/img/SandShopRed.bmp"
    }


    BoxCollider {
      id: boxCollider
      width: 12
      height: 24
      bodyType: Body.Static
    }

    function beShoted(){

    }

}
