//
//  ResultView.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 28/11/2024.
//

import SwiftUI

struct ResultView: View {
    let result: String
    
    var body: some View {
        Text(result)
            .bold()
            .font(.title)
            .padding()
            .accessibilityIdentifier("Result")
    }
}

#Preview {
    ResultView(result: "5 miles = 8 kilometres")
}
