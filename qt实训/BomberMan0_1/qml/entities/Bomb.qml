import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id:singleBomb
    entityId: "singleBomb"
    entityType: "boom"
    x: start.x
    y: start.y
    property point start
    property point velocity
    property  double power:1
    width: 22
    height:22
//    property bool exist

//    Image {
//      id: image
//      source: "../../assets/rocket_green_small.png"
//      anchors.centerIn: boxCollider
//      width: boxCollider.width
//      height: boxCollider.height
//    }
    SpriteSequence{
        id: squaby
        defaultSource: "../../assets/img/popo.png"
        anchors.centerIn: parent
        scale: 0.5
            Sprite{
                name:"popo"
                source: "../../assets/img/popo.png"
                frameWidth: 45
                frameHeight: 41
                frameCount: 3
                startFrameColumn: 1
                frameRate: 5
//                scale: 0.5
            }
//            Sprite{
//                name:"boompopo"
//                source: "../../assets/boompopo"
//                frameWidth: 32
//                frameHeight: 48
//                frameCount: 7
//                startFrameRow: 1
//                frameRate: 5

//            }
    }
    BoxCollider{
        id:boxCollider
        width: parent.width
        height: parent.height
        anchors.fill: parent
        collisionTestingOnlyMode: true//当设置为true时，将从目标获取位置，碰撞器仅用于碰撞检测，而不用于位置更新。
        density: 0
        friction: 0
        restitution: 0  //恢复用于使对象反弹，以便像橡皮球一样模拟弹性对象。通常在[0,1]范围内。默认值为0。
        body.bullet: true//如果设置为真，物理引擎将不会对其应用旋转
        body.fixedRotation: true
//        fixture.onBeginContact: {
//          var collidedEntity = other.getBody().target;
//          var otherEntityId = collidedEntity.entityId;
//          var otherEntityParent = collidedEntity.parent;
//            if (otherEntityId.substring(0, 1) !== "1") {
//              singleBomb.destroy();
//                collidedEntity.beShoted()
//            }
//        }
//        // animate the bullet along its x-axis沿x轴设置项目符号的动画
//        MovementAnimation {
//          target: singleBomb
//          property: "x"
//          velocity: singleBomb.velocity.x
//          running: true
//        }

//        // animate the bullet along its y-axis沿y轴设置项目符号的动画
//        MovementAnimation {
//          target: singleBomb
//          property: "y"
//          velocity: singleBomb.velocity.y
//          running: true
//          onStopped: {
//            singleBomb.destroy()
//          }
//        }

    }
     onEntityCreated: boomTimer.start()
//     SoundEffect{
//         id:startBoom
//         source: "../../assets/snd/explode.wav"
//     }


    Timer {
        id: boomTimer
        interval: 2000
        //        running: false
        repeat: false
        onTriggered:{
            singleBomb.destroy()
//            squaby.jumpTo("boompopo")
            var startX1=singleBomb.x
            var startY1=singleBomb.y
            var startX2=singleBomb.x+singleBomb.width//Boomx location
            var startY2=singleBomb.y
            //Boomy location
            var startX3=singleBomb.x
            var startY3=singleBomb.y+singleBomb.height
            //Boom_x location
            var startX4=singleBomb.x-power*singleBomb.width
            var startY4=singleBomb.y
            //Boom_y location
            var startX5=singleBomb.x
            var startY5=singleBomb.y-power*singleBomb.height
            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/boom/Boom_center.qml"), {
                                                              "start" : Qt.point(startX1, startY1)

                                                            }
                                                            );
            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/boom/Boomx.qml"), {
                                                              "start" : Qt.point(startX2, startY2),
                                                                "power":power

                                                            }
                                                            );
            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/boom/Boomy.qml"), {
                                                              "start" : Qt.point(startX3, startY3),
                                                                "power":power

                                                            }
                                                            );
            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/boom/Boom_x.qml"), {
                                                              "start" : Qt.point(startX4, startY4),
                                                                "power":power

                                                            }
                                                            );
            entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/boom/Boom_y.qml"), {
                                                              "start" : Qt.point(startX5, startY5),
                                                                "power":power
        }
                                                            );
        }
   }


//    function beShoted(){
//       singleBomb.destroy();
//    }

}
