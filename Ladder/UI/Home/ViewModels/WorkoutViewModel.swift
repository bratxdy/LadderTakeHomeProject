//
//  WorkoutViewModel.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import AVKit
import Combine
import Creed_Lite
import Foundation

class WorkoutViewModel: ObservableObject {
    var player: AVQueuePlayer
    var playerLooper: AVPlayerLooper
    
    let feat: Feat
    
    @Published var count = 0
    @Published var isShowingCompleteButton = false
    
    init(feat: Feat) {
        self.feat = feat
        
        let asset = AVURLAsset(url: feat.videoURL)
        let item = AVPlayerItem(asset: asset)
        
        player = AVQueuePlayer(playerItem: item)
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
    }
}
