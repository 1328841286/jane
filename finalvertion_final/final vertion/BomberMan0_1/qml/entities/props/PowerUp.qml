import QtQuick 2.0
import Felgo 3.0

// the powershot powerUp increases the fire power
EntityBase {
  id: bomPowerup
  entityId: "bomPowerup"
  entityType: "props"
  width: 20
  height: 20
  x:start.x
  y:start.y

  property point start
  // count entities on the field

  SpriteSequence{
      id:powerupsp
      anchors.fill: parent
      defaultSource: "../../../assets/img/powerup.png"
      Sprite{
          name:"powerup"
          frameWidth: 38
          frameHeight: 43
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

    fixture.onBeginContact: {
      // the powerUp collides with the child collider of the player{
//        power与玩家的子对撞机相撞
      var collidedEntity = other.getBody().target;
      var otherEntityId = collidedEntity.entityId;
      if (otherEntityId.substring(0, 2) === "p1"){
          collidedEntity.getSound.play()
          console.debug("power:",collidedEntity.power)
          collidedEntity.power+=0.5
          bomPowerup.destroy()
        }
    }
  }
}
