//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Hassan Abdulwahab on 08/09/2024.
//

import SwiftUI

struct AFButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    AFButton(title: "Press me") {}
}
