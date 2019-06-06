//
//  UIKeypadDataSource.swift
//  RealKeyFoard
//
//  Created by 배지영 on 05/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

protocol UIKeypadDataSource {
    var dataSource: [Language: [KeyCap]] { get }
    func keypadCaps(language: Language) -> [KeyCap]
}
