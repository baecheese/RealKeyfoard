//
//  UIKeyForceView.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class EmKeyboardView: UIInputView {

    var delegate: UIKeyfoardViewDelegate?

    @IBAction func onTouchHeartButton(sender: UIButton) {
        delegate?.onTouchButton(sender.titleLabel?.text ?? "")
    }

}
