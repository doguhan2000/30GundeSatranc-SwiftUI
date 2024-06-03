import SwiftUI

struct VideoListView: View {
   
    var videos: [Video] = VideoList.topTen
    @State private var selectedVideo: Video? // Seçili videoyu izlemek için bir değişken
    @State private var currentIndex = 0 // Seçili video dizini
    @State private var buttonColor: Color = .blue // Buton rengi
    @State private var buttonShake: Bool = false // Buton titreme durumu
    
    var body: some View {
        ZStack {
            // Arka planı daha koyu bir gradient ile ayarlayın
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.blue.opacity(0.7)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                List {
                    ForEach(videos.indices, id: \.self) { index in
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Gün \(index + 1)")
                                .font(.headline)
                                .foregroundColor(index == currentIndex ? .red : .blue) // Aktif gün rengi
                            
                            Text(videos[index].title)
                                .font(.title3)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .foregroundColor(.primary)
                            
                            Text(videos[index].uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            if index == currentIndex {
                                HStack {
                                    Spacer()
                                    
                                    if currentIndex < videos.count - 1 {
                                        Button(action: {
                                            withAnimation {
                                                currentIndex += 1
                                                selectedVideo = videos[currentIndex]
                                                buttonColor = .green // Buton rengi değişimi
                                                buttonShake.toggle() // Buton titreme efekti
                                            }
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                                withAnimation {
                                                    buttonShake.toggle()
                                                }
                                            }
                                        }) {
                                            Text("Son \(videos.count - currentIndex - 1) Gün")
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 16)
                                                .padding(.vertical, 8)
                                                .background(buttonColor)
                                                .cornerRadius(8)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .stroke(Color.white, lineWidth: 2)
                                                )
                                                .padding(.horizontal)
                                                .offset(x: buttonShake ? -5 : 0) // Buton titreme efekti
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        .onTapGesture {
                            if index <= currentIndex + 1 {
                                currentIndex = index
                                selectedVideo = videos[currentIndex]
                            }
                        }
                    }
                }
                .navigationTitle("30 Günde Satranç")
                .sheet(item: $selectedVideo) { video in
                    VideoDetailView(video: video)
                }
                .background(Color.clear)
            }
            .accentColor(.blue) // Liste içindeki tüm butonların renkleri
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}


