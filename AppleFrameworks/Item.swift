//
//  Item.swift
//  AppleFrameworks
//
//  Created by Hassan Abdulwahab on 08/09/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
