//
//  UnitButton.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 20/11/2024.
//
import SwiftUI

struct UnitButton: View {
    let unit: Dimension
    var formatUnit: (Dimension) -> String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Text(formatUnit(unit))
            }
        }
    }
    
    init(unit: Dimension) {
        self.unit = unit
        self.formatUnit = { unit in
            let formatter = MeasurementFormatter()
            formatter.unitStyle = .long
            return formatter.string(from: unit)
        }
    }
}
