//import QtQuick 2.0

//Item {

//}
//import QtQuick 2.0

//Item {

//}

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
        source: "../../assets/img/Desert.png"
        scale: 2
    }
    SandBox{
        entityId: "whiteWall1"
        id: whiteWall1
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column
        }
    }
    SandBox{
        entityId: "whiteWall2"
        id: whiteWall2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance
        }
    }
    SandBox{
        entityId: "whiteWall3"
        id: whiteWall3
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*2
        }
    }
    SandTreeGreen{
        entityId: "whiteWall4"
        id: whiteWall4
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*5
        }
    }
    SandBox{
        entityId: "whiteWall5"
        id: whiteWall5
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*7
        }
    }
    SandBox{
        entityId: "whiteWall6"
        id: whiteWall6
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*9
        }
    }
    TownHouseBlue{
        entityId: "whiteWall7"
        id: whiteWall7
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*8
        }
    }
    SandTreeGreen{
        entityId: "whiteWall9"
        id: whiteWall9
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*11
        }
    }
    SandTreeYellow{
        entityId: "whiteWall10"
        id: whiteWall10
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*12
        }
    }//1 hang

    SandBox{
        entityId: "whiteWall11"
        id: whiteWall11
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column//+xdistance
        }
    }
    TownHouseYellow{
        entityId: "whiteWall12"
        id: whiteWall12
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance
        }
    }
    TownHouseBlue{
        entityId: "whiteWall13"
        id: whiteWall13
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*3
        }
    }
    TownHouseBlue{
        entityId: "whiteWall14"
        id: whiteWall14
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*4
        }
    }
    TownHouseBlue{
        entityId: "whiteWall15"
        id: whiteWall15
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*5
        }
    }
    TownHouseBlue{
        entityId: "whiteWall16"
        id: whiteWall16
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*7
        }
    }

    TownHouseRed{
        entityId: "whiteWall17"
        id: whiteWall17
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*8
        }
    }
    TownHouseYellow{
        entityId: "whiteWall18"
        id: whiteWall18
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*9
        }
    }
    TownHouseRed{
        entityId: "whiteWall19"
        id: whiteWall19
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance
            leftMargin:column+xdistance*11
        }
    }//3hang

    SandTreeGreen{
        entityId: "whiteWall120"
        id: whiteWall20
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*2
            leftMargin:column+xdistance
        }
    }
    SandTreeGreen{
        entityId: "whiteWall121"
        id: whiteWall21
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*2
            leftMargin:column+xdistance*6
        }
    }
    SandTreeGreen{
        entityId: "whiteWall122"
        id: whiteWall22
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*2
            leftMargin:column+xdistance*7
        }
    }
    SandTreeGreen{
        entityId: "whiteWall123"
        id: whiteWall23
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*2
            leftMargin:column+xdistance*8
        }
    }
    SandTreeGreen{
        entityId: "whiteWall124"
        id: whiteWall24
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*2
            leftMargin:column+xdistance*11
        }
    }
    SandTreeGreen{
        entityId: "whiteWall125"
        id: whiteWall25
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*2
            leftMargin:column+xdistance*12
        }
    }//4hang

    SandBox{
        entityId: "whiteWall126"
        id: whiteWall26
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column//+xdistance
        }
    }
    TownHouseRed{
        entityId: "whiteWall127"
        id: whiteWall27
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance
        }
    }
    SandTreeYellow{
        entityId: "whiteWall128"
        id: whiteWall28
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance*4
        }
    }
    TownHouseRed{
        entityId: "whiteWall129"
        id: whiteWall29
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance*6
        }
    }
    TownHouseYellow{
        entityId: "whiteWall130"
        id: whiteWall30
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance*8
        }
    }
    TownHouseYellow{
        entityId: "whiteWall131"
        id: whiteWall31
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance*9
        }
    }
    SandBox{
        entityId: "whiteWall132"
        id: whiteWall32
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance*10
        }
    }
    SandBox{
        entityId: "whiteWall133"
        id: whiteWall33
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*3
            leftMargin:column+xdistance*12
        }
    }//5hang
    SandBox{
        entityId: "whiteWall134"
        id: whiteWall34
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column//+xdistance*12
        }
    }
    SandTreeGreen{
        entityId: "whiteWall135"
        id: whiteWall35
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance
        }
    }
    SandBox{
        entityId: "whiteWall136"
        id: whiteWall36
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*2
        }
    }
    SandBox{
        entityId: "whiteWall137"
        id: whiteWall37
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*3
        }
    }
    TownHouseBlue{
        entityId: "whiteWall138"
        id: whiteWall38
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*4
        }
    }
    TownHouseBlue{
        entityId: "whiteWall139"
        id: whiteWall39
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*5
        }
    }
    TownHouseRed{
        entityId: "whiteWall1340"
        id: whiteWall40
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*8
        }
    }
    SandBox{
        entityId: "whiteWall141"
        id: whiteWall41
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*10
        }
    }
    SandBox{
        entityId: "whiteWall142"
        id: whiteWall42
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*4
            leftMargin:column+xdistance*11
        }
    }//6hang
    TownHouseBlue{
        entityId: "whiteWall143"
        id: whiteWall43
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column//+xdistance*11
        }
    }
    SandBox{
        entityId: "whiteWall144"
        id: whiteWall44
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance
        }
    }
    TownHouseBlue{
        entityId: "whiteWall145"
        id: whiteWall45
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*2
        }
    }
    TownHouseBlue{
        entityId: "whiteWall146"
        id: whiteWall46
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*3
        }
    }
    SandBox{
        entityId: "whiteWall147"
        id: whiteWall47
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*4
        }
    }
    TownHouseBlue{
        entityId: "whiteWall148"
        id: whiteWall48
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*5
        }
    }
    TownHouseBlue{
        entityId: "whiteWall149"
        id: whiteWall49
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*6
        }
    }
    SandTreeGreen{
        entityId: "whiteWall50"
        id: whiteWall50
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*9
        }
    }
    SandTreeGreen{
        entityId: "whiteWall51"
        id: whiteWall51
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*5
            leftMargin:column+xdistance*10
        }
    }//7hang

    TownHouseRed{
        entityId: "whiteWall52"
        id: whiteWall52
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column//+xdistance*10
        }
    }
    //
    SandTreeGreen{
        entityId: "whiteWall53"
        id: whiteWall53
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance
        }
    }
//    SandBox{
//        entityId: "whiteWall54"
//        id: sandbox54
//        height:cow
//        width:column
//        anchors {
//            top:scene.top
//            left:scene.left
//            topMargin:cow+ydistance*6
//            leftMargin:column+distance*2
//        }
//    }
    TownHouseRed{
        entityId: "whiteWall55"
        id: whiteWall55
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*4
        }
    }
    TownHouseRed{
        entityId: "whiteWall56"
        id: whiteWall56
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*5
        }
    }
    TownHouseRed{
        entityId: "whiteWall57"
        id: whiteWall57
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*6
        }
    }
    SandBox{
        entityId: "whiteWall58"
        id: whiteWall58
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*7
        }
    }
    TownHouseBlue{
        entityId: "whiteWall59"
        id: whiteWall59
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*8
        }
    }
    TownHouseRed{
        entityId: "whiteWall60"
        id: whiteWall60
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*9
        }
    }
    TownHouseBlue{
        entityId: "whiteWall561"
        id: whiteWall62
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow+ydistance*6
            leftMargin:column+xdistance*11
        }
    }
        TownHouseBlue{
            entityId: "whiteWall563"
            id: whiteWall63
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*6
                leftMargin:column+xdistance*12
            }
        }//8hang

        TownHouseYellow{
            entityId: "whiteWall564"
            id: whiteWall64
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column//+xdistance*12
            }
        }
        SandBox{
            entityId: "whiteWall565"
            id: whiteWall65
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance
            }
        }
        SandBox{
            entityId: "whiteWall566"
            id: whiteWall66
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*2
            }
        }
        SandBox{
            entityId: "whiteWall567"
            id: whiteWall67
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*5
            }
        }
        SandBox{
            entityId: "whiteWall568"
            id: whiteWall68
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*7
            }
        }
        TownHouseYellow{
            entityId: "whiteWall568"
            id: whiteWall69
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*4
            }
        }
        TownHouseYellow{
            entityId: "whiteWall568"
            id: whiteWall70
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*6
            }
        }
        TownHouseYellow{
            entityId: "whiteWall568"
            id: whiteWall71
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*9
            }
        }
        TownHouseYellow{
            entityId: "whiteWall568"
            id: whiteWall72
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*7
                leftMargin:column+xdistance*11
            }
        }//9hang

        SandTreeGreen{
            entityId: "whiteWall568"
            id: whiteWall73
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column//+xdistance*11
            }
        }
        SandTreeGreen{
            entityId: "whiteWall568"
            id: whiteWall74
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance
            }
        }
        SandTreeGreen{
            entityId: "whiteWall568"
            id: whiteWall75
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance*2
            }
        }
        SandBox{
            entityId: "whiteWall568"
            id: whiteWall76
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance*5
            }
        }
        SandBox{
            entityId: "whiteWall568"
            id: whiteWall77
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance*7
            }
        }
        TownHouseRed{
            entityId: "whiteWall568"
            id: whiteWall78
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance*8
            }
        }
        SandTreeGreen{
            entityId: "whiteWall568"
            id: whiteWall79
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance*10
            }
        }
        SandTreeGreen{
            entityId: "whiteWall568"
            id: whiteWall80
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*8
                leftMargin:column+xdistance*11
            }
        } //10hang

        // xia mian shi bian kuang

        SandHouseBlue{
            entityId: "whiteWall568"
            id: whiteWall81
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow//+ydistance*8
                leftMargin:25//column//+xdistance*11
            }
        }
        SandHouseBlue{
            entityId: "whiteWall568"
            id: whiteWall82
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance
                leftMargin:25//column//+xdistance*11
            }
        }
        SandHouseBlue{
            entityId: "whiteWall568"
            id: whiteWall83
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*2
                leftMargin:25//column//+xdistance*11
            }
        }
        SandTreeGreen{
            entityId: "whiteWall568"
            id: whiteWall84
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:25//cow+ydistance*2
                leftMargin:25+column//+xdistance*11
            }
        }

//        SandTreeGreen{
//            entityId: "whiteWall568"
//            id: whiteWall85
//            height:cow
//            width:column
//            anchors {
//                top:scene.top
//                left:scene.left
//                topMargin:25//cow+ydistance*2
//                leftMargin:25+column*2//+xdistance*11
//            }
//        }

        SandTreeGreen{
                    entityId: "whiteWall568"
                    id: whiteWall85
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow
                        leftMargin:column+xdistance*13
                    }
                }

        TownHouseRed{
                    entityId: "whiteWall568"
                    id: whiteWall87
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*2
                        leftMargin:column+xdistance*13
                    }
                }
        TownHouseRed{
                    entityId: "whiteWall568"
                    id: whiteWall88
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*3
                        leftMargin:column+xdistance*13
                    }
                }
        SandTreeGreen{
                    entityId: "whiteWall568"
                    id: whiteWall89
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*5
                        leftMargin:column+xdistance*13
                    }
                }
        SandTreeGreen{
                    entityId: "whiteWall568"
                    id: whiteWall90
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*6
                        leftMargin:column+xdistance*13
                    }
                }
}

