//
//  UnitButton.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 20/11/2024.
//
import SwiftUI

struct UnitButton: View {
    let unit: Dimension
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Text(formatUnit(unit))
            }
        }
    }
    
    private func formatUnit(_ unit: Dimension) -> String {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .long
        return formatter.string(from: unit)
    }
}
