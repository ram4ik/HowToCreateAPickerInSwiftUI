//
//  ContentView.swift
//  HowToCreateAPickerInSwiftUI
//
//  Created by ramil on 05.08.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    let colors = ["Blue", "Red", "Orange", "Yellow"]
    
    var body: some View {
        VStack {
            Picker(selection: $selection, label: Text("Picker"), content: /*@START_MENU_TOKEN@*/{
                ForEach(0 ..< colors.count) { index in
                    Text(self.colors[index]).tag(index)
                }
            }/*@END_MENU_TOKEN@*/)
            
            Text("You have selected a color which is: \(colors[selection])")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
