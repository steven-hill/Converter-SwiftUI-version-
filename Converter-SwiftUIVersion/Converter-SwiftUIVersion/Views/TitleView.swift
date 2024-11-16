//
//  TitleView.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 16/11/2024.
//
import SwiftUI

struct TitleView: View {
    var body: some View {
        Text("Measurement converter")
            .foregroundStyle(.white)
            .font(.largeTitle)
            .accessibilityIdentifier("TitleView text")
    }
}
