import QtQuick 2.15
import QtQuick.Window 2.15      
import QtQuick.Shapes 1.3
import QtQuick 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.0
import Qt.labs.qmlmodels 1.0
import QtGraphicalEffects 1.15
import QtQuick.Dialogs 1.3
import QtLocation 5.15



Item {
  id: _root
  anchors.centerIn: parent
  Shape {
    id: shaping
    anchors.right: parent.right
    anchors.rightMargin: 60
    property
    var shapeArcLength: 20
    antialiasing: true
    ShapePath {
      id: shapePath

      joinStyle: ShapePath.MiterJoin
      fillRule: ShapePath.WindingFill
      capStyle: ShapePath.FlatCap
      fillColor: "blue"
      strokeWidth: 0
      strokeColor: "transparent"
      startX: 0;startY: 0;
      PathCubic {
        id: path3;x: 120;y: 0;control1X: 0;control1Y: 10;control2X: 0;control2Y: -20
      }
      PathLine {
        x: 120;y: 45;
      }
      PathLine {
        x: 0;y: 45;
      }
      PathLine {
        x: 0;y: 0;
      }
    }
  }
  SequentialAnimation {
    loops: Animation.Infinite;running: true

    ParallelAnimation {
      NumberAnimation {
        target: path3;properties: "control1X";from: 0;to: 80;duration: 2000;
      }
      NumberAnimation {
        target: path3;properties: "control1y";from: -10;to: 20;duration: 2000;
      }
      NumberAnimation {
        target: path3;properties: "control2X";from: 0;to: 90;duration: 2000;
      }
      NumberAnimation {
        target: path3;properties: "control2y";from: -20;to: 20;duration: 2000;
      }
    }
    ParallelAnimation {
      NumberAnimation {
        target: path3;properties: "control2X";from: 90;to: 0;duration: 2000;
      }
      NumberAnimation {
        target: path3;properties: "control2y";from: 20;to: -10;duration: 2000;
      }
      NumberAnimation {
        target: path3;properties: "control1X";from: 80;to: 0;duration: 2000;
      }
      NumberAnimation {
        target: path3;properties: "control1y";from: 20;to: -20;duration: 2000;
      }
    }
  }
}