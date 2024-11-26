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
                    HStack {
                        UnitSelectionView(title: "Convert from", selectedIndex: $viewModel.selectedFromUnitIndex, units: viewModel.currentUnits)
                            .accessibilityIdentifier("Convert from unit selection view")
                        UnitSelectionView(title: "Convert to", selectedIndex: $viewModel.selectedToUnitIndex, units: viewModel.currentUnits)
                            .accessibilityIdentifier("Convert to unit selection view")
                    }
                    .padding(.bottom)
                    InputView(inputAmount: $viewModel.inputAmount)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
