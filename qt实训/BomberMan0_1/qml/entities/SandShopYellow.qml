import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandShopYellow
    entityId: "sandShopYellow"
    entityType: "sandShopYellow"
    width: 26
    height: 26

    property alias sandShopBlueBody: sandShopYellowBody
    property alias circleCollider: boxCollider

    Image {

      id: sandShopYellowBody
      width:12
      height: 26
      source:"../../assets/img/SandShopYellow.bmp"
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
