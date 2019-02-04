//
//  KeyfoardState.swift
//  RealKeyFoard
//
//  Created by 배지영 on 05/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

struct KeyforadState: Hashable {
    var language: Language?
    var touchMode: TouchMode

    init(_ language: Language? = nil, _ touchMode: TouchMode) {
        self.language = language
        self.touchMode = touchMode
    }

    static func == (lhs: KeyforadState, rhs: KeyforadState) -> Bool {
        return lhs.language == rhs.language && lhs.touchMode == rhs.touchMode
    }

    static var allCaseOfTouchMode: [KeyforadState] {
        let allCase: [KeyforadState] = TouchMode.all.map { return KeyforadState(nil, $0) }
        return allCase
    }

    static var allCase: [KeyforadState] {
        var allCase: [KeyforadState] = []
        for lng in Language.all {
            for mode in TouchMode.all {
                allCase.append(KeyforadState(lng, mode))
            }
        }
        return allCase
    }

}
