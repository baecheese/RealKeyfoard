//
//  UIKeyfoardViewViewController.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyfoardViewViewController: UIInputViewController {

    var keyfoardView: UIKeyfoardView? {
    guard let keyboardView = Bundle.main.loadNibNamed("UIKeyfoardViewViewController", owner: self, options: nil)?[1] as? UIKeyfoardView else { return nil }
        keyboardView.configure(with: viewModel, parent: self)
        return keyboardView
    }

    var rainbowEmoView: EmKeyboardView? {
        guard let keyboardView = Bundle.main.loadNibNamed("UIKeyfoardViewViewController", owner: self, options: nil)?.first as? EmKeyboardView else { return nil }
//        keyboardView.delegate = self
        return keyboardView
    }

    let viewModel: UIKeyfoardViewModel = UIKeyfoardViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        inputView = keyfoardView
    }
    
}
