//
//  HomeViewModel.swift
//  Ladder
//
//  Created by Brady Miller on 2/4/25.
//

import Creed_Lite
import Dependencies
import Foundation

class HomeViewModel: ObservableObject {
    enum State {
        case loading
        case loaded(feats: MonthlyFeats)
        case empty
        case error
    }
    
    @Dependency(\.featsClient) var featsClient
    
    @Published var state: State = .loading
    @Published var isShowingModal = false
    
    @MainActor
    func fetchFeats() async {
        state = .loading
        
        do {
            let feats = try await featsClient.listMonthlyFeats()
            if feats.feats.count > 0 {
                state = .loaded(feats: feats)
            } else {
                state = .empty
            }
        } catch {
            state = .error
        }
    }
}
