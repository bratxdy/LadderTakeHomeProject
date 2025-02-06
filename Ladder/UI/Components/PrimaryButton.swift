//
//  PrimaryButton.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import SwiftUI

struct PrimaryButton<Label>: View where Label: View {
    let action: (() -> Void)?
    let label: () -> Label
    var body: some View {
        Button {
            action?()
        } label: {
            label()
                .font(.h5)
                .foregroundStyle(.ladderWhite)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
        }
        .background(
            RoundedRectangle(cornerRadius: 27)
                .stroke(.ladderWhite, lineWidth: 1)
        )
    }
}

#Preview {
    VStack {
        PrimaryButton{
            
        } label: {
            Text("SUBMIT")
        }
        .padding(.horizontal, 24)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.ladderBlack)
}
