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
    var state: KeyforadState = KeyforadState(.korean, .normal)

    var numberKeypadViewModel: UIKeypadViewModel {
        //[KeyforadState : [KeyCap]]
        var keyCaps: [KeyCap] = []
        let numKeys = [KeyCapText("`", "~"),
                          KeyCapText("1", "!"),
                          KeyCapText("2", "@"),
                          KeyCapText("3", "#"),
                          KeyCapText("4", "$"),
                          KeyCapText("5", "%"),
                          KeyCapText("6", "^"),
                          KeyCapText("7", "&"),
                          KeyCapText("8", "*"),
                          KeyCapText("9", "("),
                          KeyCapText("0", ")")
                          ]
        for index in 0...numKeys.count - 1 {
            keyCaps.append(KeyCap(index: index, numKeys[index]))
        }
        return UIKeypadViewModel(data: keyCaps)
    }

    func onTouchSpeicalKey(_ key: SpecialKey) {
        print("🌝 \(key)")
    }

    func onTouchButton(_ text: String) {
        parent?.textDocumentProxy.insertText(text)
    }

}
