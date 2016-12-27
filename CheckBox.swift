//
//  CheckBox.swift
//  managementDoc
//
//  Created by  noldam on 2016. 11. 3..
//  Copyright © 2016년 SOFTCITY. All rights reserved.
//

import UIKit

class CheckBox: ToggleImageButton {
    override init() {
        super.init()
        asCheckBox()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        asCheckBox()
    }
    
    func asCheckBox() {
        trueImg = UIImage(named: ToggleImageButton.CHECK_ON)
        falseImg = UIImage(named: ToggleImageButton.CHECK_OFF)
    }
    
    func setButtonChecked(zeroOne: Int) {
        if zeroOne == 0 {
            setButtonChecked(false)
        } else if zeroOne == 1 {
            setButtonChecked(true)
        }
    }
    
    var isCheckedInt: Int {
        return isChecked ? 1 : 0
    }
}
