/***********************************************************************************
**    Copyright (C) 2016  Petref Saraci
**    http://risip.io
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
import Risip 1.0

AddSipAccountPageForm {
    id: root

    signal sipAccountAdded

    onSaveClicked: {
        Risip.createAccount(configuration)
        root.sipAccountAdded()
    }

    RisipAccountConfiguration {
        id: configuration
        userName: usernameInput.text
        password: passwordInput.text
        serverAddress: serverAddressInput.text
        proxyServer: proxyServerInput.text
        localPort: parseInt(localPortInput.text)
        randomLocalPort: parseInt(localPortInput.text)
        networkProtocol: networkTypeInput.currentIndex
    }
}
