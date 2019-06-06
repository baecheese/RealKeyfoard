//
//  UIKeyfoardPresentable.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

protocol UIKeyfoardPresentable {
    var specialKeyButtonDic: [SpecialKey: UIButton] { get }
    var numberKeypadViewModel: UIKeypadViewModel { get }
}
