/***************************************************************************
 *   Copyright (C) 2016 by R. Harish Navnit <harishnavnit@gmail.com>       *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA .        *
 ***************************************************************************/

import QtQuick 2.1
import QtQuick.Layouts 1.1

import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.components 2.0 as PlasmaComponents

Item
{
    id: delegateItem
    anchors.fill: parent

    property var gtfsImportRunning
    property var importGtfsDatabase
    property var updateGtfsDatabase
    property var deleteGtfsDatabase

    PlasmaExtras.Heading {
        id: header
        anchors {
            left: parent.left
            right: parent.right
        }
        level: 3
        wrapMode: Text.WordWrap
        text: i18n("Configure")
    }

    ColumnLayout
    {
        id: operationButtonsLayout

        anchors {
            fill: parent
            topMargin: header.height
        }

        RowLayout {
            id: serviceproviderDetailsRow
            spacing: 2
            PlasmaComponents.Label {
                id: gtfsServiceproviderIdLabel
                Layout.fillWidth: true
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                text: i18n("Service Provider")
            }
            PlasmaComponents.Label {
                id: gtfsServiceproviderIdDisplay
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                elide: Text.ElideRight
                wrapMode: Text.WordWrap
                text: i18n("no_ruter")
            }
        }

        PlasmaComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n("Import DB")
            tooltip: i18n("Download GTFS database")
            onClicked: importGtfsDatabase
        }
        PlasmaComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n("Update Feed")
            tooltip: i18n("Update the downloaded GTFS feed")
            onClicked: updateGtfsDatabase
        }
        PlasmaComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n("Update DB")
            tooltip: i18n("Update present GTFS database")
            onClicked: updateGtfsDatabase
        }
        PlasmaComponents.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n("Delete DB")
            tooltip: i18n("Delete GTFS database")
            onClicked: deleteGtfsDatabase
        }
    }
}