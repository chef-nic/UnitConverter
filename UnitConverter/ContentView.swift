//
//  ContentView.swift
//  UnitConverter
//
//  Created by Nicholas Johnson on 7/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var inputNumber = 0.0
    @State private var inputUnit = "tsp"
    @State private var outputUnit = "tsp"
    private let units = ["tsp", "tbsp", "fl oz", "cup", "pint", "quart", "gallon", "ml", "l"]
    
    private var outputNumber: Measurement<UnitVolume>? {
        guard let inputMeasurement = Measurement<UnitVolume>.from(unit: inputUnit, value: inputNumber) else {
            return nil
        }
        return inputMeasurement.converted(to: outputUnit)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Input") {
                    TextField("Input", value: $inputNumber, format: .number)
                        .keyboardType(.decimalPad)
                    
                    Picker("From", selection: $inputUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                    
                    Picker("To", selection: $outputUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                }
                
                Section("Converted Number") {
                    if let outputNumber = outputNumber {
                        Text("\(inputNumber.formatted()) \(inputUnit)  👉  \(outputNumber.value.formatted()) \(outputUnit)")
                    } else {
                        Text("Invalid conversion")
                    }
                }
            }
            .navigationTitle("Cooking Unit Converter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
