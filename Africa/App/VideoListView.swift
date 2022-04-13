//
//  VideoListView.swift
//  Africa
//
//  Created by Valentina Olariaga on 25/3/22.
//

import SwiftUI

struct VideoListView: View {
    
    @State var video : [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView{
            List{
                ForEach(video){ item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)){
                    VideoListItemView(video: item)
                        .padding(.vertical,8)
                }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        video.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
            .previewDevice("iPhone 11 Pro")
    }
}
