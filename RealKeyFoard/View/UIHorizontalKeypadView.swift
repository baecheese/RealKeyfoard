//
//  UIHorizontalKeypadView.swift
//  RealKeyFoard
//
//  Created by 배지영 on 04/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIHorizontalKeypadView: UIStackView {

    var dataSource: UIKeypadDataSource?
    var delegate: UIButtonDelegate?

    var innerViewWidth: CGFloat {
        guard 1 < subviews.count else { return frame.width }
        return (frame.width / CGFloat(subviews.count)) - (spacing * CGFloat(subviews.count - 1))
    }

    func set(with dataSource: UIKeypadDataSource, language: Language, state: KeyforadState) {
        self.dataSource = dataSource
        let keycaps: [KeyCap] = self.dataSource?.keypadCaps(language: language) ?? []
        guard !keycaps.isEmpty else {
            for view in subviews {
                view.removeFromSuperview()
            }
            return
        }
        keycaps.forEach {
            let button: UIKeyButton = UIKeyButton()
            button.set($0, state: state)
            button.backgroundColor = .lightGray
            button.addTarget(self, action: #selector(onTouchButton(_:)), for: .touchUpInside)
            addArrangedSubview(button)
        }
    }

    @objc func onTouchButton(_ sender: UIButton) {
        delegate?.onTouchButton(title: sender.titleLabel?.text ?? "", sender: sender)
    }

}
