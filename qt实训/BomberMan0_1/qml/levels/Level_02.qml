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
        scale: 1.9
    }
    SandShopBlue{
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

    SandShopBlue{
        entityId: "whiteWall1"
        id: whiteWall2
        height:cow
        width:column
        anchors {
            top:scene.top
            left:scene.left
            topMargin:cow
            leftMargin:column+xdistance*2
        }
    }

        SandShopBlue{
            entityId: "whiteWall1"
            id: whiteWall3
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow
                leftMargin:column+28*4
            }
    }
        SandShopBlue{
            entityId: "whiteWall1"
            id: whiteWall4
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow
                leftMargin:column+28*6
            }
    }
        SandShopBlue{
            entityId: "whiteWall1"
            id: whiteWall5
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow
                leftMargin:column+xdistance*8
            }
    }
        SandShopBlue{
            entityId: "whiteWall1"
            id: whiteWall6
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow
                leftMargin:column+xdistance*10
            }
    }
        SandShopBlue{
            entityId: "whiteWall1"
            id: whiteWall7
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow
                leftMargin:column+xdistance*12
            }
    }//以上为横着的第一行砖块
        SandShopBlue{
            entityId: "whiteWall1"
            id: whiteWall8
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*2
                leftMargin:column
            }
        }

        SandHouseGreen{
            entityId: "whiteWall1"
            id: whiteWall9
            height:cow
            width:column
            anchors {
                top:scene.top
                left:scene.left
                topMargin:cow+ydistance*2
                leftMargin:column+xdistance*2
            }
        }

            SandHouseGreen{
                entityId: "whiteWall1"
                id: whiteWall10
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*2
                    leftMargin:column+28*4
                }
        }
            SandHouseGreen{
                entityId: "whiteWall1"
                id: whiteWall11
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*2
                    leftMargin:column+28*6
                }
        }
            SandHouseGreen{
                entityId: "whiteWall1"
                id: whiteWall12
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*2
                    leftMargin:column+xdistance*8
                }
        }
            SandHouseGreen{
                entityId: "whiteWall1"
                id: whiteWall13
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*2
                    leftMargin:column+xdistance*10
                }
        }
           SandShopBlue{
                entityId: "whiteWall1"
                id: whiteWall14
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*2
                    leftMargin:column+xdistance*12
                }
        }//2 hang
            SandShopBlue{
                entityId: "whiteWall1"
                id: whiteWall15
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*4
                    leftMargin:column
                }
            }
            SandHouseGreen{
                entityId: "whiteWall1"
                id: whiteWall16
                height:cow
                width:column
                anchors {
                    top:scene.top
                    left:scene.left
                    topMargin:cow+ydistance*4
                    leftMargin:column+xdistance*2
                }
            }

                SandTreeYellow{
                    entityId: "whiteWall1"
                    id: whiteWall17
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*4
                        leftMargin:column+28*4
                    }
            }
                SandTreeYellow{
                    entityId: "whiteWall1"
                    id: whiteWall18
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*4
                        leftMargin:column+28*6
                    }
            }
                SandTreeYellow{
                    entityId: "whiteWall1"
                    id: whiteWall19
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*4
                        leftMargin:column+xdistance*8
                    }
            }
                SandHouseGreen{
                    entityId: "whiteWall1"
                    id: whiteWall20
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*4
                        leftMargin:column+xdistance*10
                    }
            }
                SandShopBlue{
                    entityId: "whiteWall1"
                    id: whiteWall21
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*4
                        leftMargin:column+xdistance*12
                    }
            }//3 hang
                SandShopBlue{
                    entityId: "whiteWall1"
                    id: whiteWall22
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*6
                        leftMargin:column//+xdistance*2
                    }
                }
                SandHouseGreen{
                    entityId: "whiteWall1"
                    id: whiteWall22_1
                    height:cow
                    width:column
                    anchors {
                        top:scene.top
                        left:scene.left
                        topMargin:cow+ydistance*6
                        leftMargin:column+xdistance*2
                    }
                }

                    SandHouseGreen{
                        entityId: "whiteWall1"
                        id: whiteWall23
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*6
                            leftMargin:column+28*4
                        }
                }
                    SandHouseGreen{
                        entityId: "whiteWall1"
                        id: whiteWall24
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*6
                            leftMargin:column+28*6
                        }
                }
                    SandHouseGreen{
                        entityId: "whiteWall1"
                        id: whiteWall25
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*6
                            leftMargin:column+xdistance*8
                        }
                }
                    SandHouseGreen{
                        entityId: "whiteWall1"
                        id: whiteWall27
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*6
                            leftMargin:column+xdistance*10
                        }
                }
                    SandShopBlue{
                        entityId: "whiteWall1"
                        id: whiteWall28
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*6
                            leftMargin:column+xdistance*12
                        }
                }//4 hang
                    SandShopBlue{
                        entityId: "whiteWall1"
                        id: whiteWall29
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*8
                            leftMargin:column//+xdistance*2
                        }
                    }
                    SandShopBlue{
                        entityId: "whiteWall1"
                        id: whiteWall30
                        height:cow
                        width:column
                        anchors {
                            top:scene.top
                            left:scene.left
                            topMargin:cow+ydistance*8
                            leftMargin:column+xdistance*2
                        }
                    }

                        SandShopBlue{
                            entityId: "whiteWall1"
                            id: whiteWall31
                            height:cow
                            width:column
                            anchors {
                                top:scene.top
                                left:scene.left
                                topMargin:cow+ydistance*8
                                leftMargin:column+28*4
                            }
                    }
                        SandShopBlue{
                            entityId: "whiteWall1"
                            id: whiteWall32
                            height:cow
                            width:column
                            anchors {
                                top:scene.top
                                left:scene.left
                                topMargin:cow+ydistance*8
                                leftMargin:column+28*6
                            }
                    }
                        SandShopBlue{
                            entityId: "whiteWall1"
                            id: whiteWall33
                            height:cow
                            width:column
                            anchors {
                                top:scene.top
                                left:scene.left
                                topMargin:cow+ydistance*8
                                leftMargin:column+xdistance*8
                            }
                    }
                       SandShopBlue{
                            entityId: "whiteWall1"
                            id: whiteWall34
                            height:cow
                            width:column
                            anchors {
                                top:scene.top
                                left:scene.left
                                topMargin:cow+ydistance*8
                                leftMargin:column+xdistance*10
                            }
                    }
                        SandShopBlue{
                            entityId: "whiteWall1"
                            id: whiteWall35
                            height:cow
                            width:column
                            anchors {
                                top:scene.top
                                left:scene.left
                                topMargin:cow+ydistance*8
                                leftMargin:column+xdistance*12
                            }
                    }

}

