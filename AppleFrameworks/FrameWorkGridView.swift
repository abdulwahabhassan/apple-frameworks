//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Hassan Abdulwahab on 08/09/2024.
//

import SwiftUI
import SwiftData

struct FrameWorkGridView: View {
    
    @StateObject var viewModel = FrameWorkGridViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView {
                Lis(columns: columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        FrameWorkGridViewItem(
                            framework: frameWork)
                        .onTapGesture {
                            viewModel.selectedFramework = frameWork
                        }
                    }
                }
                .navigationTitle("Apple Frameworks")
                .sheet(
                    isPresented: $viewModel.isShowingDetailView,
                    content: {
                        if let selectedFm = viewModel.selectedFramework {
                            FrameWorkDetailView(
                                frameWork: selectedFm,
                                isShowingDetailView: $viewModel.isShowingDetailView
                            )
                        }
                    }
                )
            }
        }
    }
}

#Preview {
    FrameWorkGridView()
}
