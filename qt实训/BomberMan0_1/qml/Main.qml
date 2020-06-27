import Felgo 3.0
import QtQuick 2.0
import "scenes"

GameWindow {
    id: gameWindow
    screenHeight: 640
    screenWidth: 960
    EntityManager {
      id: entityManager
      entityContainer: gameScene
    }
    MenuScene{
        id:menuScene
         onSectionScenepressed: gameWindow.state="section"
         onAboutScenepressed: gameWindow.state="about"
         onSettingScenepressed: gameWindow.state="setting"
    }
    FontLoader{
        id:radish
        source:"../assets/ttf/radish.ttf"
    }
    SelectScene{
        id:sectionScene
        onSinglePlayScenepressed: gameWindow.state="single"
        onMultiPlayScenepressed: gameWindow.state="multi"
        onBackButtonPressed: gameWindow.state="menu"
    }
    GameScene{
        id:gameScene
        onBackButtonPressed: gameWindow.state = "single"

    }

    AboutScene{
        id:aboutScene
        onBackButtonPressed: gameWindow.state = "menu"

    }
    SettingScene{
        id:settingScene
        onBackButtonPressed: gameWindow.state="menu"
    }
    SinglePlayScene{
        id:singlePlayScene
        onLevelPressed: {
          gameScene.setLevel(selectedLevel)
          gameWindow.state = "game"
        }
        onBackButtonPressed: gameWindow.state="section"
    }
    MultiPlayScene{
        id:multiPlayScene
        onBackButtonPressed: gameWindow.state="section"
    }

    state: "menu"
    activeScene: menuScene
    states: [
        State {
            name: "menu"
            PropertyChanges { target: menuScene; opacity: 1}
            PropertyChanges { target: gameWindow; activeScene: menuScene}
        },
            State {
                name: "section"
                PropertyChanges { target: sectionScene; opacity: 1}
                PropertyChanges { target: gameWindow; activeScene: sectionScene}
          },
        State {
          name: "about"
          PropertyChanges {target: aboutScene; opacity: 1}
          PropertyChanges {target: gameWindow; activeScene: aboutScene}
        },
        State {
            name:"setting"
            PropertyChanges {target:settingScene; opacity: 1}
            PropertyChanges {target:gameWindow; activeScene: settingScene}
        },
        State {
          name: "game"
          PropertyChanges {target: gameScene; opacity: 1}
          PropertyChanges {target: gameWindow; activeScene: gameScene}
        },
        State {
          name: "single"
          PropertyChanges {target: singlePlayScene; opacity: 1}
          PropertyChanges {target: gameWindow; activeScene: singlePlayScene}
    },
        State {
          name: "multi"
          PropertyChanges {target: multiPlayScene; opacity: 1}
          PropertyChanges {target: gameWindow; activeScene: multiPlayScene}
    }
    ]

}


