//
//  Setting.swift
//  Settings
//
//  Created by theevo on 3/2/20.
//  Copyright © 2020 theevo. All rights reserved.
//

import UIKit

/**
 Creates our Setting Object - *MODEL*
 - Properties:
    - settingName: The `String` identifier for the Setting
    - icon: The `UIImage` that matches the Setting
    - isOn: The `Bool` to designate whether the Setting is on or not
 */

class Setting {
    let settingTitle: String
    let icon: UIImage
    var isOn: Bool
    
    init(settingTitle: String, icon: UIImage, isOn: Bool){
        self.settingTitle = settingTitle
        self.icon = icon
        self.isOn = isOn
    }
}
