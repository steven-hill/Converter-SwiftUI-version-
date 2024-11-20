//
//  UnitSelectionView.swift
//  Converter-SwiftUIVersion
//
//  Created by Steven Hill on 19/11/2024.
//

import SwiftUI

struct UnitSelectionView: View {
    let title: String
    @Binding var selectedIndex: Int
    let units: [Dimension]
    
    var body: some View {
        VStack {
            Text(title)
                .padding()
            ScrollView {
                LazyVStack {
                    ForEach(0..<units.count, id: \.self) { index in
                        UnitButton(unit: units[index])
                            .accessibilityIdentifier("Unit button")
                    }
                }
            }
        }
    }
}


