//
//  Splash.swift
//  KSA
//
//  Created by HUDA ALSHAMMARI on 19/07/1443 AH.
//

import SwiftUI
import WebKit
struct Splash: View {
    @State var animation = false
    
    var body: some View {
        Group {
            ZStack {
                Image("Background")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(0.4)
                    .ignoresSafeArea()
                VStack {
                    Image("saudi-1")
                        .resizable()
                        .frame(width:.infinity, height: 150)
                        .padding(.top,-430)
                     
                }
                VStack(spacing: 25){
                    Image("Logo")
                        .resizable()
                        .frame(width: 290, height: 150)
                        .padding(.top,-260)
                       
                }
                Spacer()
                VStack{
           
                    VStack(spacing: 70){
                        SaudiText(text: "Saudi")
                            .font(.system(size:40 , weight:.bold))
                            .foregroundColor(Color("Button"))
                    }
                    VStack{
                        SaudiText(text:"Founding")
                            .font(.system(size:40 , weight:.bold))
                            .foregroundColor(Color("Button"))
                        
                    }
                    VStack{
                        SaudiText(text:"Day")
                            .font(.system(size:40 , weight:.bold))
                            .foregroundColor(Color("Button"))
                        
                    }
                    VStack{
                     Text("1727-2022")
                            .font(.system(size:25 , weight:.bold))
                            .foregroundColor(Color("Button"))
                    }
                    .padding()
                    
                    Enter()
                        .padding(.top,60)
                    
                }
                .padding(.bottom,-230)
                
            }
        }
        
        
    }
}
struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}

struct SaudiText: View {
    
    var text: String
    @State var animation = false
    
    var body: some View{
        
        ZStack {
            
            Text(text)
//                .font(.system(size: 50, weight: .bold))
                .foregroundColor(Color("Button").opacity(1.25))
            
            
            HStack(spacing: 0){
                
                ForEach(0..<text.count,id: \.self){index in
                    
                    
                    
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(Color.white)
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

