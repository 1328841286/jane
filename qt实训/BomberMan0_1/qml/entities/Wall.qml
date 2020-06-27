import QtQuick 2.0
import Felgo 3.0
import "../levels"

// walls surround the area and limit the field
EntityBase {
  id: entity
  entityId: "Wall"
  entityType: "wall"
  z: 3
  property alias image: image

  Image {
    id: image
    anchors.fill: parent
  }

  BoxCollider {
    id: boxCollider
    bodyType: Body.Static
  }
}
