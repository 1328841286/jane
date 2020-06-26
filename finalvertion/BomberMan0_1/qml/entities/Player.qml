import QtQuick 2.0
import Felgo 3.0
import "../"

EntityBase {
    id:player

  //  entityId: "e"
    entityType: "po_player"
    entityId: "p1"
    width:22
    height: 24
//    property alias collider: collider

    property alias collider: collider
    property alias horizontalVelocity: collider.linearVelocity.x
    property alias verticalVelocity:collider.linearVelocity.y
    property alias getSound: getSound
    property int life: 3
    property  int power:1
    property int speed: 1
    property int bombnumber: 1
    property bool activateHitShield: false          // activate shield for short after a hit
    property int activeHitShieldCounter: 0          // count from 0 to 5 every 100
    /*MultiResolutionImage{
        anchors.fill:parent
        source: "../../assets/role11.png"

    }*/

    BoxCollider{
        id:collider
        height:player.height

        width: player.width
//        anchors.centerIn: collider
        bodyType: Body.Dynamic
        fixedRotation: true
        anchors.horizontalCenter: parent.horizontalCenter
        bullet: true // for super accurate collision detection, use this sparingly, because it's quite performance greedy
        sleepingAllowed: false
        // apply the horizontal value of the TwoAxisController as force to move the player left and right应用TwoAxisController的水平值作为力来左右移动播放器
        force: Qt.point(controller.xAxis*170*(2+speed),controller.yAxis*-170*(2+speed))
        // limit the horizontal velocity
        onLinearVelocityChanged: {
          if(linearVelocity.x > 170) linearVelocity.x = 170
          if(linearVelocity.x < -170) linearVelocity.x = -170
          if(linearVelocity.y > 170) linearVelocity.y=170
          if(linearVelocity.y < -170) linearVelocity.y=-170
        }
//         linearVelocity: Qt.point(controller.xAxis * 100, controller.yAxis * 100)

    }
    Timer {
      id: updateTimer
      // set this interval as high as possible to improve performance, but as low as needed so it still looks good
  //    将此间隔设置得尽可能高以提高性能，但尽可能低以使其看起来仍然良好
      interval: 60
      running: true
      repeat: true
      onTriggered: {
        var xAxis = controller.xAxis;
          var yAxis=controller.yAxis;
        // if xAxis is 0 (no movement command) we slow the player down until he stops
  //        如果xAxis是0（没有移动命令），我们会减慢玩家的速度直到他停止
        if(xAxis === 0||yAxis === 0) {
          if(Math.abs(player.horizontalVelocity) > 10||Math.abs(player.verticalVelocity) > 10){
              player.horizontalVelocity /= 1.5
              player.verticalVelocity /=1.5
          }else {
              player.verticalVelocity = 0
              player.horizontalVelocity = 0
        }
      }
     }
    }
//    function  liferest(){
//        player.life===3
//    }

    SoundEffect{
        id:getSound
        source: "../../assets/snd/get.wav"
    }
    Timer {
      id: timerPlayer
      interval: 100; running: true; repeat: true;

      // increase the powerUp timers every 100ms and deactive the effects after a certain time
      // show the current powerUp effects
      onTriggered: {
          if (activateHitShield) {
            activeHitShieldCounter ++;
            player.opacity = 0.5;
          }
          if (activeHitShieldCounter === 30) {
            activateHitShield = false;
            activeHitShieldCounter = 0;
            player.opacity = 1;
          }
      }
    }
        function beShoted(){
            if(!activateHitShield){
            life--;
            activateHitShield=true;
            }
            if(life<=0){
                gameOver()
               player.destroy()
            }

        }        
}

