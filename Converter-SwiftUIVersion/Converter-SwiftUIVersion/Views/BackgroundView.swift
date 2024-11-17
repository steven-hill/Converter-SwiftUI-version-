//
//  BackgroundView.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 17/11/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [.black, .teal]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
        .accessibilityIdentifier("Background view")
    }
}

#Preview {
    ContentView()
}
