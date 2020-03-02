//
//  SettingsController.swift
//  Settings
//
//  Created by theevo on 3/2/20.
//  Copyright © 2020 theevo. All rights reserved.
//

import UIKit

class SettingsController {
    
    // MARK: - Source of Truth
    static let settings: [Setting] = {
        let music = Setting(settingTitle: "Music", icon: #imageLiteral(resourceName: "music"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "apps"), isOn: false)
        let iBooks = Setting(settingTitle: "iBooks", icon: #imageLiteral(resourceName: "books"), isOn: false)
        
        return [music, appStore, iBooks]
    }() // parens mean "initialize!"
    
    // MARK: - Methods
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
    
}
