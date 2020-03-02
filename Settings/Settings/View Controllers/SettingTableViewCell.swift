//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by theevo on 3/2/20.
//  Copyright © 2020 theevo. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    
    // Step one
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var settingIcon: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Properties
    weak var delegate: SettingTableViewCellDelegate? // Step two
    
    
    // MARK: - Actions
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
    }
    
    // MARK: - Helper Methods
    
    func updateViews(with setting: Setting){
        settingIcon.image = setting.icon
        settingLabel.text = setting.settingTitle
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .orange : .white
        
    }

}
