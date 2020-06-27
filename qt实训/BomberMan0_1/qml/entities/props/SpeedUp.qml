import QtQuick 2.0
import Felgo 3.0
import "../"

EntityBase {
  id: speedUp

  entityId: "speedUp"
  entityType: "props"
  width: 20
  height: 20
  x:start.x
  y:start.y
  property point start

  SpriteSequence{
      id:speedupsp
      anchors.fill:boxCollider
      defaultSource: "../../../assets/img/speedup.png"
      Sprite{
          name:"speedup"
          frameWidth: 40
          frameHeight: 44
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
    sensor:true//如果不希望形状对碰撞作出反应，请设置此属性

    fixture.onBeginContact: {
      // the speedUp collides with the child collider of the player{
//        speeddup与玩家的子对撞机相撞
      var collidedEntity = other.getBody().target;
      var otherEntityId = collidedEntity.entityId;
      if (otherEntityId.substring(0, 2) === "p1"){
          collidedEntity.getSound.play()
          console.debug("speed:",collidedEntity.speed)
          collidedEntity.speed++
          if(collidedEntity.speed===5){
              collidedEntity.speed=5
          }
          speedUp.destroy()
        }
    }
  }
}
