//
//  CustomTextFieldStyle.swift
//  M1L5StylingTextFields
//
//  Created by Leone on 4/3/22.
//

import Foundation
import SwiftUI

/**
 Custom TextFieldStyle used to create a gray rounded rectangle box with a search icon around the TextField. Note it
 references the TextField itself/ it goes there on line 29.
 @example
 Call this by using
 ```
 TextField("Enter text here...", text: $inputText)
     .textFieldStyle(CustomTextFieldStyle())
 ```
 */
struct CustomTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(.gray)
                .frame(height: 40) // Makes the rectangle smaller
            
            // Place the text field on top
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                // References the TextField itself
                configuration
                
            }
            .padding(.horizontal)
        }
        .shadow(radius: 5.0)
    }
    
}
