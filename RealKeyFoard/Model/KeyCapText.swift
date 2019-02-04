//
//  KeyCapText.swift
//  RealKeyFoard
//
//  Created by 배지영 on 05/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

// 언어 고정
struct KeyCapText {
    var texts: [TouchMode: String]
    init(_ arr: String...) {
        let defaultText = arr.first ?? ""
        var contents: [TouchMode: String] = [:]
        TouchMode.all.forEach {
            contents[$0] = arr[$0.rawValue] ?? defaultText
        }
        texts = contents
    }
}
