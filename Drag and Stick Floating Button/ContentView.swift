//
//  ContentView.swift
//  Drag and Stick Floating Button
//
//  Created by Swee Kwang Chua on 28/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            DraggableButton()
            HStack{
                Spacer()
                
                VStack {
                    Spacer()
                    
                    VStack {
                        Text("Welcome")
                            .multilineTextAlignment(.center)
                        
                        Text("Wes Chua")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            
            // TODO: - Add floating Button
            
            
        }
        .background(
            Color("systemBackground")
        
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
