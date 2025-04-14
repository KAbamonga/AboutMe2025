//
//  ContentView.swift
//  AboutMe2025
//
//  Created by Kiara on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var photo = "aasu"
    
    var body: some View {
        ZStack {
            
            Color("Cyan").ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image(photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack(spacing: 20.0) {
                    Text("Kiara Abamonga")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("🤭🕺🫶🏽😂😜😙")
                }
                
                Text("I’m passionate about creating spaces where students feel seen, heard, and celebrated — especially within the APIDA community. Through AASU and FCA, I advocate for inclusive, cultural spaces where we can thrive together. The photo above is me and my AASU family!")
                
                
                Button("Click me for a FCA photo!") {
                    photo = "fca"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color("Cyan"))
            }
            
            .padding()
            .background(Rectangle() .foregroundColor(Color("Snow")))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
