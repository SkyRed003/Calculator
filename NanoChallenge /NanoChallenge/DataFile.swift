//
//  DataFile.swift
//  NanoChallenge
//
//  Created by Francesco Palumbo on 17/11/23.
//

import SwiftUI
import SwiftData

@Model
class DataItem {
    
    var value: Int
    init(value: Int) {
        self.value = value
        
    }
}
