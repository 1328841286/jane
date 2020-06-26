import QtQuick 2.0
import Felgo 3.0
SpriteSequence{
    id: squaby
    defaultSource: "../../assets/img/panda.png"
    //anchors.centerIn: collider
   /* Sprite{
        name:"sta_down"
        frameWidth: 75
        frameHeight: 75
        frameCount: 1
        startFrameColumn: 1
        frameRate: 1
    }*/
    scale:0.5
//    mirrorY:true

    Sprite {
        name: "down"
        frameWidth: 49
        frameHeight: 63
        frameCount: 4
        startFrameRow: 1
        startFrameColumn: 1
        frameRate: 5
        //scale: 0.25
          //    to: {"sta_down":1}
     }
    Sprite{
        name:"left"
        frameWidth: 49
        frameHeight: 64
        frameCount: 4
        startFrameRow: 3
        startFrameColumn: 1
        frameRate: 5
//              to:{"down":1}
        // to: {"sta_down":1}
    }
    Sprite{
        name:"right"
        frameWidth: 49
        frameHeight: 64
        frameCount: 4
        startFrameRow: 5
        startFrameColumn: 1
        frameRate: 5
        //to:{"down":1}
    }
    Sprite{
        name:"up"
        frameWidth: 49
        frameHeight: 64
        frameCount: 4
        startFrameRow: 7
        startFrameColumn: 1
        frameRate: 5
        //to:{"down":1}
    }
//    Sprite{
//        name:"popo"
//        source: "../../assets/popo.png"
//        frameWidth: 45
//        frameHeight: 41
//        frameCount: 3
//        startFrameColumn: 1
//        frameRate: 5
//        //to:{"down":1}
//    }
}
