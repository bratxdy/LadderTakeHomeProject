//
//  LadderApp.swift
//  Ladder
//
//  Created by Andrew Hulsizer on 11/20/24.
//

import SwiftUI

@main
struct LadderApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("Home", systemImage: "figure.strengthtraining.traditional") {
                    HomeView()
                }
                
                Tab("Chat", systemImage: "ellipsis.message.fill") {
                    
                }
                
                Tab("Teams", systemImage: "circle.grid.cross.fill") {
                    
                }
                
                Tab("Shortcuts", systemImage: "circle.grid.3x3.fill") {
                    
                }
            }
            .accentColor(.ladderWhite)
        }
    }
}
