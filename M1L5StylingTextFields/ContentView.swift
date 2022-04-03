//
//  ContentView.swift
//  M1L5StylingTextFields
//
//  Created by Leone on 4/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputText = ""
    
    var body: some View {
        VStack {
            TextField("Enter text here...", text: $inputText)
                .textFieldStyle(CustomTextFieldStyle())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
