//
//  UIKeyButtonDataSource.swift
//  RealKeyFoard
//
//  Created by 배지영 on 05/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

protocol UIKeyButtonDataSource {
    var keyCaps: [KeyCap] { get set }
}
