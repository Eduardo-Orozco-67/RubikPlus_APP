//
//  crossView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct crossView: View {
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
                
                Text("THE 1st STEP IS TO CORRECTLY POSITION THE 4 WHITE EDGE PIECES AROUND THE WHITE CENTER PIECE TO CREATE A CROSS. WHEN YOU DO THIS, MAKE SURE THAT THE NON-WHITE STICKERS OF THE EDGE PIECES ALSO LINE UP WITH THEIR CORRESPONDING CENTER PIECES.")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                
                HStack (spacing: 80){
                    VStack{
                        Image("cross3")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)

                        Text("CORRECT")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("cross1")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("INCORRECT")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("cross2")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("F U' R U")
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

struct crossView_Previews: PreviewProvider {
    static var previews: some View {
        crossView()
    }
}
