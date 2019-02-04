//
//  KeyCap.swift
//  RealKeyFoard
//
//  Created by 배지영 on 05/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

struct KeyCap {
    let index: Int
    let contents: KeyCapText

    init(index: Int, _ contents: KeyCapText) {
        self.contents = contents
    }

}
