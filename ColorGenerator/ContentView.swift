import SwiftUI


struct ContentView: View {
    
    @State private var red1:Double = 0
    @State private var green1:Double = 0
    @State private var blue1:Double = 0
    
    @State private var red2:Double = 0
    @State private var green2:Double = 0
    @State private var blue2:Double = 0
    
    @State private var red3:Double = 0
    @State private var green3:Double = 0
    @State private var blue3:Double = 0
    
    
    var body: some View {
        VStack {
            Spacer()
            Image("ColorGenerator")
                .resizable()
                .frame(width: 300.0, height: 30.0)
            Spacer()
            HStack {
                Circle()
                    .fill(Color.init(red: red1/255, green: blue1/255, blue: green1/255))
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.init(red: green1/255, green: red1/255, blue: blue1/255))
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.init(red: blue1/255, green: green1/255, blue: red1/255))
                    .frame(width: 100, height: 100)
            }
            HStack {
                Circle()
                    .fill(Color.init(red: red2/255, green: blue2/255, blue: green2/255))
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.init(red: green2/255, green: red2/255, blue: blue2/255))
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.init(red: blue2/255, green: green2/255, blue: red2/255))
                    .frame(width: 100, height: 100)
            }
            HStack {
                Circle()
                    .fill(Color.init(red: red3/255, green: blue3/255, blue: green3/255))
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.init(red: green3/255, green:red3/255, blue: blue3/255))
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.init(red: blue3/255, green: green3/255, blue: red3/255))
                    .frame(width: 100, height: 100)
            }
            HStack{
                Button(action: {
                    //Change the middle row
                     //Change the middle and top row
                    
                    self.red2 = Double.random(in: 0...255)
                    self.blue2 = Double.random(in: 0...255)
                    self.green2 = Double.random(in: 0...255)
                    
                    // reset the top row to white
                   self.red1 = 0
                   self.blue1 = 0
                   self.green1 = 0
                    
                    // reset the bottom row to white
                    self.red3 = 0
                    self.blue3 = 0
                    self.green3 = 0
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
                      //change row 1
                    self.red1 = Double.random(in: 0...255)
                    self.blue1 = Double.random(in: 0...255)
                    self.green1 = Double.random(in: 0...255)
                    //change row 2
                    self.red2 = Double.random(in: 0...255)
                    self.blue2 = Double.random(in: 0...255)
                    self.green2 = Double.random(in: 0...255)
                    // reset the bottom row to white
                    self.red3 = 0
                    self.blue3 = 0
                    self.green3 = 0
                    
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
                    
                    //change row 1
                   self.red1 = Double.random(in: 0...255)
                    self.blue1 = Double.random(in: 0...255)
                    self.green1 = Double.random(in: 0...255)
                    //change row 2
                    self.red2 = Double.random(in: 0...255)
                    self.blue2 = Double.random(in: 0...255)
                    self.green2 = Double.random(in: 0...255)
                    // change row 3
                    self.red3 = Double.random(in: 0...255)
                    self.blue3 = Double.random(in: 0...255)
                    self.green3 = Double.random(in: 0...255)
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
                
                // reset the top row to black
                self.red1 = 0
                self.blue1 = 0
                self.green1 = 0
                
                //reset middle row to black
                self.red2 = 0
                self.blue2 = 0
                self.green2 = 0
                                 
                // reset the bottom row to black
                self.red3 = 0
                self.blue3 = 0
                self.green3 = 0
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
