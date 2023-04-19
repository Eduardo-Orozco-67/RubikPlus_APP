//
//  LlayercrossView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct LlayercrossView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color(.red)
                .opacity(0.33)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red,.indigo,.blue]), startPoint:.topTrailing, endPoint: .bottomTrailing)
                )
            VStack (alignment: .center, spacing: 40){
                
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                    }
                
                }
                
                Text("USE THE ALGORITHM BELOW TO ORIENT YOUR EDGES. REMEMBER TO HOLD THE LAST LAYER ON TOP.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                HStack (spacing: 50){
                    VStack{
                        Image("ucross11")
                            .resizable()
                            .frame(width: 270, height: 270)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)

                        Text("F R U R' U' F'")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("ucross2")
                            .resizable()
                            .frame(width: 240, height: 240)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("F R U R' U' F'")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("ucross3")
                            .resizable()
                            .frame(width: 250, height: 260)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("F R U R' U' F'")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("FLIPPED CROSS EDGE")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)

                    }
                    
                    VStack{
                        Image("ucross4")
                            .resizable()
                            .frame(width: 220, height: 220)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("SOLVED")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("FLIPPED CROSS EDGE")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)

                    }
                }
            }
        }.ignoresSafeArea()
    }
}

struct LlayercrossView_Previews: PreviewProvider {
    static var previews: some View {
        LlayercrossView()
    }
}
