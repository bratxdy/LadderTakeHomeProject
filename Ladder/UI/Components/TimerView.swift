//
//  TimerView.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import Combine
import SwiftUI

class TimerViewModel: ObservableObject {
    let initialDuration: Int
    var onCompleted: () -> Void
    
    @Published var timeRemaining: Int
    @Published var timerProgress = 1.0
    
    init(initialDuration: Int, onCompleted: @escaping () -> Void) {
        self.initialDuration = initialDuration
        self.timeRemaining = initialDuration
        self.onCompleted = onCompleted
    }
    
    var cancellable: AnyCancellable?
    
    func startTimer() {
        cancellable = Timer.publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self else { return }
                
                self.timeRemaining -= 1
                
                withAnimation {
                    self.timerProgress = self.getTimerProgress()
                }
                
                if self.timeRemaining == 0 {
                    self.cancellable?.cancel()
                    self.onCompleted()
                }
            }
    }
    
    func stopTimer() {
        cancellable?.cancel()
    }
    
    func getTimeRemainingString() -> String {
        return Duration.seconds(timeRemaining).formatted(.time(pattern: .minuteSecond))
    }
    
    func getTimerProgress() -> CGFloat {
        return 0.5 + 0.5 * (CGFloat(timeRemaining) / CGFloat(initialDuration))
    }
}

struct TimerView: View {
    @StateObject var viewModel: TimerViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            Circle()
                .trim(from: 0.5, to: 1.0)
                .stroke(.ladderWhite.opacity(0.25), style: StrokeStyle(lineWidth: 16.0, dash: [4, 4]))
                .frame(width: 200)
            
            Circle()
                .trim(from: 0.5, to: viewModel.timerProgress)
                .stroke(.ladderVolt, style: StrokeStyle(lineWidth: 16.0, dash: [4, 4]))
                .frame(width: 200)
            
            VStack {
                Spacer()
                
                Text(viewModel.getTimeRemainingString())
                .font(.drukTitle(with: 34.0))
                    .foregroundStyle(.ladderWhite)
            }
            .frame(width: 200, height: 100)
        }
        .offset(y: 100)
        .onAppear {
            viewModel.startTimer()
        }
    }
}

#Preview {
    VStack {
        TimerView(viewModel: .init(initialDuration: 30, onCompleted: { }))
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.ladderBlack)
}
