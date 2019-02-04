//
//  UIKeyButton.swift
//  RealKeyFoard
//
//  Created by 배지영 on 04/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyButton: UIButton {

    private let keyCap: [KeyCap]

    init(_ keyCap: [KeyCap]) {
        self.keyCap = keyCap
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func keyCap(_ state: KeyforadState) -> KeyCap? {
        return keyCap.filter { $0.lauguage == state.language && nil != $0.contents[state.touchMode] }.first
    }
}
