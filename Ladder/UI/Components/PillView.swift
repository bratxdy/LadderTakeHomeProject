//
//  PillView.swift
//  Ladder
//
//  Created by Brady Miller on 2/4/25.
//

import SwiftUI

struct PillView: View {
    var image: Image? = nil
    let title: String
    
    var body: some View {
        HStack {
            if let image {
                image
                    .resizable()
                    .frame(width: 12, height: 14)
                    .padding(.vertical, 4)
                    .padding(.trailing, 4)
            }
            
            Text(title)
                .font(.ladderCaption)
                .padding(.vertical, 4)
        }
        .padding(.horizontal, 12)
        .foregroundStyle(.ladderVolt)
        .background(.ladderVolt.opacity(0.20))
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    VStack {
        PillView(image: Image(systemName: "star.fill"), title: "Challenge of the Month")
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.ladderBlack)
}
