//
//  ContentView.swift
//  ZusanIOS
//
//  Created by Sudhar Zan on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Image("NoInternet_Error")
                    .resizable()
                        .frame(width: 350.0, height: 350.0)
                Text("No internet")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.bottom, 37.0)
                Text("Please check your internet connection or try again later")
                    .font(.custom("GloriaHallelujah", size: 25))
                    .padding()
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus.bubble.fill")
                        Text("Retry")
                            .font(.title)
                        
                       
                    }
                }
                .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.red, .blue, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(40)
                    .frame(width: 200.0, height: 150.0)

                    
            }
        }
        .accentColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
