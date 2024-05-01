//
//  ContentView.swift
//  CircleProgress
//
//  Created by Apprenant44 on 26/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var slide:Double = 12
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 10)
                .frame(width: 300)
                .brightness(0.30)
            Circle()
                .trim(from: 0, to: slide / 100)
                .stroke(Color.purple, lineWidth: 10)
                .frame(width: 300)
                .brightness(0.30)
                
            Text("\(Int(slide)) %")
                .font(.title)
                .bold()
        }
        VStack{
            Slider(value: $slide, in: 0...100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
