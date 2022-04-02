import SwiftUI
import AVKit
import WebKit

struct Video: View {
    @Environment(\.dismiss) private var dismiss
    
    let url = URL(string: "https://f.top4top.io/m_2242cq1331.mp4")!
    
    var body: some View {

            VStack {
                
                VStack {
                    Start("Handwritting_").frame(height: 140)
                }
                                

                VStack {
                    VideoPlayer(player: AVPlayer(url: url))
                        .scaledToFit()
                    VStack {
                        Image("academy")
                            .resizable()
                            .frame(width: 150, height: 100)
                        Text("Huda Alshammari")
                            .font(.system(size:22))
                            .padding(.top,-30)
                    }
                    .padding(.top,-5)
                    VStack{
                        Image("HUDAA")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    .padding(.top,-20)
                            
                    HStack(spacing:227) {
                        Button { dismiss() } label: {
                            Text("Finish")
                                .foregroundColor(Color("Text"))
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .frame(maxWidth:200)
                                .background(Color("text2و"))
                                .cornerRadius(11)
                        }
                    }
                    }
                    
                }
                
            
            Spacer()
        }
        }
        


struct Video_Previews: PreviewProvider {
    static var previews: some View {
        Video()
    }
}
