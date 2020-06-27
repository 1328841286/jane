//
import QtQuick 2.0
import Felgo 3.0
import "../common"as Common
import "../levels"
import "../entities"
import ".."
Common.LevelBase {

    id: scene
    property double cow: 50
    property double column: 50
      Image {
          z:-2
          anchors.fill: parent
          source: "../../assets/img/sand.jpg"
          scale: 2
      }

    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed9
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed10
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+28*2
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen20
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+28*4
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed12
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+28*6
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue9
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+28*8
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue10
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+28*10
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15
            leftMargin:column+28*14-5
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15
            leftMargin:column+28*13-5
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15+28
            leftMargin:column+28*13-5
        }
    }
    TownHouseBlue{
        entityId: "toownHouseBlue"
        id: townHouseBlue1
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*2
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*3
            leftMargin:column+28*2
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28
            leftMargin:column+28*3
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*6
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue5
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*7
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*8
        }
    }
    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue7
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*10
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id: sandHouseGreen2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*14-5
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id: sandHouseGreen3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*3
            leftMargin:column+28*14-5
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id: sandHouseGreen4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*14-5
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id: sandHouseGreen5
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*13-5
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id: sandHouseGreen6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*3
            leftMargin:column+28*13-5
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id: sandHouseGreen7
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*3
            leftMargin:column+28*10
        }
    }

    SandShopRed{
        entityId: "sandShopRed"
        id: sandShopRed
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*3
            leftMargin:column+28*9
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*4
            leftMargin:column+28*9
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*9
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*10
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*6
            leftMargin:column+28*12
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed5
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28
            leftMargin:column
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*8
            leftMargin:column+28*12
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen5
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*4
            leftMargin:column
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*6
            leftMargin:column
        }
    }
    TownHouseYellow{
        entityId: "townHouseYellow"
        id: townHouseYellow1
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*8
            leftMargin:column+28
        }
    }
    TownHouseYellow{
        entityId: "townHouseYellow"
        id: townHouseYellow2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*7
            leftMargin:column+28*2
        }
    }
    TownHouseYellow{
        entityId: "townHouseYellow"
        id: townHouseYellow3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*7
            leftMargin:column+28*3
        }
    }
    TownHouseYellow{
        entityId: "townHouseYellow"
        id: townHouseYellow4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*7
            leftMargin:column+28*4
        }
    }
    TownHouseYellow{
            entityId: "townHouseYellow"
            id: townHouseYellow5
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+28*7
                leftMargin:column+28*8
            }
        }


    TownHouseBlue{
        entityId: "townHouseBlue"
        id: townHouseBlue8
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*6
        }
    }
    TownHouseRed{
        entityId: "townHouseRed"
        id: townHouseRed7
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*4
        }
    }
    TownHouseYellow{
        entityId: "townHouseYellow"
        id: townHouseYellow6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*5
            leftMargin:column+28*3
        }
    }
    TownHouseYellow{
        entityId: "townHouseYellow"
        id: townHouseYellow7
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*8
            leftMargin:column+28*10
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow1
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28
            leftMargin:column+28
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*6
            leftMargin:column+28
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15
            leftMargin:column+28
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15
            leftMargin:column+28*4
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow5
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15
            leftMargin:column+28*5
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:15
            leftMargin:column+28*7
        }
    }

    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow8
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*8
            leftMargin:column+28*6
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow9
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*8
            leftMargin:column+28*5
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow10
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*7
            leftMargin:column+28*10
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow11
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*2
            leftMargin:column+28*12
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow12
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*4
            leftMargin:column+28*13
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow
            leftMargin:column+28
        }
    }
    SandHouseGreen{
        entityId: "sandHouseGreen"
        id:sandHouseGreen8
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28
            leftMargin:column-28
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox2
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow
            leftMargin:column+28*3
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox3
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow
            leftMargin:column+28*7
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox4
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: 15
            leftMargin:column+28*8
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox5
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: 15
            leftMargin:column+28*9
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox6
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox7
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: 15
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox8
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox9
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28
            leftMargin:column+28*9
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox10
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28
            leftMargin:column+28*8
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox11
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28
            leftMargin:column+28*6
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox12
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28
            leftMargin:column+28*4
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox13
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*2
            leftMargin:column+28*3
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox14
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*2
            leftMargin:column+28
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox15
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*3
            leftMargin:column-28
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox16
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*4
            leftMargin:column-28
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox17
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*6
            leftMargin:column-28
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox18
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*7
            leftMargin:column
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox19
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*7
            leftMargin:column+28
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox20
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*8
            leftMargin:column+28*2
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox21
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*8
            leftMargin:column+28*3
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox22
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*8
            leftMargin:column+28*7
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox23
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*8
            leftMargin:column+28*7
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox24
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*8
            leftMargin:column+28*8
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox25
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*8
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox26
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*7
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox27
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*6
            leftMargin:column+28*8
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox28
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*6
            leftMargin:column+28*10
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox29
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*5
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox30
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*3
            leftMargin:column+28*11
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox31
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*4
            leftMargin:column+28*10
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox32
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*5
            leftMargin:column
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox33
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*5
            leftMargin:column+28*2
        }
    }
    SandBox{
        entityId: "sandBox"
        id:sandBox34
        height: cow
        width: column
        anchors{
            top: scene.top
            left: scene.left
            topMargin: cow+28*4
            leftMargin:column+28*2
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen7
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*6
            leftMargin:column+28*14-5
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen8
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*7
            leftMargin:column+28*14-5
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow13
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*6
            leftMargin:column+28*13-5
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen9
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*3
            leftMargin:column+28*6
        }
    }
    SandTreeYellow{
        entityId: "sandTreeYellow"
        id: sandTreeYellow14
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*4
            leftMargin:column+28*5
        }
    }
    SandTreeGreen{
        entityId: "sandTreeGreen"
        id: sandTreeGreen11
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+28*6
            leftMargin:column+28*6
        }
    }
}
