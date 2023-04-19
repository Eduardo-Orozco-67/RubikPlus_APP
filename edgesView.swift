//
//  edgesView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct edgesView: View {
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
                
                Text("THE 3rd STEP IS TO SOLVE THE EDGES OF THE MIDDLE LAYER. EDGE PIECES FROM THE TOP LAYER WILL EITHER NEED TO GO TO THE RIGHT OR LEFT POSITION, IF YOU HOLD THEM AT THE FRONT. IF AN EDGE PIECE IS MISORIENTED OR STUCK IN THE WRONG POSITION, TAKE IT OUT BY INSERTING ANOTHER EDGE INTO ITS POSITION.")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                
                HStack (spacing: 80){
                    VStack{
                        Image("edges1")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)

                        Text("(U' L' U L)(U F U' F')")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Image("edges2")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                        
                        Text("(U R U' R')(U' F' U F)")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                    }
                    
                }
            }
        }.ignoresSafeArea()
    }
}

struct edgesView_Previews: PreviewProvider {
    static var previews: some View {
        edgesView()
    }
}
