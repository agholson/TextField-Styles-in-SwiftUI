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
            ZStack {
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(.gray)
                    .frame(height: 40) // Makes the rectangle smaller
                
                // Place the text field on top
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Enter your text...", text: $inputText)
                    
                }
                .padding(.horizontal)
            }
            .shadow(radius: 5.0)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
