//
//  ContentView.swift
//  MultiButtons
//
//  Created by Connor Huffman on 7/16/20.
//  Copyright © 2020 Connor Huffman. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    
    @State private var cbackgrounds = [Color.green, Color.blue, Color.pink, Color.purple, Color.red, Color.yellow, Color.orange,
        Color.init(red: 0, green: 0.502, blue: 0.502, opacity: 1), /* TEAL */
        Color.orange, Color.init(red: 1, green: 0, blue: 1, opacity: 1), /* CYAN */
        Color.init(red: 0, green: 1, blue: 0, opacity: 1), /* MAGENTA */
        Color.init(red: 0.502, green: 0, blue: 0, opacity: 1), /* MAROON */
        Color.init(red: 0, green: 0, blue: 0.502, opacity: 1), /* NAVY */
        Color.init(red: 0.545, green: 0, blue: 0, opacity: 1), /* DARK RED*/
        Color.init(red: 0.251, green: 0.957, blue: 0.816, opacity: 1), /* TURQUOISE */
        Color.init(red: 0, green: 1, blue: 0, opacity: 1), /* LIME */
        Color.init(red: 1, green: 0.078, blue: 0.576, opacity: 1), /* DEEP PINK */
        Color.init(red: 0, green: 1, blue: 0.498, opacity: 1) /* SPRING GREEN*/]
    
    @State private var backgrounds = [Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white]
    
    var body: some View {
        VStack {
            Spacer()
            Image("ColorGenerator")
                .resizable()
                .frame(width: 300.0, height: 30.0)
//            Text("COLOR Generator")
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
                    // reset the top row to white
                    for index in 0...2 {
                        self.backgrounds[index] = Color.white
                    }
                    // reset the bottom row to white
                    for index in 6...8 {
                        self.backgrounds[index] = Color.white
                    }
                }) {
                    Text("3")
                    .bold()
                    .foregroundColor(.white)
                    .padding(10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                Button(action: {
                    //Change the middle and top row
                    for index in 0...5 {
                    self.backgrounds[index] = self.cbackgrounds[Int.random(in: 0...self.cbackgrounds.count - 1)]
                    }
                    // reset the bottom row to white
                    for index in 6...8 {
                        self.backgrounds[index] = Color.white
                    }
                }) {
                    Text("6")
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
                    Text("9")
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
                    Color.white
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
