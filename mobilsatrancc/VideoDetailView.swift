//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by DOGUHAN on 14.04.2024.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing: 20) {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 220)
                .cornerRadius(12)
            
            Text(video.title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 28) {
                Label("\(video.viewCount)",systemImage: "arrow.up.right.square.fill")
                    .font(.subheadline)
                
                Text(video.uploadDate)
                    .font(.subheadline)
            }
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                Text("izle")
                    .bold()
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10.0)
            })
        }
    }
}

#Preview {
    VideoDetailView(video: VideoList.topTen.first!)
}


