//
//  FrameWorkItem.swift
//  AppleFrameworks
//
//  Created by Hassan Abdulwahab on 08/09/2024.
//

import SwiftUI

struct FrameWorkGridViewItem: View {
    var framework: FrameWork
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
            //shrink if text is longer than its container however to a minimum of 0.5
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameWorkGridViewItem(framework: MockData.sampleFramework)
}
