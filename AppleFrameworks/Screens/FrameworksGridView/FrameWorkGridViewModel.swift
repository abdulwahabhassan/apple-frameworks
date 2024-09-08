//
//  FrameWorkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Hassan Abdulwahab on 08/09/2024.
//

import Foundation

final class FrameWorkGridViewModel: ObservableObject {
    var selectedFramework: FrameWork? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
}
