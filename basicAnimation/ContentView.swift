//
//  ContentView.swift
//  basicAnimation
//
//  Created by Vipin on 14/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShow = false
    
    var body: some View {
        VStack {
            Text("Tap Me")
                .padding()
        }
        .frame(width: (isShow) ? 280 : 250, height: (isShow) ? 200 : 44)
        .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
        .cornerRadius(25)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.5), radius: 20)
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.2)) {
                isShow.toggle()
            }
            
        }
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
