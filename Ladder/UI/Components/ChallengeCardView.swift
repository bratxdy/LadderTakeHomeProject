//
//  ChallengeCardView.swift
//  Ladder
//
//  Created by Brady Miller on 2/4/25.
//

import Creed_Lite
import SwiftUI

struct ChallengeCardView: View {
    enum Constants {
        static let cardWidth: CGFloat = 360
    }
    
    let previewImageURL: URL
    let title: String
    let subtitle: String
    
    var body: some View {
        ZStack {
            Color.black
            
            makeEllipseBlur()
            
            makeBottomGradient()
                
            makeContentView()
        }
        .frame(width: Constants.cardWidth)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    @ViewBuilder func makeEllipseBlur() -> some View {
        VStack {
            Ellipse()
                .fill(.ladderBlur2)
                .blur(radius: 75)
                .frame(width: 529, height: 306)
                .rotationEffect(Angle(degrees: 32))
            
            Spacer()
        }
        .clipped()
    }
    
    @ViewBuilder func makeBottomGradient() -> some View {
        VStack {
            Spacer()
            
            LinearGradient(gradient: Gradient(colors: [.hex6(0x060606).opacity(0.0), .hex6(0x1a1a1a)]), startPoint: .top, endPoint: .bottom)
                .frame(height: 198)
                .frame(maxWidth: .infinity)
        }
    }
    
    @ViewBuilder func makeContentView() -> some View {
        VStack {
            PillView(image: Image(systemName: "star.fill"), title: "Challenge of the Month")
                .padding(.top, 16)
                .padding(.bottom, 24)
            
            CachedAsyncImage(url: previewImageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 240, height: 254, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 28.0))
                    .clipped()
            } placeholder: {
                ProgressView()
                    .frame(width: 240, height: 254, alignment: .center)
            }
            .padding(.bottom, 24)
            
            Text(title)
                .font(.drukTitle(with: 27))
                .foregroundStyle(.ladderWhite)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.bottom, 16)
            
            Text(subtitle)
                .font(.ladderCaption)
                .foregroundStyle(.ladderLightGray)
                .padding(.bottom, 36)
        }
        .frame(width: Constants.cardWidth, alignment: .top)
    }
}
