import SwiftUI

struct TimerView: View {
    
    @State private var startTime: Date?
    @State private var timer: Timer?
    @State private var elapsedTime: TimeInterval = 0
    @State private var times: [TimeInterval] = []
    @State private var scramble: [String] = []
    @State private var showList = false
    @State private var ban = false
    @State private var lastsc: String = ""
    @Environment(\.presentationMode) var presentationMode
    
  
    var body: some View {
        ZStack {
            Color(.red)
                .opacity(0.33)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red,.indigo,.blue]), startPoint:.topTrailing, endPoint: .bottomTrailing)
                )
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                    }
                    Spacer()
                
                }
                .padding(.horizontal, 20)
                .padding(.top, 0)
                
                    Text(generateRandomString())
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(.trailing, 5)
                        .frame(alignment: .center)
                        
                Text(getElapsedTime())
                    .font(.system(size: 200))
                    .foregroundColor(.white)
                    .padding()
                    .onTapGesture {
                        if timer != nil {
                            timer?.invalidate()
                            timer = nil
                            startTime = nil
                            times.append(elapsedTime)
                            ban = false
                        } else {
                            startTime = Date()
                            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                                self.updateElapsedTime()
                                ban = true
                                
                            }
                        }
                    }
                
                HStack {
                    Spacer()
                    Button(action: {
                        showList.toggle()
                    }) {
                        Text(showList ? "hide times" : "Show times")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    }
                }
                
                if showList {
                    List {
                        ForEach(times, id: \.self) { time in
                            HStack {
                                Text(String(format: "%.2f", time))
                                    .font(.system(size: 40))
                                    .foregroundColor(.accentColor)
                                Spacer()
                                Button(action: {
                                    if let index = times.firstIndex(of: time) {
                                        times.remove(at: index)
                                    }
                                }) {
                                    Image(systemName: "minus.circle")
                                        .foregroundColor(.red)
                                        .font(.system(size: 30))
                                }
                            }
                        }
                    }
                    .frame(minWidth: 200, idealWidth: 200, maxWidth: 350, minHeight: 250, idealHeight: 250, maxHeight: 250, alignment: .leading)
                    .listStyle(.sidebar)
                }
                
                VStack {
                    if times.count > 0 {
                        Text("Last time: \(String(format: "%.2f", times.last!))")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                    }
                    if times.count >= 5 {
                        Text("Average of the last 5 times: \(String(format: "%.2f", averageTime(count: 5)))")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                    }
                    if times.count >= 12 {
                        Text("Average of the last 12 times \(String(format: "%.2f", averageTime(count: 12)))")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                    }
                    if times.count >= 50 {
                        Text("Average of the last 50 times: \(String(format: "%.2f", averageTime(count: 50)))")
                            .font(.system(size: 35))
                            .foregroundColor(.white)

                    }
                    if times.count >= 100 {
                        Text("Average of the last 100 times: \(String(format: "%.2f", averageTime(count: 100)))")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                    }
                }
            }
        }.ignoresSafeArea()
   
    }
    
    private func updateElapsedTime() {
              if let start = startTime {
                  elapsedTime = Date().timeIntervalSince(start)
                  ban = true
              }
          }
    
    private func getElapsedTime() -> String {
           if let lastTime = times.last, timer == nil {
               return String(format: "%.2f", lastTime)
           }
           return String(format: "%.2f", elapsedTime)
       }
    
    private func averageTime(count: Int) -> Double {
        let sortedTimes = times.sorted().dropLast().dropFirst()
        let lastNTimes = sortedTimes.suffix(count)
        return lastNTimes.reduce(0, +) / Double(lastNTimes.count)
    }
    
    private func generateRandomString() -> String {
        var prevMove = ""
        var randomString = ""
        
        if ban == true {
            return " "
        }
        else{
            let moves = ["U", "U'", "R", "R'", "L", "L'", "D", "D'", "B", "B'", "F", "F'", "U2", "R2", "L2", "F2", "B2", "D2"]
            let length = Int.random(in: 19...21)
           
            
            
            for _ in 1...length {
                var move = moves.randomElement()!
                while (move.first == prevMove.first) {
                    move = moves.randomElement()!
                }
                randomString += move + " "
                prevMove = move
            }
            
        }
        return randomString
    }
   
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
