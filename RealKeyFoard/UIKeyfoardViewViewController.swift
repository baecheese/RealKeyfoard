//
//  UIKeyfoardViewViewController.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyfoardViewViewController: UIInputViewController, UIKeyForceViewDelegate {

//    var keyfoardView: EmKeyboardView?
    var keyforardView: UIKeyfoardView?
    private var currentText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setKeyfoardView()
    }

    func setKeyfoardView() {
        guard let keyboardView = Bundle.main.loadNibNamed("UIKeyfoardViewViewController", owner: self, options: nil)?[1] as? UIKeyfoardView else { return }
        keyboardView.delegate = self
        inputView = keyboardView
    }

    func setTestView() {
        guard let keyboardView = Bundle.main.loadNibNamed("UIKeyfoardViewViewController", owner: self, options: nil)?.first as? EmKeyboardView else { return }
        keyboardView.delegate = self
        inputView = keyboardView
    }

    func onTouchKeyCap(_ keycap: KeyCap) {
        print(keycap)
    }

    func onTouchButton(_ text: String) {
        print("onTouchButton")
        currentText = text
        textDocumentProxy.insertText(text)
    }
    
}
