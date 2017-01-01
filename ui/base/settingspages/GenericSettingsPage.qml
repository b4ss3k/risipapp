import QtQuick 2.7
/***********************************************************************************
**    Copyright (C) 2016  Petref Saraci
**
**    This program is free software: you can redistribute it and/or modify
**    it under the terms of the GNU General Public License as published by
**    the Free Software Foundation, either version 3 of the License, or
**    (at your option) any later version.
**
**    This program is distributed in the hope that it will be useful,
**    but WITHOUT ANY WARRANTY; without even the implied warranty of
**    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**    GNU General Public License for more details.
**
**    You have received a copy of the GNU General Public License
**    along with this program. See LICENSE.GPLv3
**    A copy of the license can be found also here <http://www.gnu.org/licenses/>.
**
************************************************************************************/

import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import "../risipcomponents"

Page {
    id: root

    signal backClicked
    signal saveClicked

    header: ToolBar {
        id: toolBar
        focus: true

        background: Rectangle {
            implicitHeight: 40
            color: "#ffffff"
        }

        Arrow {
            id: backIcon
            orientation: "left"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
        }

        ToolButton {
            id: toolButton
            text: qsTr("Settings")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: backIcon.right
            anchors.leftMargin: 2

            background: Rectangle {
                color: "#ffffff"
            }

            onClicked: { root.backClicked(); }
        }

    }
}
