pragma Singleton
import QtQuick 2.0
import Felgo 3.0

QtObject {
  id: gameInfo
  // statistic
  property bool gameOver: false           // indicates a gameover and shows gameovermessage
  property bool gamePaused: true          // freezes the animations, the controls, the opponent and the powerup spawn

  property double opacity: 0.3            // opacity for movement control, shot and

  property bool testLevel: false          // if the test level is selected, show the control graphic
}
