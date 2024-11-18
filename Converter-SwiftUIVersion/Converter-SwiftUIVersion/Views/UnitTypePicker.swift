//
//  UnitTypePicker.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 18/11/2024.
//

import SwiftUI

struct UnitTypePicker: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Picker("Unit type picker", selection: $viewModel.selectedUnitTypeIndex) {
            ForEach(0..<ConverterConversions.init().conversions.count, id: \.self) { index in
                Text(ConverterConversions.init().conversions[index].title).tag(index)
            }
        }
        .pickerStyle(.segmented)
        .accessibilityIdentifier("Unit type picker")
    }
}

#Preview {
    UnitTypePicker(viewModel: ViewModel())
}
