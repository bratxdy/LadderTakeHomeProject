//
//  LeaderboardView.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import Creed_Lite
import SwiftUI

struct LeaderboardView: View {
    @StateObject var viewModel: LeaderboardViewModel
    
    var body: some View {
        NavigationStack {
            Group {
                switch viewModel.state {
                case .loading:
                    makeLoadingView()
                case .loaded(let leaderboard):
                    makeLoadedView(with: leaderboard)
                case .empty:
                    makeEmptyView()
                case .error:
                    makeErrorView()
                }
            }
            .background(.ladderBlack)
            .task {
                await viewModel.fetchLeaderboard()
            }
        }
    }
    
    @ViewBuilder func makeLoadingView() -> some View {
        ProgressView()
    }
    
    @ViewBuilder func makeLoadedView(with leaderboard: FeatLeaderboard) -> some View {
        VStack(spacing: 24) {
            Text(leaderboard.name)
                .font(.h3)
                .foregroundStyle(.ladderWhite)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 40)
            
            HStack {
                Text("Ranking")
                
                Spacer()
                
                Text("Total Reps")
            }
            .font(.ladderBody)
            .foregroundStyle(.ladderWhite)
            
            makeLeaderboard(for: leaderboard)
        }
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder func makeLeaderboard(for leaderboard: FeatLeaderboard) -> some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(0..<leaderboard.placements.count, id: \.self) { index in
                    let placement = leaderboard.placements[index]
                    
                    HStack(spacing: 8) {
                        makeMovementView(for: placement.movement)
                        
                        Text("\(index + 1)")
                            .padding(.trailing, 16)
                        
                        makeUserImageView(for: placement.imageURL)
                        
                        Text(placement.name)
                        
                        Spacer()
                        
                        Text("\(placement.totalRepCount)")
                    }
                    .frame(height: 56)
                    .foregroundStyle(.ladderWhite)
                }
            }
            .scrollIndicators(.hidden)
        }
    }
    
    @ViewBuilder func makeMovementView(for movement: FeatLeaderBoardPlacement.Movement) -> some View {
        Group {
            switch movement {
            case .up:
                Image(systemName: "chevron.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.hex6(0x4BFF53))
            case .down:
                Image(systemName: "chevron.down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.hex6(0xff7171))
            case .neutral:
                Text("-")
                    .font(.h5)
                    .foregroundStyle(.ladderWhite)
            }
        }
        .frame(width: 16)
    }
    
    @ViewBuilder func makeUserImageView(for url: URL) -> some View {
        CachedAsyncImage(url: url) { image in
            image
                .resizable()
                .frame(width: 40, height: 40)
        } placeholder: {
            ProgressView()
                .frame(width: 40, height: 40)
        }
        .padding(.trailing, 16)
    }
    
    @ViewBuilder func makeEmptyView() -> some View {
        Image(systemName: "exclamationmark.triangle.fill")
    }
    
    @ViewBuilder func makeErrorView() -> some View {
        Image(systemName: "exclamationmark.triangle.fill")
    }
}
