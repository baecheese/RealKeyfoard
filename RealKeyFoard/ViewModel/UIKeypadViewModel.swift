//
//  UIKeypadViewModel.swift
//  RealKeyFoard
//
//  Created by 배지영 on 05/02/2019.
//  Copyright © 2019 ChesseFactory. All rights reserved.
//

import UIKit

class UIKeypadViewModel: UIKeypadDataSource {

    var dataSource: [Language : [KeyCap]]

    init(data: [KeyCap]...) {
        guard !data.isEmpty else {
            self.dataSource = [:]
            return
        }
        var dataSource: [Language: [KeyCap]] = [:]
        for index in 0...Language.all.count - 1 {
            if data.indices.contains(index) {
                dataSource[Language.all[index]] = data[index]
            } else {
                dataSource[Language.all[index]] = data.first ?? []
            }
        }
        self.dataSource = dataSource
    }

    func keypadCaps(language: Language) -> [KeyCap] {
        return dataSource[language] ?? []
    }

}
