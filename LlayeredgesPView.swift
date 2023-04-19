//
//  LlayeredgesPView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct LlayeredgesPView: View {
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
                
                Text("FIND A SOLID BLOCK WHERE AN EDGE IS SOLVED, MOVE IT TO THE BACK SIDE OF YOUR CUBE, AND THEN EXECUTE THE ALGORITHM SHOWN. IF THERE IS INITIALLY NO BLOCK, PERFORM THE ALGORITHM FROM ANY ANGLE.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                HStack (spacing: 80){
                    VStack{
                        Image("llp")
                            .resizable()
                            .frame(width: 280, height: 280)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)

                        Text("(R U') (R U) (R U) (R U') R' U' R2")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                }
            }
        }.ignoresSafeArea()
    }}

struct LlayeredgesPView_Previews: PreviewProvider {
    static var previews: some View {
        LlayeredgesPView()
    }
}
