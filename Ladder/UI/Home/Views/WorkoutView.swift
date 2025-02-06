//
//  WorkoutView.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import AVKit
import SwiftUI

struct WorkoutView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject var viewModel: WorkoutViewModel
        
    var body: some View {
        ZStack {
            makeVideoPlayerView()
            
            VStack {
                makeTitleView()
                
                Spacer()
                
                makeTimerView()
                
                makeCountView()
            }
            .padding(.top, 54)
        }
        .ignoresSafeArea()
    }
    
    @ViewBuilder func makeVideoPlayerView() -> some View {
        VideoPlayer(player: viewModel.player)
            .frame(width: 500)
            .frame(maxHeight: .infinity)
            .disabled(true)
            .onAppear {
                viewModel.player.play()
            }
            .onDisappear {
                viewModel.player.pause()
            }
    }
    
    @ViewBuilder func makeTitleView() -> some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.ladderBlack.opacity(1.0), .ladderBlack.opacity(0)]), startPoint: .top, endPoint: .bottom)
                .frame(height: 178)
                .frame(maxWidth: .infinity)
            
            Text(viewModel.feat.name)
                .font(.h5)
                .foregroundStyle(.ladderWhite)
        }
        .ignoresSafeArea()
    }
    
    @ViewBuilder func makeTimerView() -> some View {
        TimerView(viewModel: .init(initialDuration: viewModel.feat.durationSeconds, onCompleted: {
            viewModel.player.pause()
            withAnimation {
                viewModel.isShowingCompleteButton = true
            }
        }))
        .padding(.bottom, 24)
    }
    
    @ViewBuilder func makeCountView() -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 40) {
                Spacer()
                
                Button {
                    viewModel.count -= 1
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
                
                Text("\(viewModel.count)")
                    .font(.drukTitle(with: 34))
                    .frame(width: 104)
                
                Button {
                    viewModel.count += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
                
                Spacer()
            }
            .padding(.top, 48)
            
            Text(viewModel.feat.name)
                .font(.h5)
                .padding(.bottom, 24)
            
            if viewModel.isShowingCompleteButton {
                PrimaryButton {
                    dismiss()
                } label: {
                    Text("SUBMIT")
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 24)
            }
        }
        .foregroundStyle(.ladderWhite)
        .frame(width: UIScreen.main.bounds.width)
        .background(.ladderDarkGray)
        .clipShape(.rect(topLeadingRadius: 25, topTrailingRadius: 25))
    }
}
