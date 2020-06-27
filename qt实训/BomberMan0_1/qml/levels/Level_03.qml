//hai bian sha tan beijing

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
    property double xdistance:28//每块砖之间的水平距离
    property double ydistance:28//每块砖之间的竖直距离
    Image {
        z:-2
        anchors.fill: parent
        source: "../../assets/img/GameBG.png"
        scale: 2
    }
    TownHouseBlue{
        entityId: "townhouseblue1"
        id: townhouseblue1
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column
        }
    }
    TownHouseBlue{
        entityId: "townhouseblue2"
        id: townhouseblue2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+xdistance//hang
            leftMargin:column//lie
        }
    }
    TownHouseRed{
        entityId: "townhousebred1"
        id: townhousered1
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+xdistance//lie
            leftMargin:column+xdistance//hang
        }
    }
    TownHouseRed{
        entityId: "townhousebred2"
        id: townhousered2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+xdistance*4//lie
            leftMargin:column+xdistance//hang
        }
    }
    TownHouseRed{
        entityId: "townhousebred3"
        id: townhousered3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+xdistance*4
            leftMargin:column+xdistance*2
    }
    }
        TownHouseRed{  //dingwei1
            entityId: "townhousebred4"
            id: townhousered4
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+xdistance*7
                leftMargin:column+xdistance*7
        }
        }
        TownHouseRed{//dingwei 2
            entityId: "townhousebred5"
            id: townhousered5
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+xdistance*8
                leftMargin:column+xdistance*11
        }
        }
        TownHouseRed{//dingwei 2
            entityId: "townhousebred6"
            id: townhousered6
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+xdistance*8//max
                leftMargin:column+xdistance*14//max
        }
        }
        TownHouseRed{//dingwei 2
                    entityId: "townhousebred7"
                    id: townhousered7
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*14
                }
                }
        TownHouseRed{//dingwei 2
                    entityId: "townhousebred8"
                    id: townhousered8
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*2
                        leftMargin:column+xdistance*14
                }
                }
        TownHouseRed{//dingwei 2
                    entityId: "townhousebred9"
                    id: townhousered9
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*3
                        leftMargin:column+xdistance*12
                }
                }
        TownHouseRed{
                    entityId: "townhousebred910"
                    id: townhousered10
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*1
                        leftMargin:column+xdistance*12
                }
                }
        TownHouseBlue{
                    entityId: "townhouseblue11"
                    id: townhousered11
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance
                        leftMargin:column+xdistance*12
                }
                }
        TownHouseBlue{
                    entityId: "townhouseblue12"
                    id: townhousered12
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance
                        leftMargin:column+xdistance*11
                }
                }
        TownHouseBlue{
                    entityId: "townhouseblue13"
                    id: townhousered13
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*2
                        leftMargin:column+xdistance*11
                }
                }
        TownHouseBlue{
                    entityId: "townhouseblue14"
                    id: townhousered114
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*11
                }
                }
        TownHouseBlue{
                    entityId: "townhouseblue15"
                    id: townhousered15
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:column+xdistance*5
                }
                }
        TownHouseBlue{
                    entityId: "townhouseblue15"
                    id: townhousered16
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*4
                        leftMargin:column+xdistance*6
                }
                }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered17
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*4
                        leftMargin:column+xdistance*6
                }
                }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered18
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*4
                        leftMargin:column+xdistance*7
                }
                }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered19
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*3
                        leftMargin:column+xdistance*7
                }
                }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered20
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*2
                        leftMargin:column+xdistance*8
                }
                }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered21
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*2
                        leftMargin:column+xdistance*9
                }
                }
        SandTreeGreen{
                    entityId: "sandtreegreen1"
                    id: sandtreegreen1
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance
                        leftMargin:column+xdistance*2
                }
                }
        SandTreeGreen{
                    entityId: "sandtreegreen2"
                    id: sandtreegreen2
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance
                        leftMargin:column+xdistance*3
                }
                }
        SandTreeGreen{
                    entityId: "sandtreegreen3"
                    id: sandtreegreen3
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance
                        leftMargin:column+xdistance*4
                }
                }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered22
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:15//cow+xdistance*2
                        leftMargin:column+xdistance*3
                    }
        }
        TownHouseRed{
                    entityId: "townhousered"
                    id: townhousered23
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:15//column+xdistance*4
                    }
        }
        TownHouseBlue{
                    entityId: "townhouseblue"
                    id: townhouseblue24
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:15//column+xdistance*4
                    }
        }
        SandBox{
                    entityId: "sandbox1"
                    id: sandbox1
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:column+xdistance*4
                    }
        }
        SandBox{
                    entityId: "sandbox2"
                    id: sandbox2
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:column+xdistance*3
                    }
        }
        SandBox{
                    entityId: "sandbox3"
                    id: sandbox3
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*3
                    }
        }
        SandBox{
                    entityId: "sandbox4"
                    id: sandbox4
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*4
                    }
        }
        SandBox{
                    entityId: "sandbox5"
                    id: sandbox5
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*11
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow"
                    id: townHouseYellow1
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:column+xdistance*10
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow2"
                    id: townHouseYellow2
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*4
                        leftMargin:column+xdistance*10
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow4"
                    id: townHouseYellow4
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance
                        leftMargin:column+xdistance*6
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow5"
                    id: townHouseYellow5
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow//+xdistance
                        leftMargin:column+xdistance*6
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow5"
                    id: townHouseYellow6
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow//+xdistance
                        leftMargin:column+xdistance*7
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow7"
                    id: townHouseYellow7
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*2
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow8"
                    id: townHouseYellow8
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*2
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow9"
                    id: townHouseYellow9
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*3
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow10"
                    id: townHouseYellow10
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*3
                        leftMargin:column+xdistance*3
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow11"
                    id: townHouseYellow11
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*3
                        leftMargin:column+xdistance*4
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow11"
                    id: townHouseYellow12
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*9
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow13"
                    id: townHouseYellow13
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow13"
                    id: townHouseYellow14
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*8
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow13"
                    id: townHouseYellow15
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*8
                    }
        }
        TownHouseYellow{
                    entityId: "TownHouseYellow13"
                    id: townHouseYellow16
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*8
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow1"
                    id:sandTreeYellow1
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*7
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow2"
                    id:sandTreeYellow2
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*6
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow3"
                    id:sandTreeYellow3
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*8
                        leftMargin:column+xdistance*6
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow4"
                    id:sandTreeYellow4
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*6
                    }
        }

        //
        SandTreeYellow{
                    entityId: "SandTreeYellow6"
                    id:sandTreeYellow6
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*2
                        leftMargin:column//+xdistance*6
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow7"
                    id:sandTreeYellow7
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*3
                        leftMargin:column//+xdistance*6
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow7_1"
                    id:sandTreeYellow7_1
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*2
                        leftMargin:column+xdistance
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow7_2"
                    id:sandTreeYellow7_2
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow//+xdistance
                        leftMargin:column+xdistance*11
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow7_3"
                    id:sandTreeYellow7_3
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow//+xdistance
                        leftMargin:column+xdistance*10
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow7_4"
                    id:sandTreeYellow7_4
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow//+xdistance*7
                        leftMargin:column+xdistance*9
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow8"
                    id:sandTreeYellow8
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*6
                        leftMargin:column+xdistance*10
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow9"
                    id:sandTreeYellow9
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:column+xdistance*11
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow10"
                    id:sandTreeYellow10
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*5
                        leftMargin:column+xdistance*9
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow11"
                    id:sandTreeYellow11
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*8
                        leftMargin:column+xdistance*9
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow12"
                    id:sandTreeYellow12
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*6
                    }
        }
        SandTreeYellow{
                    entityId: "SandTreeYellow13"
                    id:sandTreeYellow13
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+xdistance*7
                        leftMargin:column+xdistance*6
                    }
        }


}
