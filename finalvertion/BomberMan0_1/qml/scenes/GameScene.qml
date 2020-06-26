import QtQuick 2.0
import Felgo 3.0
import "../common"
import"../entities"
import".."
SceneBase {
    id:gameScene
    focus: true    
    Keys.forwardTo: controller
    property string activeLevelFileName
    property var activeLevel
    property alias loader: loader
    property int countdown: 0
    property alias player: player
    property int bombnumber: player.bombnumber
    property bool flag : false
    //死亡敌人数统计
    property int sumMonster : 3
    property int numMapMonster:0
    property int deadBlueMonster:0
    property int deadRedMonster:0
    property int deadBlackMonster:0
    property double canAppear:1
    property int youWin :0
    property int  gameover: 0
    function setLevel(fileName) {
      activeLevelFileName = fileName
    }
    SoundEffect{
        id:startfire
        source: "../../assets/snd/appear.wav"

    }
    TwoAxisController {
      id: controller
      inputActionsToKeyCode: {
             "up": Qt.Key_Up,
             "down": Qt.Key_Down,
             "left": Qt.Key_Left,
             "right": Qt.Key_Right,
             "fire":Qt.Key_Space
      }

      onInputActionPressed: {
        //console.debug("key pressed actionName " + actionName)
          if(actionName=="up"){
              sp.jumpTo("up")
//              activeLevel.player1.rotate=1
          }
          if(actionName=="down"){
//              activeLevel.player1.rotate=3
              sp.jumpTo("down")
          }
          if(actionName=="left"){
              sp.jumpTo("left")
//              activeLevel.player1.rotate=4
          }
          if(actionName=="right"){
//              activeLevel.player1.rotate=2
              sp.jumpTo("right")
          }
      if(actionName=="fire"&&bombnumber>0){
          //sp.jumpTo("popo")
          console.debug(player.x,player.y)
          startfire.play()//SoundEffect fire
          var startX=player.x+5
          var startY=player.y+0.5*player.height-5
          var xDirection=0 //玩家子弹速度
          var yDirection=0 //玩家子弹速度

          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Bomb.qml"), {
                                                            "start" : Qt.point(startX, startY),
                                                             "velocity" : Qt.point(xDirection, yDirection),
                                                              "power":player.power
//                                                              "rotation":player.rotation
//                                                                  "entityId":"singleBomb"+1
                                                          })
          bombnumber--
          flag=true
      }
    }
    }
    //炸弹爆炸以及冲击波消失的时间
    Timer{
        interval: 3000
        running:flag===true
        repeat: true
        onTriggered: {
            bombnumber++
            flag=false
        }

    }

    PhysicsWorld {
      id: world
      debugDrawVisible: true
      updatesPerSecondForPhysics: GameInfo.gamePaused ? 0 : 30
      z: 0
    }
    Loader {
      id: loader
      source: activeLevelFileName ? "../levels/" + activeLevelFileName : ""
      onLoaded: {
//         var toRemoveEntityTypes = ["boom","monster","props"];//需要实体类型相同并赋予拥有唯一id
//        entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
        activeLevel = item
        countdown = 3
        gameover=0
        GameInfo.gamePaused = true
          countId=0
        //timer1.interval=500;
        sumMonster=3
  //       timer1.running=true;
          timer.running=true;
          numMapMonster=0
          var toRemoveEntityTypes = ["boom","monster","props"];//需要实体类型相同并赋予拥有唯一id
          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
        //canAppear=1;

      }
    }
    Connections {
      // only connect if a level is loaded, to prevent errors
      target: activeLevel !== undefined ? activeLevel : null
    }
    property int countId : 0
    Timer {
        id:timer1
             interval: 500;
             running:activeLevel && !gameover
             repeat: false //只有进入关卡或游戏不gameover,enemy坦克才会产出
             onTriggered: {
                 countId++;
                // if(canAppear===1){
                   //  if(numRound===0){
                 if(numMapMonster===0){
                         var variationType01 ="blue"
                         var variationType02 ="blue"
                         var variationType03 ="blue"
                         var num6=getRandomNum(1,5);//令第一波敌人也随机方案
                         if(num6===1){
                         }else if(num6===2){
                             variationType02 ="black"
                         }else if(num6===3){
                             variationType01 ="red"
                         }else if(num6===4){
                             variationType01 ="red"
                             variationType03 ="black"
                         }else if(num6===5){
                             variationType01 ="red"
                             variationType03 ="red"
                         }
                         var startX=20
                         var startY=20
                         entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Monster.qml"), {
                                                                           "start" : Qt.point(startX, startY),
                                                                            "entityId":"monster"+countId,
                                                                             "variationType":variationType01,
                                                                           });
                         var startX2=150
                         var startY2=20
                         entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Monster.qml"), {
                                                                           "start" : Qt.point(startX2, startY2),
                                                                             "variationType":variationType02,
                                                                              "entityId":"monster"+countId,
                                                                           });
                         var startX3=300
                         var startY3=20
                         entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Monster.qml"), {
                                                                           "start" : Qt.point(startX3, startY3),
                                                                             "variationType":variationType03,
                                                                              "entityId":"monster"+countId,
                                                                           });


                 if(gameover===1){
                     running=false
                }
                 numMapMonster+=3
                 }
                // }
             }
    }
    Timer{
       id:timer
       interval: 100
       repeat: true
       running: true
       onTriggered: {
           if(player.life===0||gameover===1){
               gameover=1
               running=false
               timer1.running=flase
               numMapMonster=0
               var toRemoveEntityTypes = ["boom","monster","props"];//需要实体类型相同并赋予拥有唯一id
               entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
           }

           if(sumMonster===0){
               gameover=1
               youWin=1
               running=flase
               timer1.running=false
               numMapMonster=0
               var toRemoveEntityTypes2 = ["boom","monster","props"];//需要实体类型相同并赋予拥有唯一id
               entityManager.removeEntitiesByFilter(toRemoveEntityTypes2);
           }/*else if(backButtonPressed()){
               var toRemoveEntityTypes3 = ["boom","monster","props"];//需要实体类型相同并赋予拥有唯一id
               entityManager.removeEntitiesByFilter(toRemoveEntityTypes2);

           }*/
       }
}
    Player{
        id:player
        x: 0
        y: 280
    }
    Spritesheet{
        id:sp
        anchors.centerIn : player
    }

    Text {
      anchors.centerIn: parent
      color: "black"
      font.pixelSize: countdown > 0 ? 100 : 18
      font.bold: true
      text: countdown > 0 ? countdown : ""
      font.family: radish.name
      opacity: 0
    }
    Rectangle {
      z: 20
      id: gameOverW
      color: "white"
      anchors.centerIn: parent
      width: 200
      height: 80
      radius: 10
      border.width: 5
      border.color: "lightgrey"
      opacity:  ( (player.life<=0))? 100 : 0
      Image {
          anchors.fill: parent
          source: "../../assets/img/gameover.png"
      }

    }
    Rectangle {
      z: 20
      id: win
      color: "white"
      anchors.centerIn: parent
      width: 200
      height: 80
      radius: 10
      border.width: 5
      border.color: "lightgrey"
      opacity:  ( (youWin===1))? 100 : 0
      Image {
          anchors.fill: parent
          source: "../../assets/img/gameover.png"
      }
      Text {
        id: textWinner2
        text: "You Win"
        color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 18
        anchors.bottomMargin: 7
        font.pixelSize: 14

      }
    }
    MenuButton {
//      text: "Back"
//      color: "transparent"
      label.height: 45
      label.width: 45
      label.source:"../../assets/img/quite.png"
      color: "transparent"
      anchors.right: gameScene.gameWindowAnchorItem.right
      anchors.rightMargin: 10
      anchors.top: gameScene.gameWindowAnchorItem.top
      anchors.topMargin: 10

      onClicked: {
        resetLevel()
        backButtonPressed()
          activeLevel = undefined
          activeLevelFileName = ""
          var toRemoveEntityTypes = [];//需要实体类型相同并赋予拥有唯一id
          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
      }
    }
    Rectangle {

      anchors.top: gameScene.gameWindowAnchorItem.top
      anchors.topMargin: 0
      color: "transparent"
      border.width: 1
      border.color: "red"
      height: 50
      width: 50
      radius:10
      Text {
          color: "red"
          anchors.centerIn: parent
          font.pointSize:10
          text: "HP:"+player.life
      }

    }
    Text {
        color: "red"
        anchors{
            top:gameScene.top
            left:gameScene.left
            topMargin:28
            leftMargin:2
        }
        font.pointSize:8
        text: "Monster:"+sumMonster
    }
//    Timer {
//      repeat: true
//      running: countdown > 0
//      onTriggered: {
//        countdown--
//        if (countdown==3) GameInfo.gamePaused = false
//      }
//}
    function playermovereset(){
      player.x = 0;
      player.y = 280;
    }
    function liferest(){
    player.life=3
}
    property double rand: Math.random()
    function getRandomNum(Min,Max){
       var Range = Max - Min;
        return (Min+Math.round(rand*Range));

    }
    function resetLevel(){
       playermovereset()
       liferest()
       youWin=0

}
}
