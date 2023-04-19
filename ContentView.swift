import SwiftUI

struct ContentView: View {
    @State private var isTimerViewPresented = false
    @State private var ishotosolveViewPresented = false
    @State private var isaboutViewPresented = false
    
    
    var body: some View {
        ZStack{
            Color(.red)
                .opacity(0.33)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red,.indigo,.blue]), startPoint:.topTrailing, endPoint: .bottomTrailing)
                )
            VStack (alignment: .center, spacing: 60){
                
                HStack(spacing: 150){
                    VStack{
                        Image("rc")
                            .resizable()
                            .frame(width: 400, height: 400)
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 60, height: 60)
                    }
                        
                    VStack{
                        Text("Your")
                            .foregroundColor(.white)
                            .font(.system(size: 80))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text("Solve")
                            .foregroundColor(.white)
                            .font(.system(size: 80))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }
                }
                
                VStack (alignment: .center, spacing: 50){
                    HStack{
                        
                        Image(systemName: "timer")
                            .resizable()
                            .frame(width: 60, height: 60)
                           .font(.title)
                           .foregroundColor(.white)
                           .frame(width: 60, height: 60)
                           .padding()
                           .background(Color.accentColor)
                           .clipShape(Circle())
                        
                        Button(action: {
                            isTimerViewPresented = true
                        }, label: {
                            Text("Timer".uppercased())
                                .font(.system(size: 95))
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
       
                        })
                   
                    }
                    
                    HStack{
                        
                        Image("rubiks-cube-2")
                            .resizable()
                            .frame(width: 60, height: 60)
                           .font(.title)
                           .foregroundColor(.white)
                           .frame(width: 60, height: 60)
                           .padding()
                           .background(Color.accentColor)
                           .clipShape(Circle())
                        
                        Button(action: {
                            ishotosolveViewPresented = true
                        }, label: {
                            Text("How to Solve?".uppercased())
                                .font(.system(size: 55))
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        })
                    }
                    
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                           .font(.title)
                           .foregroundColor(.white)
                           .frame(width: 60, height: 60)
                           .padding()
                           .background(Color.accentColor)
                           .clipShape(Circle())
                        
                        Button(action: {
                            isaboutViewPresented = true
                        }, label: {
                            Text("About this App".uppercased())
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
       
                        })
                   
                    }
                   
                }
                
            }
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $isTimerViewPresented, content: {
            TimerView()
        })
        .fullScreenCover(isPresented: $ishotosolveViewPresented, content: {
            howtosolveView()
        })
        .fullScreenCover(isPresented: $isaboutViewPresented, content: {
            aboutView()
        })
    }
}
