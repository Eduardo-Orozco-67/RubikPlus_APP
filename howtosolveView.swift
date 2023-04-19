//
//  howtosolveView.swift
//  RubikPlus
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct howtosolveView: View {
    @State private var isnotationViewPresented = false
    @State private var iscrossViewPresented = false
    @State private var isflcornersViewPresented = false
    @State private var isedgesViewPresented = false
    @State private var isLlayercrossViewPresented = false
    @State private var isLlayercornersViewPresented = false
    @State private var isLlayercornersPViewPresented = false
    @State private var isLlayeredgesPViewPresented = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack{
            Color(.red)
                .opacity(0.33)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red,.indigo,.blue]), startPoint:.topTrailing, endPoint: .bottomTrailing)
                )
            VStack (alignment: .center, spacing: 20){
                
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                    }
                
                }
                
                Text("It is recommended to use te device horizontally before entering the solution steps")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)

                HStack{
                    VStack (alignment: .leading, spacing: 20){

                        HStack(alignment: .center){
                            Image(systemName: "1.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isnotationViewPresented = true
                            }, label: {
                                Text("Notation".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                
                            })
                        }
                        
                        HStack{
                            Image(systemName: "3.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isflcornersViewPresented = true
                            }, label: {
                                Text("First Layer Cornes".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            })
                            
                        }
                        
                        HStack{
                            
                            Image(systemName: "5.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isLlayercrossViewPresented = true
                            }, label: {
                                Text("Upper Cross".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            })
                            
                        }
                        HStack{
                            
                            
                            Image(systemName: "7.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isLlayercornersPViewPresented = true
                            }, label: {
                                Text("Last layer corner".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            })
                        }
                    }
                    
                    .padding(30)
                    VStack (alignment: .leading, spacing: 20){
                        HStack{
                            Image(systemName: "2.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                iscrossViewPresented = true
                            }, label: {
                                Text("Cross".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                
                            })
                        }
                        
                        HStack{
                            
                            Image(systemName: "4.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isedgesViewPresented = true
                            }, label: {
                                Text("Edges".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            })
                        }
                        
                        HStack{
                            
                            Image(systemName: "6.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isLlayercornersViewPresented = true
                            }, label: {
                                Text("Upper corner".uppercased())
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            })
                        }
                        
                        
                        HStack{
                            
                            Image(systemName: "8.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color.accentColor)
                                .clipShape(Circle())
                            
                            Button(action: {
                                isLlayeredgesPViewPresented = true
                            }, label: {
                                Text("Last layer edges".uppercased())
                                    .font(.system(size: 30))
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
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $isnotationViewPresented, content: {
            notationView()
        })
        .fullScreenCover(isPresented: $iscrossViewPresented, content: {
            crossView()
        })
        .fullScreenCover(isPresented: $isflcornersViewPresented, content: {
            flcornersView()
        })
        .fullScreenCover(isPresented: $isedgesViewPresented, content: {
            edgesView()
        })
        .fullScreenCover(isPresented: $isLlayercrossViewPresented, content: {
           LlayercrossView()
        })
        .fullScreenCover(isPresented: $isLlayercornersViewPresented, content: {
            LlayercornersView()
        })
        .fullScreenCover(isPresented: $isLlayercornersPViewPresented, content: {
            LlayercornersPView()
        })
        .fullScreenCover(isPresented: $isLlayeredgesPViewPresented, content: {
            LlayeredgesPView()
        })

        
    }
}

struct howtosolveView_Previews: PreviewProvider {
    static var previews: some View {
        howtosolveView()
    }
}
