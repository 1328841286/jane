import Felgo 3.0
import QtQuick 2.0
import "../levels"
import".."

EntityBase {
    id:sandTreeYellow
    entityId: "sandTreeYellow"
    entityType: "po_sandTreeYellow"
    width: 26
    height: 26

    property alias sandTreeYellowBody: sandTreeYellow
    property alias circleCollider: boxCollider

    Image {
      id: sandTreeYellowBody
      width:26
      height: 26
      source:"../../assets/img/SandTreeYellow.png"
    }


    BoxCollider {
      id: boxCollider
      width: 24
      height: 24
      bodyType: Body.Static
    }
    property int countID: 0
    Timer{
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            countID++
        }
    }
   property  point start
    function beShoted(){
    sandTreeYellow.destroy();
        var  num1=getRandomNum(1,4);
//        start=player.location()
//        var numx=start.x-24;
//        var numy=start.y-24;
        var numx=getRandomNum(23,370);//道具随机地点
        var numy=getRandomNum(80,260);//道具随机地点
        //num1=4
        if(num1===1){
            var startX=numx
            var startY=numy
            var xDirection=0 //
            var yDirection=0 //



            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/props/AddPopo.qml"), {
                                                              "start" : Qt.point(startX, startY),
//                                                           "velocity" : Qt.point(xDirection, yDirection),
                                                                "entityId":"addpopo"+countID,
//                                                                "entityType": "props"
                                                              });
        }
        if(num1===2){
            var startX2=numx
            var startY2=numy

            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/props/PowerUp.qml"), {
                                                              "start" : Qt.point(startX2, startY2),
//                                                                "entityId":"bomPowerup"+countId,
                                                                "entityType": "propLifeAdd"+countID,
                                                              });
        }if(num1===3){
            var startX3=numx
            var startY3=numy
            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/props/SpeedUp.qml"), {
                                                              "start" : Qt.point(startX3, startY3),
                                                                "entityId":"SpeedUp"+countID,
//                                                                "entityType": "propSpeedUp"
                                                              });
        }

    }
}
