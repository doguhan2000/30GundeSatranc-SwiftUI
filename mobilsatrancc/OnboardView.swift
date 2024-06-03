import SwiftUI

struct OnboardingView: View {
    @State private var currentPage = 0
    @Binding var showOnboarding: Bool
    
    var body: some View {
        ZStack {
            // Arka planı daha koyu bir gradient ile ayarlayın
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.blue.opacity(0.7)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                TabView(selection: $currentPage) {
                    OnboardingPage(
                        imageName: "chess_icon_1",
                        title: "Hoş Geldiniz!",
                        description: "Dokuz Eylül Üniversitesi Bitirme Projesi Sergisine Hoş Geldiniz!",
                        link: "https://ybs.deu.edu.tr",
                        linkText: "DEU YBS",
                        youtubeLink: "https://www.youtube.com/@dokuzeyluluniversitesiyone1620",
                        linkedInLink: "https://tr.linkedin.com/in/vahap-tecim-59683018"
                    )
                    .tag(0)
                    
                    OnboardingPage(
                        imageName: "chess_icon_2",
                        title: "Eğitici Videolar",
                        description: "Günlük videolarla satranç temel bilgilerini öğrenin."
                    )
                    .tag(1)
                    
                    OnboardingPage(
                        imageName: "chess_icon_3",
                        title: "İlerlemenizi Takip Edin",
                        description: "Günlük görevleri tamamlayarak ilerlemenizi takip edin."
                    )
                    .tag(2)
                    
                    OnboardingPage(
                        imageName: "chess_icon_4",
                        title: "Forum ve Topluluk",
                        description: "Kullanıcıların birbirleriyle etkileşime geçebilecekleri bir forum veya topluluk bölümüne katılın.",
                        link: "https://ogrencitopluluklari.deu.edu.tr/satranc-toplulugu-2/",
                        linkText: "DEU SATRANÇ"
                    )
                    .tag(3)
                    
                    OnboardingPage(
                        imageName: "chess_icon_5",
                        title: "Yardım ve Destek",
                        description: "Uygulama hakkında yardım alabileceğiniz bir destek bölümüne erişin."
                    )
                    .tag(4)
                    
                    OnboardingPage(
                        imageName: "chess_icon_6",
                        title: "Başlayın!",
                        description: "Hemen başlayın ve satranç yeteneklerinizi geliştirin.",
                        isLastPage: true,
                        action: {
                            showOnboarding = false
                        }
                    )
                    .tag(5)
                }
                .tabViewStyle(PageTabViewStyle())
                
                HStack {
                    ForEach(0..<6) { index in
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(currentPage == index ? .white : .gray)
                            .scaleEffect(currentPage == index ? 1.2 : 1.0)
                            .animation(.spring(), value: currentPage)
                    }
                }
                .padding(.top, 20)
            }
        }
    }
}

struct OnboardingPage: View {
    var imageName: String
    var title: String
    var description: String
    var isLastPage: Bool = false
    var link: String? = nil
    var linkText: String? = nil
    var youtubeLink: String? = nil
    var linkedInLink: String? = nil
    var emailLink: String? = nil
    var action: (() -> Void)? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding(.horizontal, 40)
                .transition(.scale)
                .animation(.easeInOut(duration: 0.5), value: imageName)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .transition(.slide)
                .animation(.easeInOut(duration: 0.5), value: title)
                .foregroundColor(.white)
            
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .foregroundColor(.white)
                .transition(.opacity)
                .animation(.easeInOut(duration: 0.5), value: description)
            
            HStack(spacing: 20) {
                if let link = link, let linkText = linkText {
                    Button(action: {
                        if let url = URL(string: link) {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text(linkText)
                            .bold()
                            .frame(width: 150, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                            .shadow(radius: 10)
                    }
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut(duration: 0.5), value: link)
                }
                
                if let youtubeLink = youtubeLink {
                    Button(action: {
                        if let url = URL(string: youtubeLink) {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                            .shadow(radius: 10)
                    }
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut(duration: 0.5), value: youtubeLink)
                }

                if let linkedInLink = linkedInLink {
                    Button(action: {
                        if let url = URL(string: linkedInLink) {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("L")
                            .bold()
                            .font(.title)
                            .frame(width: 50, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                            .shadow(radius: 10)
                    }
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut(duration: 0.5), value: linkedInLink)
                }
            }
            .padding(.top, 20)
            
            if let emailLink = emailLink {
                VStack(spacing: 10) {
                    Button(action: {
                        let email = "mailto:\(emailLink)"
                        if let url = URL(string: email) {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)
                            .shadow(radius: 10)
                    }
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut(duration: 0.5), value: emailLink)
                    
                    Text(emailLink)
                        .font(.body)
                        .foregroundColor(.white)
                        .onTapGesture {
                            let email = "mailto:\(emailLink)"
                            if let url = URL(string: email) {
                                UIApplication.shared.open(url)
                            }
                        }
                }
            }
            
            if isLastPage {
                Button(action: {
                    action?()
                }) {
                    Text("Başlayın")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .shadow(radius: 10)
                }
                .padding(.top, 20)
                .transition(.move(edge: .bottom))
                .animation(.easeInOut(duration: 0.5), value: isLastPage)
            }
            
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.black.opacity(0.7))
                .shadow(radius: 10)
        )
        .padding(.horizontal, 20)
    }
}

struct HelpView: View {
    var body: some View {
        Text("Yardım ve Destek")
            .font(.largeTitle)
            .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboarding: .constant(true))
    }
}

