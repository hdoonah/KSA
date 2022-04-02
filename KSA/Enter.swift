//
//  Enter.swift
//  KSA
//
//  Created by HUDA ALSHAMMARI on 19/07/1443 AH.
//

import SwiftUI

struct Enter: View {
    
    @State var isShow = false

    var body: some View {
        Button {
            isShow.toggle()
        } label: {
                Text("Enter")
                .foregroundColor(Color("Text"))
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding()
                    .frame(maxWidth:200)
                    .background(Color("text2"))
                    .cornerRadius(11)
        }
        .fullScreenCover(isPresented: $isShow, content: {
            Video()
        })
        .onTapGesture {
            isShow = true
        }
    }
}
