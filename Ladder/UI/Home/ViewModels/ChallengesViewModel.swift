//
//  ChallengesViewModel.swift
//  Ladder
//
//  Created by Brady Miller on 2/4/25.
//

import Creed_Lite
import SwiftUI

class ChallengesViewModel: ObservableObject {
    let feats: MonthlyFeats
    
    @Published var selectedFeat: Feat?
    @Published var isShowingWorkoutView = false
    @Published var isShowingLeaderboard = false
    
    init(feats: MonthlyFeats) {
        self.feats = feats
    }
    
    func selectedFeatDurationString() -> String {
        guard let feat = selectedFeat else { return "" }
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .full
        
        return formatter.string(from: TimeInterval(feat.durationSeconds)) ?? ""
    }
    
    func selectFeatAttributedCompletions() -> AttributedString {
        guard let feat = selectedFeat else { return "" }
        
        var result = AttributedString("\(feat.completionCount)")
        result.foregroundColor = .ladderVolt
        
        var result2 = AttributedString(" Completions ")
        result2.foregroundColor = .ladderLightGray
        return result + result2
    }
}
