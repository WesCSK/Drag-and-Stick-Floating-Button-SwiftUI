//
//  DraggableButton.swift
//  Drag and Stick Floating Button
//
//  Created by Swee Kwang Chua on 28/12/22.
//

import SwiftUI

struct DraggableButton: View {
    @State private var dragAmount: CGPoint?
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    
                    ChatButton()
                        .frame(width: 50, height: 50)
                        .padding(0)
                        .position(dragAmount ?? CGPoint(x: geometry.size.width-34, y: geometry.size.height-100))
                        .gesture(
                            DragGesture()
                                .onChanged { self.dragAmount = $0.location }
                                .onEnded { value in
                                    var currentPostion = value.location
                                    
                                    if currentPostion.x > (geometry.size.width/2) {
                                        currentPostion.x = geometry.size.width-34
                                    } else {
                                        currentPostion.x =  16
                                    }
                                    
                                    withAnimation(.easeOut(duration: 0.05)) {
                                        dragAmount = currentPostion
                                    }
                                }
                        )
                }
            }
        }
        .padding(0)
    }
}

struct DraggableButton_Previews: PreviewProvider {
    static var previews: some View {
        DraggableButton()
    }
}
