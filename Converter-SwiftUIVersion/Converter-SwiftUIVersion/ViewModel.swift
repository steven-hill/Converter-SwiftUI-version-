//
//  ViewModel.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 01/10/2024.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var selectedUnitTypeIndex = 0
    @Published var selectedFromUnitIndex = 0
    @Published var selectedToUnitIndex = 1
    @Published var inputAmount = ""
    @Published var result = ""
    
    var currentUnits: [Dimension] {
        ConverterConversions().conversions[selectedUnitTypeIndex].units
    }
    
    func resetUnitSelection() {
        selectedFromUnitIndex = 0
        selectedToUnitIndex = 1
    }
    
    func updateResult() {
        let input = Double(inputAmount) ?? 0.0
        let from = currentUnits[selectedFromUnitIndex]
        let to = currentUnits[selectedToUnitIndex]
        
        let inputMeasurement = Measurement(value: input, unit: from)
        let output = inputMeasurement.converted(to: to)
        
        let formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        result = formatter.string(from: inputMeasurement) + " = " + formatter.string(from: output)
    }
}
