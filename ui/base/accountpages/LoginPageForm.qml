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
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

import "../risipcomponents"

Page {
    id: root
    z: 1
    width: 720
    height: 1280

    property alias loginButton: loginButton
    property alias allSipAccountsButton: allSipAccountsButton
    property alias uernameInput: uernameInput
    property alias sipAccountsCombobox: sipAccountsCombobox
    property alias passwordInput: passwordInput
    property alias stackView: stackView

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: loginForm

        Pane {
            id: loginForm
            width: parent.width * 0.80
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            ColumnLayout {
                id: inputLayout
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                ComboBox {
                    id: sipAccountsCombobox
                    textRole: "accountUri"
                    Layout.alignment: Qt.AlignHCenter
                    Layout.fillWidth: true
                }

                LineEdit {
                    id: uernameInput
                    height: 40
                    frameBorder: 0
                    Layout.alignment: Qt.AlignHCenter
                    Layout.fillWidth: true
                    placeholderText: qsTr("Username")
                }

                LineEdit {
                    id: passwordInput
                    height: 40
                    frameBorder: 0
                    Layout.alignment: Qt.AlignHCenter
                    Layout.fillWidth: true
                    echoMode: TextInput.Password
                    placeholderText: qsTr("Password")
                }
            }

            RisipButton {
                id: loginButton
                width: 80
                anchors.topMargin: 20
                anchors.top: inputLayout.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Sign in")
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: false
            }

            RowLayout {
                id: bottomRowLayout

                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVBottom
                spacing: 15

                RisipButton {
                    id: allSipAccountsButton
                    Layout.fillWidth: true
                    text: qsTr("All SIP Accounts")
                }
            }
        }
    }
}
