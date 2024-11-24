//
//  UnitButton.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 20/11/2024.
//
import SwiftUI

struct UnitButton: View {
    let unit: Dimension
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(formatUnit(unit))
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark")
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    func formatUnit(_ unit: Dimension) -> String {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .long
        return formatter.string(from: unit)
    }
}
