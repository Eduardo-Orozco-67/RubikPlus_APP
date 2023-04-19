//
//  notationView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct notationView: View {
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
                
                Text("HOLDING THE CUBE IN A FIXED POSITION, THERE ARE 6 SIDES THAT CAN BE TURNED. A SINGLE LETTER DENOTES TURNING THE SPECIFIED FACE 90 DEGREES CLOCKWISE. A LETTER FOLLOWED BY A PRIME (') SYMBOL DENOTES A 90 DEGREE TURN ANTI-CLOCKWISE. A LETTER FOLLOWED BY A 2 DENOTES A DOUBLE TURN OF THAT FACE.")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                Image("notationL")
                    .resizable()
                    .frame(width: 1100, height: 80)
                    .imageScale(.small)
                    .clipShape(Rectangle())
                    .padding(.bottom,10)
                
                HStack (spacing: 80){
                    VStack{
                        Image("notation33")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("U")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("CLOCKWISE")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("notation11")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("U'")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("ANTI-CLOCKWISE")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("notation22")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("U2")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                        Text("DOUBLE TURN")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                }
            }
        }.ignoresSafeArea()
            
    }
}

struct notationView_Previews: PreviewProvider {
    static var previews: some View {
        notationView()
    }
}
