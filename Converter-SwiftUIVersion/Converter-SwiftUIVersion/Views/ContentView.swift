//
//  ContentView.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 27/09/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                TitleView()
                VStack {
                    UnitTypePicker(viewModel: viewModel)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
