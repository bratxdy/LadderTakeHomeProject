//
//  LeaderboardViewModel.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import Creed_Lite
import Dependencies
import Foundation

class LeaderboardViewModel: ObservableObject {
    enum State {
        case loading
        case loaded(leaderboard: FeatLeaderboard)
        case empty
        case error
    }
    
    @Dependency(\.featsClient) var featsClient
    
    @Published var state: State = .loading
    
    let feat: Feat
    
    init(feat: Feat) {
        self.feat = feat
    }
    
    @MainActor
    func fetchLeaderboard() async {
        do {
            let leaderboard = try await featsClient.getFeatLeaderboard(feat.id)
            if leaderboard.placements.count > 0 {
                state = .loaded(leaderboard: leaderboard)
            } else {
                state = .empty
            }
        } catch {
            state = .error
        }
    }
}
