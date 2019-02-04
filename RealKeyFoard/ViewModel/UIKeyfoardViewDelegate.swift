//
//  UIKeyForceViewDelegate.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

protocol UIKeyfoardViewDelegate {
    func onTouchButton(_ text: String)
    func onTouchSpeicalKey(_ key: SpecialKey)
}
