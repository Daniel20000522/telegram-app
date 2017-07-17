/*
 * Copyright 2015 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3

Column {
    id: attach_item

    //property bool showTick: false

    property alias text: attach_label.text
    property alias image: attach_image.name

    signal clicked(var mouse)

    Item {
        width: attach_image.width
        height: attach_image.height //+ shadow.verticalOffset

        Button {
            width: units.gu(7.5)
            height: width

            Icon {
                id: attach_image
                objectName: "attach_gallery"
                asynchronous: true
                anchors.centerIn: parent
                //fillMode: Image.PreserveAspectFit
                //sourceSize: Qt.size(width, height)

                MouseArea {
                    anchors.fill: parent
                    onClicked: attach_item.clicked(mouse)
                }
            }

        }
        /*EdgeShadow {
            id: shadow
            source: attach_image
            horizontalOffset: 0
            cached: true
        }*/
    }

    Label {
        id: attach_label
        anchors.horizontalCenter: parent.horizontalCenter
        fontSize: "x-small"
        font.weight: Font.DemiBold
    }
}
