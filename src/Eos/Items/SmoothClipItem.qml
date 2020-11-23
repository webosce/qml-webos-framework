// Copyright (c) 2013-2021 LG Electronics, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

import QtQuick 2.4

/* This test example illustrates verifies basic capabilities of the parallelogram.
 It also tests the horizontal clipping feature. */

Item {
    id: root

    property Item sourceItem
    property Item maskItem

    ShaderEffect {
        id: effect
        anchors.fill: parent

        property var image: ShaderEffectSource {
            sourceItem: root.sourceItem
            hideSource: true
        }

        property var masked: ShaderEffectSource {
            sourceItem: root.maskItem
            hideSource: true
        }

        fragmentShader: Qt.resolvedUrl("SmoothClipItem.frag")
    }
}
