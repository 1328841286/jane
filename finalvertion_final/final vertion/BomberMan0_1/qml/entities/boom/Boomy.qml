import QtQuick 2.0
import Felgo 3.0
import "../"

EntityBase {

    id:boomy
    entityId: "boomy"
    entityType: "boom"
    property point start
    property double power:1
    property alias splatTimer: boomTimer
    x:start.x
    y:start.y
    height: power*22
//    height: power
    width : 22

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
          var otherEntityParent = collidedEntity.parent;
          var otherEntityType = collidedEntity.entityType
              if (otherEntityId.substring(0, 4) !== "boom"&&otherEntityId.substring(0, 4) !== "sing"&&otherEntityType.substring(0,3)!=="po_") {
                  boomy.destroy();
                  collidedEntity.beShoted()
              }else{
                  collidedEntity.beShoted()
              }
        }

    }
    SpriteSequence{
        id:boomysq
        defaultSource: "../../../assets/img/Boomy.png"
        anchors.fill:collider
        Sprite{
            name: "boomy"
            frameWidth: 32
            frameHeight: 351
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
            boomy.destroy();
        }
    }
    function beShoted(){
     //  singleBullet.destroy();
    }
}
