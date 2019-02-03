//
//  UIKeyfoardViewViewController.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyfoardViewViewController: UIInputViewController, UIKeyForceViewDelegate {

    var keyfoardView: EmKeyboardView?
    private var currentText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let keyboardView = Bundle.main.loadNibNamed("UIKeyfoardViewViewController", owner: self, options: nil)?.first as? EmKeyboardView else { return }
        keyboardView.delegate = self
        inputView = keyboardView
    }

    func onTouchButton(_ text: String) {
        print("onTouchButton")
        currentText = text
        textDocumentProxy.insertText(text)
    }
    
}
