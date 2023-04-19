//
//  aboutView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 19/04/23.
//

import SwiftUI

struct aboutView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color(.red)
                .opacity(0.33)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red,.indigo,.blue]), startPoint:.topTrailing, endPoint: .bottomTrailing)
                )
            VStack (alignment: .center, spacing: 30){
                
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                    }
                
                }
                VStack(alignment: .center, spacing: 20){
                Text("This app was developed by Jose Eduardo Orozco Cardenas")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                Text("I am a 20 year old Mexican guy, studying since 2020 a degree in software engineering, at the Autonomous University of Chiapas")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                Text("The images used in this app were taken from: HTTP://CUBE/CRIDER.CO.UK/VISUALCUBE.PHP")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)

                }
                HStack{
                    VStack{
                        Text("iOS Development Lab Comunity")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .multilineTextAlignment(.center)
                        
                        Image("swift-logo")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                    }
                        .padding(40)
                    
                    VStack{
                        Text("UNIVERSIDAD AUTONOMA DE CHIAPAS")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .multilineTextAlignment(.center)
                        
                        Image("logo-unach")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .imageScale(.small)
                            .clipShape(Rectangle())
                            .padding(.bottom,10)
                    }
                }
            }
        }.ignoresSafeArea()
    }
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        aboutView()
    }
}
