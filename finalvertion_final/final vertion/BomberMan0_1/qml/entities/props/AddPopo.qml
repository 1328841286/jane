import QtQuick 2.0
import Felgo 3.0

EntityBase {

    id: addpopo
    entityId: "addpopo"
    entityType: "props"
    width: 20
    height: 20
    x:start.x
    y:start.y

    property point start
   // property point velocity
    // count entities on the field

    SpriteSequence{
        id:addpoposp
        anchors.fill:boxCollider
        defaultSource: "../../../assets/img/addpopo.png"
        Sprite{
            name:"addpopo"
            frameWidth: 40
            frameHeight: 45
            frameCount: 3
            startFrameRow: 1
            frameRate: 5
        }
    }

    BoxCollider {
      id: boxCollider
      anchors.fill: parent
      width: parent.width
      height: parent.height
      sensor:true

     //  collisionTestingOnlyMode: true
      fixture.onBeginContact: {
        // the powerUp collides with the child collider of the player{
  //        power与玩家的子对撞机相撞
        var collidedEntity = other.getBody().target;
        var otherEntityId = collidedEntity.entityId;
        if (otherEntityId.substring(0, 2) === "p1"){
           collidedEntity.getSound.play()
            collidedEntity.parent.bombnumber+=1
            addpopo.destroy()
          }

          //如果其中一个玩家接触到speedup，他们的speed将增加，计时器将重置
          //speedup本身会被破坏并从计数器中移除
      }
    }
}
