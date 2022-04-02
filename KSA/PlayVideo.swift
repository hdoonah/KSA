////
////  PlayVideo.swift
////  KSA
////
////  Created by HUDA ALSHAMMARI on 19/07/1443 AH.
////
//
//import SwiftUI
//import AVKit
//
//struct PlayVideo: UIViewControllerRepresentable {
//    var videoUrl: URL = URL(string: "https://f.top4top.io/m_2242cq1331.mp4")!
//  
//     
//    
//
//
//    // Create the player and set the basic controls
//    func makeUIViewController(context: UIViewControllerRepresentableContext<PlayVideo>) -> AVPlayerViewController {
//        let controller = AVPlayerViewController()
//        let player1 = AVPlayer(url: videoUrl)
//        controller.player = player1
//        controller.allowsPictureInPicturePlayback = true
//        controller.player!.play()
//        return controller
//    }
//    
//    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<PlayVideo>) {
//    }
//}
