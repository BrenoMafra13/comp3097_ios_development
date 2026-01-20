//
//  ContentView.swift
//  LabEx2_Part2
//
//  Created by Breno Lopes Mafra on 2026-01-20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expression:String = ""
    @State private var result:String = ""
    
    var body: some View {
        VStack {
            TextField("Enter Expression", text: $expression).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.numbersAndPunctuation).padding()
            
            Button("Calculate"){
                result = evaluateExpression(input: expression)
            }.buttonStyle(.borderedProminent)
            
            Text("Result: \(result)").font(.title)
            
        }
        .padding()
    }
    
    func evaluateExpression( input: String) -> String{
        let exp = NSExpression(format: input)
        if let val = exp.expressionValue(with: nil, context: nil) as? NSNumber{
            return String(format: "%.2f", val.doubleValue)
        }
        return "Invalid Expression"
    }
    
}

#Preview {
    ContentView()
}
