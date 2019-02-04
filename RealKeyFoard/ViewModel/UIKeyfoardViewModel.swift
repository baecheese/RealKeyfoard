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

    func onTouchSpeicalKey(_ key: SpecialKey) {
        print("🌝 \(key)")
    }

    func onTouchButton(_ text: String) {
        print("onTouchButton")
//        textDocumentProxy.insertText(text)
    }

}
