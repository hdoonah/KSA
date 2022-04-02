//
//  Start.swift
//  KSA
//
//  Created by HUDA ALSHAMMARI on 20/07/1443 AH.
//

import SwiftUI
import WebKit

struct Start: UIViewRepresentable {
    
    private let name: String

    init(_ name: String) {
        self.name = name
    }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        webView.scrollView.isScrollEnabled = false

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }

}


struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start("Handwritting_")
    }
}
