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
}
