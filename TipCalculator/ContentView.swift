//
//  ContentView.swift
//  TipCalculator
//
//  Created by user234219 on 5/30/23.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    gradient: Gradient(colors: [Color.cyan, Color.purple]),
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        ZStack {
            backgroundGradient.ignoresSafeArea()
            VStack(spacing: 50.0) {
                VStack {
                    HStack {
                        Image(systemName: "dollarsign.circle.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                            .font(.title)
                        Text("Tip Calculator")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Text("by Charmaine Eunice Rabano")
                }
                HStack {
                    Text("$")
                    TextField("Amount", text: $total)
                }
                HStack {
                    Slider(value: $tipPercent, in: 1...30, step: 1.0)
                    Text("\(Int(tipPercent))")
                    Text("%")
                }
                if let totalNumber = Double(total) {
                    Text("Tip Amount: $\(totalNumber * tipPercent / 100, specifier: "%0.2f")")
                } else {
                    Text("Please enter a numeric value.")
                }
                
            }
            .padding(.horizontal, 50.0)
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
