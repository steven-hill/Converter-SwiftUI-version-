//
//  InputView.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 26/11/2024.
//

import SwiftUI

struct InputView: View {
    @Binding var inputAmount: String
    
    var body: some View {
        TextField("Amount to convert", text: $inputAmount)
            .bold()
            .keyboardType(.decimalPad)
            .accessibility(identifier: "Input amount text field")
    }
}

#Preview {
    InputView(inputAmount: .constant("100"))
}
