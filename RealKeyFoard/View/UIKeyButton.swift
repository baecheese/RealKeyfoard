//
//  UIKeyButton.swift
//  RealKeyFoard
//
//  Created by 배지영 on 04/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyButton: UIButton {

    private var keyCap: KeyCap?

    func set(_ keyCap: KeyCap, state: KeyforadState) {
        self.keyCap = keyCap
        setTitle(keyCap.contents.texts[state.touchMode], for: .normal)
        backgroundColor = .lightGray
    }
    
}
