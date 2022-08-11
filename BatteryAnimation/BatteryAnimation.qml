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
  anchors.centerIn: parent
  width: 120
  height: 60
  Image {
    id: speedArrw
    source: "./battery_Container.png"
    width: parent.width / 2
    anchors.centerIn: parent
    height: 80
  }
  Column {
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width / 2
    // anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 37
    spacing: -65
    height: 80
    Image {
      id: battprogress1
      source: "./battery_progress.png"
      width: parent.width
      // anchors.centerIn: parent
      height: parent.height
    }
    Image {
      id: battprogress2
      source: "./battery_progress.png"
      width: parent.width
      // anchors.centerIn: parent
      height: parent.height
    }
    Image {
      id: battprogress3
      source: "./battery_progress.png"
      width: parent.width
      // anchors.centerIn: parent
      height: parent.height
    }
    Image {
      id: battprogress4
      source: "./battery_progress.png"
      width: parent.width
      // anchors.centerIn: parent
      height: parent.height
    }
  }
  SequentialAnimation {
    running: true;loops: Animation.Infinite;
    NumberAnimation {
      target: battprogress1;property: "opacity";to: 0;duration: 600
    }
    NumberAnimation {
      target: battprogress2;property: "opacity";to: 0;duration: 600
    }
    NumberAnimation {
      target: battprogress3;property: "opacity";to: 0;duration: 600
    }
    NumberAnimation {
      target: battprogress4;property: "opacity";to: 0;duration: 600
    }

    NumberAnimation {
      target: battprogress4;property: "opacity";to: 1;duration: 600
    }
    NumberAnimation {
      target: battprogress3;property: "opacity";to: 1;duration: 600
    }
    NumberAnimation {
      target: battprogress2;property: "opacity";to: 1;duration: 600
    }
    NumberAnimation {
      target: battprogress1;property: "opacity";to: 1;duration: 600
    }

  }
}