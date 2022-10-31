//
//  MainView.swift
//  ls
//
//  Created by Lamia Aldossari on 30/10/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView(){
            ZStack {
                
                Rectangle()
                    .fill(Color.clear)
                    .background(LinearGradient(colors: [.purple.opacity(0.0), .purple.opacity(0.1)],
                                               startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    )
                VStack{
                    Image("logo")
                    
                        .resizable()
                        .offset(y:-200)
                        .frame(width:380, height:380)
                        .padding()
                    
                }
                VStack (spacing: 20) {
                    
                    //****START PAGE CONTENT HERE*****
                    
                    Text("You scratch my back and I'll scratch yours")
                        .offset(y:-30)
                        .padding(.top,350)
                    //                        Spacer()
                    //first button link
                    NavigationLink(destination: loginPage(), label:{
                        Text("Log in")
                            .foregroundColor(Color("Color"))
                            .padding()
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color("Color"), lineWidth: 1)
                                    .frame(width:307,height:44)
                            )
                        
                    })
                    //second button link
                    NavigationLink(destination: signupPage(), label:{
                        Text("Create account")
                        
                            .frame(width:307 , height:44 )
                            .foregroundColor(.white)
                            .background(Color("Color"))
                            .background(.white)
                            .cornerRadius(8)
                        
                        //                                .bold()
                        //                                .frame(width: 307,height: 44)
                        //                                .background(Color.purple)
                        //                                .foregroundColor(.white)
                    })
                    HStack(spacing:15){
                        
                        Rectangle()
                            .fill(Color("Color"))
                            .frame(height:1)
                            .padding(.horizontal,20)
                        
                        Text("or")
                            .foregroundColor(Color("Color"))
                        
                        Rectangle()
                            .fill(Color("Color"))
                            .frame(height:1)
                            .padding(.horizontal,20)
                        
                    }
                    
                    Button("Continue with Apple"){}
                    
                        .frame(width:307 , height:44 )
                        .foregroundColor(.white)
                        .background(Color(.lightGray))
                        .background(.white)
                        .cornerRadius(8)
                    
                    
                    HStack{
                        
                        Text(" By signing up, you agree to our Terms, Privacy Policy, and Cookie Use.")
                            .padding()
                        
                        
                        
                    }
                    
                    //**** END PAGE CONTENT HERE*****
                }
                .navigationTitle("start page")
                .navigationBarHidden(true)
                
                
            }
            
            
            
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
