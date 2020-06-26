import QtQuick 2.0
import Felgo 3.0
import "../"
EntityBase {

    id:boomcenter
    entityId: "boomcenter"
    entityType: "boom"
    property point start
    property alias splatTimer: boomTimer
    x:start.x
    y:start.y
    height: 22
    width: 22
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
            if (otherEntityId.substring(0, 4) !== "boom"&&otherEntityId.substring(0, 4) !== "sing") {
//                boomcenter.destroy();
                collidedEntity.beShoted()
            }
        }
    }
    SpriteSequence{
        id:boom_ysq
        defaultSource: "../../../assets/img/boompopo.png"
        anchors.fill:collider
        Sprite{
            name: "boomx"
            frameWidth: 32
            frameHeight: 34
            frameCount: 7
            startFrameRow: 1
            frameRate: 5
        }
    }
    SoundEffect{
        id:startBoom
        source: "../../../assets/snd/explode.wav"
    }

     onEntityCreated:{

         boomTimer.start()
         startBoom.play()
}
    Timer {
        id: boomTimer
        interval: 1000
        //        running: false
        repeat: false

        onTriggered:{
            boomcenter.destroy();
        }
    }
    function beShoted(){
     //  singleBullet.destroy();
    }

}
