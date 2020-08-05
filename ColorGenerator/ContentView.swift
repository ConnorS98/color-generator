//
//  ContentView.swift
//  MultiButtons
//
//  Created by Connor Huffman on 7/16/20.
//  Copyright © 2020 Connor Huffman. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    
    @State private var cbackgrounds = [Color.green, Color.blue, Color.pink, Color.purple, Color.red, Color.yellow, Color.orange]
    @State private var backgrounds = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
    
    var body: some View {
        VStack {
            Spacer()
            Text("COLOR Generator")
            Spacer()
            HStack {
                Circle()
                    .fill(backgrounds[0])
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(backgrounds[1])
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(backgrounds[2])
                    .frame(width: 100, height: 100)
            }
            HStack {
                Circle()
                    .fill(backgrounds[3])
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(backgrounds[4])
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(backgrounds[5])
                    .frame(width: 100, height: 100)
            }
            HStack {
                Circle()
                    .fill(backgrounds[6])
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(backgrounds[7])
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(backgrounds[8])
                    .frame(width: 100, height: 100)
            }
            HStack{
                Button(action: {
                    //Change the middle row
                    for index in 3...5 {
                    self.backgrounds[index] = self.cbackgrounds[Int.random(in: 0...self.cbackgrounds.count - 1)]
                    }
                }) {
                    Text("Middle")
                    .bold()
                    .foregroundColor(.white)
                    .padding(10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                Button(action: {
                    
                    self.backgrounds = self.backgrounds.map { _ in
                        self.cbackgrounds[Int.random(in: 0...self.cbackgrounds.count - 1)]
                    }
                }) {
                    Text("All")
                    .bold()
                    .foregroundColor(.white)
                    .padding(10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                
            } .padding(.top)
            Button(action: {
                
                self.backgrounds = self.backgrounds.map { _ in
                    Color.black
                }
            }) {
                Text("Reset")
                .bold()
                .foregroundColor(.white)
                    .padding(10)
                    .padding([.leading, .trailing], 30)
                .background(Color.blue)
                .cornerRadius(20)
            }
            .padding(.top)
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
