//
//  Font+Ladder.swift
//  Ladder
//
//  Created by Andrew Hulsizer on 11/24/24.
//
import SwiftUI

public extension Font {
    
    static let h1 = Font.system(size: 33, weight: .heavy)
    static let h2 = Font.system(size: 27, weight: .bold)
    static let h3 = Font.system(size: 21, weight: .bold)
    static let h4 = Font.system(size: 19, weight: .bold)
    static let h5 = Font.system(size: 17, weight: .bold)
    
    static let ladderBody = Font.system(size: 15, weight: .medium)
    static let ladderCaption = Font.system(size: 13, weight: .regular)
    static let ladderFootnote = Font.system(size: 11, weight: .regular)
    
    static func drukTitle(with size: CGFloat) -> Font {
        return Font.custom("Druk Wide Bold", size: size)
    }
}
