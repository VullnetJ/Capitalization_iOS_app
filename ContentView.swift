//
//  ContentView.swift
//  CapitalizationFun
//
//  Created by V.J on 23.10.2022.
// command + A, control + i, to format coding.

import SwiftUI

struct ContentView: View {
    @State var userText = ""
    @State var capMode = 1
    var body: some View {
        VStack {
            Spacer()
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            } else if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            } else {
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            Spacer()
            
            
            Button(action: {
                if capMode == 1 {
                    UIPasteboard.general.string = userText.uppercased()
                    
                } else if capMode == 2 {
                    UIPasteboard.general.string = userText.capitalized
                    
                } else {
                    UIPasteboard.general.string = userText.lowercased()
                    
                }
                
            }) {
                RoundedButton(title: "Copy", color: .green)
                
            }
            
            HStack{
                Button(action: {
                    capMode = 1
                }) {
                    RoundedButton(title: "CAPS", color: .green)
                    
                }
                Button(action: {
                    capMode = 2
                }) {
                    RoundedButton(title: "Upper", color: .green)
                    
                }
                Button(action: {
                    capMode = 3
                }) {
                    RoundedButton(title: "lower", color: .red)
                    
                }
                
            }
            TextField("Enter text here...", text: $userText )
                .padding()
        }
        
        .padding()
    }
}
struct RoundedButton: View {
    
    var title: String
    var color: Color
    var body: some View {
        Text(title)
        
            .padding(8)
            .frame(maxWidth: .infinity)
            .background(color)
            .font(.body)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
