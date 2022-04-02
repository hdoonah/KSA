//
//  SaudiText.swift
//  KSA
//
//  Created by HUDA ALSHAMMARI on 20/07/1443 AH.
//

import SwiftUI


struct SaudiText: View {
    
    var text: String
    @State var animation = false
    
    var body: some View{
        
        ZStack {
            
            Text(text)
                .font(.system(size: 50, weight: .bold))
                .foregroundColor(Color("Button").opacity(1.25))
            
            
            HStack(spacing: 0){
                
                ForEach(0..<text.count,id: \.self){index in
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(Color.green)
                }
            }
            .mask(
                
                Rectangle()
                
                
                    .fill(
                        
                        LinearGradient(gradient: .init(colors: [Color.green.opacity(0.5),Color.white,Color.green.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    )
                    .rotationEffect(.init(degrees: 70))
                    .padding(20)
                
                
                    .offset(x: -250)
                    .offset(x: animation ? 500 : 0)
            )
            .onAppear(perform: {
                
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)){
                    
                    animation.toggle()
                }
            })
        }
    }
}

