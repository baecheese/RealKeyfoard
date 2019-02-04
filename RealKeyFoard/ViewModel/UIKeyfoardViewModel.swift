//
//  UIKeyfoardViewModel.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyfoardViewModel: UIKeyfoardPresentable, UIKeyfoardViewDelegate {

    var parent: UIInputViewController?
    var specialKeyButtonDic: [SpecialKey : UIButton] = [:]
    var numberKeys: [String] = ["`", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

    func onTouchSpeicalKey(_ key: SpecialKey) {
        print("🌝 \(key)")
    }

    func onTouchButton(_ text: String) {
        parent?.textDocumentProxy.insertText(text)
    }

}
