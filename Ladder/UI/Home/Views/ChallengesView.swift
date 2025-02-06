//
//  ChallengesView.swift
//  Ladder
//
//  Created by Brady Miller on 2/4/25.
//

import Creed_Lite
import SwiftUI

struct ChallengesView: View {
    enum Constants {
        static let cardImageWidth: CGFloat = 239
        static let cardImageHeight: CGFloat = 242
    }
    
    @StateObject var viewModel: ChallengesViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.feats.title)
                .foregroundStyle(.ladderWhite)
                .font(.h5)
                .padding(.top, 32)
                .padding(.bottom, 16)
            
            PillView(title: viewModel.feats.subtitle)
                .padding(.bottom, 32)
            
            makeFeatsCardView()
            
            if let selectedFeat = viewModel.selectedFeat {
                makeSelectedFeatView(for: selectedFeat)
            }
            
            PrimaryButton {
                viewModel.isShowingWorkoutView = true
            } label: {
                Text("START TEST")
            }
            .padding(24)
        }
        .onAppear {
            viewModel.selectedFeat = viewModel.feats.feats.first
        }
        .fullScreenCover(isPresented: $viewModel.isShowingWorkoutView) {
            if let feat = viewModel.selectedFeat {
                WorkoutView(viewModel: .init(feat: feat))
            }
        }
        .sheet(isPresented: $viewModel.isShowingLeaderboard) {
            if let feat = viewModel.selectedFeat {
                LeaderboardView(viewModel: .init(feat: feat))
            }
        }
    }
    
    @ViewBuilder func makeFeatsCardView() -> some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 24) {
                ForEach(viewModel.feats.feats, id: \.self) { feat in
                    AsyncImage(url: feat.imageURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: Constants.cardImageWidth, height: Constants.cardImageHeight, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 28.0))
                            .clipped()
                    } placeholder: {
                        ProgressView()
                            .frame(width: Constants.cardImageWidth, height: Constants.cardImageHeight, alignment: .center)
                    }
                }
            }
            .scrollTargetLayout()
        }
        .scrollIndicators(.never)
        .scrollTargetBehavior(.viewAligned)
        .scrollPosition(id: $viewModel.selectedFeat)
        .frame(height: Constants.cardImageHeight)
        .safeAreaPadding(.horizontal, (UIScreen.main.bounds.width - Constants.cardImageWidth) / 2)
        .padding(.bottom, 48)
    }
    
    @ViewBuilder func makeSelectedFeatView(for selectedFeat: Feat) -> some View {
        Text(selectedFeat.name)
            .font(.drukTitle(with: 25))
            .foregroundStyle(.white)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 68)
        
        Text(viewModel.selectedFeatDurationString())
            .font(.drukTitle(with: 16))
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding(.vertical, 8)
            .padding(.horizontal, 40)
        
        Text(selectedFeat.description)
            .font(.ladderBody)
            .foregroundStyle(.ladderLightGray)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
            .padding(.bottom, 56)
            .padding(.horizontal, 40)
        
        Button {
            viewModel.isShowingLeaderboard = true
        } label: {
            makeCompletionsView(for: selectedFeat)
        }
    }
    
    @ViewBuilder func makeCompletionsView(for selectedFeat: Feat) -> some View {
        HStack(spacing: 8) {
            HStack(spacing: 0) {
                ForEach(selectedFeat.top3Users, id: \.self) { user in
                    AsyncImage(url: user.imageURL) { image in
                        image
                            .resizable()
                            .frame(width: 20, height: 22)
                            .overlay {
                                Circle()
                                    .stroke(.ladderDeepGray, lineWidth: 2)
                            }
                            .padding(.leading, -4)
                    } placeholder: {
                        ProgressView()
                            .frame(width: 20, height: 22, alignment: .center)
                    }
                }
            }

            (Text(viewModel.selectFeatAttributedCompletions()) +
             Text(Image(systemName: "chevron.right")).foregroundStyle(.ladderLightGray))
                .font(.ladderCaption)
        }
    }
}
