//
//  FrameWorkDetailView.swift
//  AppleFrameworks
//
//  Created by Hassan Abdulwahab on 08/09/2024.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var frameWork: FrameWork
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HStack{
                Spacer()
                Button(action: {
                    isShowingDetailView = false
                }, label: {
                    Image(systemName: "xmark")
                        .imageScale(.medium)
                        .frame(width: 16, height: 24)
                })
                .buttonStyle(.bordered)
                .controlSize(.regular)
                .foregroundColor(.red)
                .tint(.red)
                
                
            }
            FrameWorkGridViewItem(framework: frameWork)
            ScrollView {
                Text(frameWork.description)
                    .multilineTextAlignment(.center)
                
            }
            if let url =  URL(string: frameWork.urlString) {
                Link("Learn More", destination: url)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
        .padding()
    }
}

#Preview {
    FrameWorkDetailView(
        frameWork: MockData.sampleFramework,
        isShowingDetailView: Binding.constant(true))
}
