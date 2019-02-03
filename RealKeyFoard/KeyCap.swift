//
//  KeyCap.swift
//  RealKeyFoard
//
//  Created by 배지영 on 03/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import Foundation

enum KeyCap {
    case tab
    case caps
    case shift
    case control
    case command
    case option
    case space

    init?(_ title: String) {
        switch title {
        case "⌥":
            self = .option; return
        case "⌘":
            self = .command; return
        case "^":
            self = .control; return
        case "⇧":
            self = .shift; return
        case "Caps":
            self = .caps; return
        case "⇥":
            self = .tab; return
        default:
            return nil 
        }
    }
}
