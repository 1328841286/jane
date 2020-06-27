import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id:monster
    variationType: "blue"
    entityType: "monster"
    entityId: "monster"
    x: start.x
    y: start.y
    height: 20
    width: 24
    //blue monster is normal ,red monster is speed,black monster is strong
    property point start
    property int life: (variationType === "black") ?1 : 1
    property int rotate: 3
    property int monsterMoveV: (variationType === "red") ? 6000 : 3000//monster move speed
    property string imageName:"blue"
    property bool activateHitShield: false          // activate shield for short after a hit
    property int activeHitShieldCounter: 0          // count from 0 to 5 every 100

    onEntityCreated: {
        if(variationType === "black")imageName="black";
        else if(variationType === "red")imageName="red";

    }
    SpriteSequence{
        id:spriteSheet
        anchors.fill:parent
        defaultSource: "../../assets/img/"+imageName+".png"
//        defaultSource: "../../assets/img/red.png"
        anchors.centerIn: parent
            Sprite{
                name:"black_down"
                source: "../../assets/img/black.png"
                frameWidth: 53
                frameHeight: 72
                frameCount: 4
                startFrameColumn: 1
                frameRate: 5
            }
            Sprite{
                name:"black_left"
                source: "../../assets/img/black.png"
                frameWidth: 53
                frameHeight: 72
                frameCount: 4
                startFrameColumn: 5
                frameRate: 5
            }
            Sprite{
                name:"black_right"
                source: "../../assets/img/black.png"
                frameWidth: 53
                frameHeight: 71
                frameCount: 4
                startFrameColumn: 9
                frameRate: 5
            }
            Sprite{
                name:"black_up"
                source: "../../assets/img/black.png"
                frameWidth: 53
                frameHeight: 73
                frameCount: 4
                startFrameColumn: 13
                frameRate: 5
            }
            Sprite{
                name:"blue_down"
                source: "../../assets/img/blue.png"
                frameWidth: 36
                frameHeight: 63
                frameCount: 4
                startFrameColumn: 1
                frameRate: 5
            }
            Sprite{
                name:"blue_left"
                source: "../../assets/img/blue.png"
                frameWidth: 38
                frameHeight: 63
                frameCount: 4
                startFrameRow: 5
                frameRate: 5
            }
            Sprite{
                name:"blue_right"
                source: "../../assets/img/blue.png"
                frameWidth: 38
                frameHeight: 63
                frameCount: 4
                startFrameRow: 9
                frameRate: 5
            }
            Sprite{
                name:"blue_up"
                source: "../../assets/img/blue.png"
                frameWidth: 38
                frameHeight: 63
                frameCount: 4
                startFrameRow: 13
                frameRate: 5
            }
            Sprite{
                name:"red_down"
                frameWidth: 53
                frameHeight: 57
                frameCount: 4
                //startFrameColumn: 1
                startFrameRow:1
                frameRate: 5

            }
            Sprite{
                name:"red_left"
                frameWidth: 53
                frameHeight: 58
                frameCount: 4
                //startFrameColumn: 1
                 startFrameRow:5
                frameRate: 5
            }
            Sprite{
                name:"red_right"
                frameWidth: 53
                frameHeight: 60
                frameCount: 4
                startFrameColumn:  1
                 startFrameRow:9
                frameRate: 5
            }
            Sprite{
                name:"red_up"
                frameWidth: 53
                frameHeight: 49
                frameCount: 4
                startFrameColumn:  1
                 startFrameRow:13
                frameRate: 5
            }

    }

    BoxCollider {
      //enabled: !GameInfo.gamePaused
      id: boxCollider
      //anchors.centerIn: parent

      density: 0
      friction: 0.4
      restitution: 0.4//碰撞
      linearDamping: 100
      bullet: false/*将此标志设置为true，表示一个非常快速移动的小物体，该物体可能穿过其他物体。
              默认值为false。*/

      force: Qt.point(0,monsterMoveV)
      fixture.onBeginContact: {
          if(rotate===1){
              monster.y+=1;
          }else if(rotate===2){
              monster.x-=1;
          }else if(rotate===3){
              monster.y-=1;
          }else if(rotate===4){
              monster.x+=1;
          }
          var num=getRandomNum(1,4)
          if(num===1){
              force=Qt.point(0,-monsterMoveV)
              rotate=1;
              spriteSheet.jumpTo(imageName+"_up")
          }else if(num===2){
              force=Qt.point(monsterMoveV,0)
              rotate=2;
              spriteSheet.jumpTo(imageName+"_right")
          }else if(num===3){
              force=Qt.point(0,monsterMoveV)
              rotate=3;
              spriteSheet.jumpTo(imageName+"_down")
          }else if(num===4){
              force=Qt.point(-monsterMoveV,0)
              rotate=4;
             spriteSheet.jumpTo(imageName+"_left")
          }else{
              console.log("rand error")
          }
          var collidedEntity = other.getBody().target;
          var otherEntityId = collidedEntity.entityId;
          if(otherEntityId.substring(0,2)==="p1"){
              collidedEntity.beShoted()
          }
      }
    }
    property double rand: Math.random()
    function getRandomNum(Min,Max){
       var Range = Max - Min;
        return (Min+Math.round(rand*Range));
    }
    //Random function refresh
    Timer{
       id:randtimer
       interval: 30
       repeat: true
       running: true
       onTriggered: {
           rand=Math.random()

       }
    }

    Timer{
       id:timer3
       interval: 4000//每一段时间改变一次方向
       repeat: true
       running: true
       onTriggered: {
          // if(gameWindow.gameover===0){
               var num=getRandomNum(1,4)
              if(num===1){
               boxCollider.force=Qt.point(0,-monsterMoveV)
               rotate=1;
               spriteSheet.jumpTo(imageName+"_up")
              }else if(num===2){
               boxCollider.force=Qt.point(monsterMoveV,0)
               rotate=2;
               spriteSheet.jumpTo(imageName+"_right")
              }else if(num===3){
               boxCollider.force=Qt.point(0,monsterMoveV)
               rotate=3;
               spriteSheet.jumpTo(imageName+"_down")
              }else if(num===4){
               boxCollider.force=Qt.point(-monsterMoveV,0)
               rotate=4;
              spriteSheet.jumpTo(imageName+"_left")
               }else{
                   console.log("rand error")
               }
               console.log("change")
               var num2=getRandomNum(500,4000);
               interval=num2;//随机时间改变一次方向

       }
    }
    Timer {
      id: timerMonster
      interval: 100; running: true; repeat: true;

      // increase the powerUp timers every 100ms and deactive the effects after a certain time
      // show the current powerUp effects
      onTriggered: {
          if (activateHitShield) {
            activeHitShieldCounter ++;
            monster.opacity = 0.5;
          }
          if (activeHitShieldCounter === 30) {
            activateHitShield = false;
            activeHitShieldCounter = 0;
            monster.opacity = 1;
          }
      }
    }
    function beShoted(){

        if(life!==0&&!activateHitShield){
            activateHitShield=true;
            life--;
        }
        if(life===0){
            gameScene.sumMonster--;
            monster.destroy()
            //gameScene.sumMonster--;
        }
//        gameScene.numMap--;
       // gameScene.sumMonster--;


        if(variationType==="red"){//speed monster
            gameScene.score+=300;
             gameScene.deadRedEnemy++;

        }else if(variationType==="black"){//strong monster
            gameScene.score+=400;
             gameScene.deadBlackEnemy++;
        }
        else{
            gameScene.score+=200;
            gameScene.deadBlueEnemy++;//normal
        }
    }

}
