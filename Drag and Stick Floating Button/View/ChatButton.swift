//
//  ChatButton.swift
//  Drag and Stick Floating Button
//
//  Created by Swee Kwang Chua on 28/12/22.
//

import SwiftUI

struct ChatButton: View {
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
    }
}

struct ChatButton_Previews: PreviewProvider {
    static var previews: some View {
        ChatButton()
    }
}
