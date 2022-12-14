//
//  ContentView.swift
//  ls
//
//  Created by Lamia Aldossari on 30/10/2022.
//

import SwiftUI


struct ContentView: View {
    @State var splashScreen  = true
    
    var body: some View {
        ZStack{
            Group{
                if splashScreen {
                    SplashScreen()
                }
                else{
                    MainView()
                }
            }
            .onAppear {
                DispatchQueue
                    .main
                    .asyncAfter(deadline:
                            .now() + 2) {
                                self.splashScreen = false
                            }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
