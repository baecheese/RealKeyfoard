//
//  UIKeyfoardView.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyfoardView: UIInputView {
    @IBOutlet weak var tabButton: UIButton!
    @IBOutlet weak var capsButton: UIButton!
    @IBOutlet weak var shiftButton: UIButton!
    @IBOutlet weak var controlButton: UIButton!
    @IBOutlet weak var commadButton: UIButton!
    @IBOutlet weak var optionButton: UIButton!
    @IBOutlet weak var spaceButton: UIButton!

    var delegate: UIKeyForceViewDelegate?

    @IBAction func onTouchSpecialKeyBoard(sender: UIButton) {
        guard let keycap = KeyCap(sender.titleLabel?.text ?? "") else { return }
        delegate?.onTouchKeyCap(keycap)
    }
    
}
