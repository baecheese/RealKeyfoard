//
//  UIKeyForceView.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

protocol UIKeyForceViewDelegate {
    func onTouchButton(_ text: String)
}

class UIKeyForceView: UIInputView {

    var delegate: UIKeyForceViewDelegate?

    @IBAction func onTouchHeartButton(sender: UIButton) {
        delegate?.onTouchButton(sender.titleLabel?.text ?? "")
    }

}
