//
//  TouchMode.swift
//  RealKeyFoard
//
//  Created by 배지영 on 04/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

enum TouchMode: Int {
    case normal = 0
    case shift
    case capsLock

    static var all: [TouchMode] {
        return [.normal, .shift, .capsLock]
    }
}
