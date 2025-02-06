//
//  HomeView.swift
//  Ladder
//
//  Created by Brady Miller on 2/4/25.
//

import Creed_Lite
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    @State var sheetSize: CGSize = .zero
    
    var body: some View {
        NavigationStack {
            Group {
                switch viewModel.state {
                case .loading:
                    makeLoadingView()
                case .loaded(let feats):
                    makeLoadedView(with: feats)
                        .sheet(isPresented: $viewModel.isShowingModal) {
                            ChallengesView(viewModel: .init(feats: feats))
                                .onGeometryChange(for: CGSize.self, of: { proxy in
                                    proxy.size
                                }, action: {
                                    sheetSize = $0
                                })
                                .presentationDragIndicator(.visible)
                                .presentationBackground(.ladderDeepGray)
                                .presentationDetents([.height(sheetSize.height)])
                                .presentationCornerRadius(25)
                        }
                case .empty:
                    makeEmptyView()
                case .error:
                    makeErrorView()
                }
            }
            .background(.ladderBlack)
            .task {
                await viewModel.fetchFeats()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Ladder")
                        .font(.h2)
                        .foregroundStyle(Color.ladderWhite)
                }
            }
            .toolbarBackground(.ladderBlack, for: .navigationBar)
        }
    }
    
    @ViewBuilder func makeLoadingView() -> some View {
        ProgressView()
    }
    
    @ViewBuilder func makeLoadedView(with feats: MonthlyFeats) -> some View {
        ScrollView {
            VStack {
                if let url = feats.feats.first?.imageURL {
                    ChallengeCardView(previewImageURL: url, title: feats.title, subtitle: feats.subtitle)
                        .onTapGesture {
                            viewModel.isShowingModal = true
                        }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(.ladderBlack)
    }
    
    @ViewBuilder func makeEmptyView() -> some View {
        Image(systemName: "exclamationmark.triangle.fill")
    }
    
    @ViewBuilder func makeErrorView() -> some View {
        Image(systemName: "exclamationmark.triangle.fill")
    }
}
