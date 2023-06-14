//
//  ContentView.swift
//  SymbolEffectDemo
//
//  Created by Thongchai Subsaidee on 14/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive = false
    
    
    let gradient = LinearGradient(
        colors: [.blue, .green],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var body: some View {
        VStack {
            
            Toggle(isOn: $isActive, label: {
                Text("Togle \(Text("Animation").foregroundStyle(gradient))")
                    .bold()
                    .font(.title)
                    .textCase(.uppercase)
            })
            .padding()

            Image(systemName: "wifi")
                .foregroundColor(.green)
                .symbolEffect(.variableColor, value: isActive)
                .font(.system(size: 100))
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
