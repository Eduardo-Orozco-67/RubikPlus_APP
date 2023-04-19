//
//  LlayercornersView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct LlayercornersView: View {
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
                
                Text("CHECK HOW MANY OF YOUR CORNERS ARE ORIENTED, AND HOLD THE CUBE IN THE POSITIONS SPECIFIED BELOW, BEFORE PERFORMING THE CORNER ORIENTATION ALGORITHM.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                HStack (spacing: 80){
                    VStack{
                        Image("ucorners1")
                            .resizable()
                            .frame(width: 260, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)

                        Text("(R U R') U (R U2 R')")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("0 CORNERS ORIENTED")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("ucorners2")
                            .resizable()
                            .frame(width: 260, height: 270)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("(R U R') U (R U2 R')")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("2 CORNERS ORIENTED")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("ucorners3")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("(R U R') U (R U2 R')")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("1 CORNERS ORIENTED")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)

                    }
                }
            }
        }.ignoresSafeArea()
    }
}

struct LlayercornersView_Previews: PreviewProvider {
    static var previews: some View {
        LlayercornersView()
    }
}
