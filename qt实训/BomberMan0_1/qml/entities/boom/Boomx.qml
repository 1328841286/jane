import QtQuick 2.0
import Felgo 3.0
import "../"

EntityBase {

    id:boomx
    entityId: "boomx"
    entityType: "boom"
    property point start
    property double power:1
    property alias splatTimer: boomTimer
    x:start.x
    y:start.y
    height: 22
//    width:power
    width : power*22

    BoxCollider{
        id:collider
        anchors.fill:parent
        height: parent.height
        width:parent.width
        collisionTestingOnlyMode: true
        density: 0
        friction: 0
        restitution: 0
        body.bullet: true
        body.fixedRotation: false// if set to true the physics engine will NOT apply rotation to it
        fixture.onBeginContact: {
          var collidedEntity = other.getBody().target;
          var otherEntityId = collidedEntity.entityId;
          var otherEntityType = collidedEntity.entityType
          var otherEntityParent = collidedEntity.parent;
          if (otherEntityId.substring(0, 4) !== "boom"&&otherEntityId.substring(0, 4) !== "sing"&&otherEntityType.substring(0,3)!=="po_") {
                  boomx.destroy();
                  collidedEntity.beShoted()
          }else{
                  collidedEntity.beShoted()
          }
        }

    }
    SpriteSequence{
        id:boomxsq
        defaultSource: "../../../assets/img/Boomx.png"
        anchors.fill:collider
        Sprite{
            name: "boomx"
            frameWidth: 352
            frameHeight: 32
            frameCount: 7
            startFrameRow: 1
            frameRate: 5
        }
    }

//    Image {
//        id: image
//        source: "../../assets/BigPopo.bmp"
//        anchors.fill:collider
//    }
    onEntityCreated: boomTimer.start()
    Timer {
        id: boomTimer
        interval: 1000
        //        running: false
        repeat: false
        onTriggered:{
            boomx.destroy();
        }
    }
    function beShoted(){
     //  singleBullet.destroy();
    }
}
