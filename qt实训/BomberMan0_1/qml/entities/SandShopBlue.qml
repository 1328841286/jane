import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandShopBlue
    entityId: "sandShopBlue"
    entityType: "sandShopBlue"
    width: 26
    height: 26

    property alias sandShopBlueBody: sandShopBlueBody
    property alias circleCollider: boxCollider

    Image {

      id: sandShopBlueBody
      width:26
      height: 26
      source:"../../assets/img/SandShopBlue.bmp"
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
