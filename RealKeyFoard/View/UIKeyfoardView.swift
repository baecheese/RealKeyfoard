//
//  UIKeyfoardView.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeyfoardView: UIInputView {
    @IBOutlet weak var tabButton: UIButton!
    @IBOutlet weak var capsButton: UIButton!
    @IBOutlet weak var shiftButton: UIButton!
    @IBOutlet weak var controlButton: UIButton!
    @IBOutlet weak var commadButton: UIButton!
    @IBOutlet weak var optionButton: UIButton!
    @IBOutlet weak var spaceButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!

    @IBOutlet weak var numberKeypadView: UIHorizontalKeypadView!

    var viewModel: UIKeyfoardViewModel?

    func configure(with viewModel: UIKeyfoardViewModel, parent: UIInputViewController) {
        var dic: [SpecialKey: UIButton] = [:]
        let keys = SpecialKey.all
        let allSpecialButtons = [tabButton, capsButton, shiftButton, controlButton, commadButton, optionButton, spaceButton, deleteButton, enterButton]
        guard allSpecialButtons.count == SpecialKey.all.count else { return }
        for index in 0...keys.count - 1 {
            dic[keys[index]] = allSpecialButtons[index]
        }
        viewModel.specialKeyButtonDic = dic
        viewModel.parent = parent
        self.viewModel = viewModel
        numberKeypadView.set(text: viewModel.numberKeys)
        numberKeypadView.delegate = self
    }

    @IBAction func onTouchSpecialKeyBoard(sender: UIButton) {
        viewModel?.onTouchSpeicalKey(SpecialKey(sender.titleLabel?.text ?? ""))
    }
    
}

extension UIKeyfoardView: UIButtonDelegate {

    func onTouchButton(title: String, sender: UIButton) {
        viewModel?.onTouchButton(title)
    }

}
