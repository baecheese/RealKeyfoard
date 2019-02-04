//
//  UIHorizontalKeypadView.swift
//  RealKeyFoard
//
//  Created by 배지영 on 04/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIHorizontalKeypadView: UIStackView {

    var delegate: UIButtonDelegate?

    var innerViewWidth: CGFloat {
        guard 1 < subviews.count else { return frame.width }
        return (frame.width / CGFloat(subviews.count)) - (spacing * CGFloat(subviews.count - 1))
    }

    func set(text: [String]) {
        alignment = .center
        text.forEach {
            let button: UIButton = UIButton()
            button.setTitle($0, for: .normal)
            button.backgroundColor = .lightGray
            button.addTarget(self, action: #selector(onTouchButton(_:)), for: .touchUpInside)
            addArrangedSubview(button)
        }
    }

    @objc func onTouchButton(_ sender: UIButton) {
        delegate?.onTouchButton(title: sender.titleLabel?.text ?? "", sender: sender)
    }

}
