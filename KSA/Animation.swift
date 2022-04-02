//
//  Animation.swift
//  KSA
//
//  Created by HUDA ALSHAMMARI on 20/07/1443 AH.
//

import SwiftUI
import FLAnimatedImage

struct Animation: UIViewRepresentable {
    let animatedView = FLAnimatedImageView()
    var fileName : String
    func makeUIView(context: UIViewRepresentableContext<GifView>)
    let view = UIView()
    -> UIView {
    let path: String = Bundle.main.path(forResource: fileName, ofType: "gif") !
    let url = URL(fileURLWithPath: path)
    let gifData = try! Data(contentsOf: url)
    let gif
    =
    FLAnimatedImage(animatedGIFData:gifData)
    animatedView.animatedImage=gif
    animatedView.translatesAutoresizingMaskIntoConstraints=false
    view.addSubview(animatedView)
    NSLayoutConstraint.activate([
    animatedView.heightAnchor.constraint(equalTo:view.heightAnchor),
    animatedView.widthAnchor.constraint(equalTo:view.widthAnchor)
    ])
    return view
    }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<GifView>) {

    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
