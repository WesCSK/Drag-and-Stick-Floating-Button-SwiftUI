//
//  ChatButton.swift
//  Drag and Stick Floating Button
//
//  Created by Swee Kwang Chua on 28/12/22.
//

import SwiftUI

struct ChatButton: View {
    @State var opacityState: Double = 1
    
    var body: some View {
        Button {
            
        } label: {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .shadow(radius: 3)
                .overlay {

                    Image("chat")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
        }
        .disabled(true)
        .opacity(opacityState)
        .onLongPressGesture(minimumDuration: 0.2) {
            print("press")
            withAnimation(.linear(duration: 0.1)) {
                opacityState = 0.2
            }
            
            withAnimation(.linear(duration: 0.1).delay(0.1)) {
                opacityState = 1
            }
            
        }
    }
}

struct ChatButton_Previews: PreviewProvider {
    static var previews: some View {
        ChatButton()
    }
}
