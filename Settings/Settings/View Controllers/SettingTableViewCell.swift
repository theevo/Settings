//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by theevo on 3/2/20.
//  Copyright © 2020 theevo. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var settingIcon: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    // MARK: - Actions
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
    }
    
    // MARK: - Helper Methods
    
    func updateViews(with setting: Setting){
        settingIcon.image = setting.icon
        settingLabel.text = setting.settingTitle
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .orange : .white
        
    }

}
