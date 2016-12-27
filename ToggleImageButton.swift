//
//  ToggleButton.swift
//  noldam-demo
//
//  Created by  noldam on 2016. 4. 17..
//  Copyright © 2016년  noldam. All rights reserved.
//

import Foundation
import UIKit

class ToggleImageButton: ToggleButton {
    
    static let IMG_BOY_CHECKED = "ic_boy_check"
    static let IMG_GIRL_CHECKED = "ic_girl_check"
    static let IMG_BOY = "ic_boy"
    static let IMG_GIRL = "ic_girl"
    static let CHECK_ON = "check_true"
    static let CHECK_OFF = "check_false"
    
    internal var trueImg : UIImage?
    internal var falseImg: UIImage?
    
    func setToggleImages(_ trueImgName: String?, falseImgName: String?) {
        trueImg = UIImage(named: trueImgName!)
        falseImg = UIImage(named: falseImgName!)
    }
    
    override func setButtonChecked(_ check: Bool) {
        if check {
            self.setImage(trueImg, for: UIControlState())
            self.checked = true
        } else {
            self.setImage(falseImg, for: UIControlState())
            self.checked = false
        }
    }
}
