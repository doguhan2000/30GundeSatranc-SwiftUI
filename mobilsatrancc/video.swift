import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
    
}

struct VideoList {
    
    static let topTen = [
        Video(imageName: "wish-i-knew",
              title: "Gün 1: Satranç tahtasının dizilimi ve taşların hareketleri.",
              description: "Satranç oyunu, 64 kareden oluşan kare bir tahta üzerinde oynanır. Bu tahta, sekiz sıra ve sekiz sütundan oluşur ve oyunculara beyaz ve siyah olmak üzere iki farklı renkte taşlarla oynamak için birer yarım tahta sunar.Taşların Dizilimi:Satranç tahtası, oyuna başlamadan önce belirli bir dizilime sahiptir. Her oyuncunun sahip olduğu 16 taş, sırasıyla birinci ve ikinci sıralara yerleştirilir. Taş dizilimi, her oyuncunun ön sırasından itibaren aşağıdaki gibi olur:",
              viewCount: 0-1000,
              uploadDate: "0-1000 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
            
        
        Video(imageName: "your-first-app",
              title: "Gün 2: Küçük rok ve büyük rok temel hamlelerin önemi.",
              description: "Rok yapma, satranç oyununda çok önemli bir savunma ve pozisyonel strateji hamlesidir. Bu hamlede, oyuncu kendi Şah'ı ve bir kaleyi aynı anda hareket ettirir. Küçük rok, Şah'ı sağa iki kare kaydırarak ve aynı anda sağdaki kalesi ile yer değiştirerek gerçekleşir. Büyük rok ise Şah'ı sola iki kare kaydırarak ve aynı anda soldaki kalesi ile yer değiştirerek gerçekleşir.",
              viewCount: 0-1000,
              uploadDate: "0-1000 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "beginner-tableView",
              title: "Gün 3: Forks, pins, skewers gibi temel taktik kavramları",
              description: "Çatal (Fork): Çatal, bir taşın birden fazla düşmana saldırmasıdır. Genellikle, rakip taşları aynı anda hedefleyen bir at veya piyon hamlesiyle gerçekleşir. Örneğin, bir at, rakip bir kralı ve bir kaleyi aynı anda tehdit edebilir. Bu durumda, rakip oyuncu ya kralı ya da kaleyi korumak zorunda kalır, ancak birini korurken diğeri tehlikeye düşer.Sabitlenme (Pin): Sabitlenme, bir taşın, onu taşıyan taşı sadece bir yönü koruyabilecek şekilde kilitlemesidir. Genellikle, bir taşın, onu taşıyan düşman taşı hareket ettirmesi halinde daha değerli bir taşı tehlikeye atabilecek şekilde sabitlenmesi anlamına gelir. Örneğin, bir fil, bir kralı veya kraliçeyi tehdit ederken, arada bir kale veya vezir varsa ve bu taşlar aynı hatta yer alıyorsa, aradaki taş sabitlenir ve hareket ettirilemez.",
              viewCount: 0,
              uploadDate: "0-1000 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "delegates-protocols",
              title: "Gün 4: Anahtar matlar ve temel matlar hakkında bilgi",
              description: "Mat (Checkmate): Mat, bir oyuncunun kendi kralı tehdit altında olmadığı halde, rakip kralın herhangi bir hamleyle tehdit altında olduğu durumdur. Mat, oyunu kazanan bir durumdur ve oyunu sonlandırır.Anahtar Matlar (Basic Checkmate Patterns): Satrançta birçok farklı mat kalıbı bulunur. Bunlardan bazıları şunlardır:Ferz Matı (Queen Mate): Bir ferz veya vezir, krala doğrudan saldırırken, bir kale veya bir at tarafından desteklenir. Bu durumda, kral hiçbir yere kaçamaz ve mat olur.Ayna Matı (Back Rank Mate): Bir kale veya bir ferz, rakip kralı sırt hattında sıkıştırır ve onu mat eder. Arkadaki taşlar kralın kaçmasını engeller.Yay Matı (Legal's Mate): Bir at, rakip krala doğrudan saldırırken, iki vezir veya bir vezir ve bir fil tarafından desteklenir. Bu durumda, kral hiçbir yere kaçamaz ve mat olur.",
              viewCount: 0,
              uploadDate: "0-1000 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "first-job",
              title: "Gün 5: Merkezi kontrolün önemi ve geliştirme stratejileri",
              description: "Satrançta merkezi kontrol, tahtanın merkezi karelerini kontrol etmenin ve bu alanları işgal etmenin önemli bir stratejisidir. Merkezi kontrol elde etmek, pozisyon avantajı sağlamanın ve oyunu kontrol etmenin anahtarlarından biridir.Merkezi Kontrolün Önemi: Merkezi kareler, satranç tahtasının en stratejik ve güçlü kareleridir. Bu kareler, taşların hareket edebileceği en geniş alanı kapsar ve bu nedenle oyunun kontrolünü ele geçirmek için kritik öneme sahiptir. Merkezi kareleri kontrol etmek, taşların hareket etme kabiliyetini artırır ve saldırı ve savunma pozisyonları için daha fazla seçenek sunar.",
              viewCount: 0,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "37-tips",
              title: "Gün 6: Temel açılış prensipleri ve popüler açılışlar",
              description: "Açılış Prensipleri: Satranç açılışlarında dikkate alınması gereken bazı temel prensipler şunlardır:Merkezi Kontrol: Oyunun başlarında merkezi kareleri kontrol etmek önemlidir. Bu nedenle, piyonlar ve atlar gibi taşlar genellikle merkezi karelerin kontrolü için hareket ettirilir.Erken Taş Geliştirme: Oyunun başlarında taşların erken bir şekilde geliştirilmesi önemlidir. Bu, taşların hareket alanını genişletir ve oyuncuya daha fazla kontrol ve esneklik sağlar.Kralın Güvenliği: Kralın güvenliği, oyunun her aşamasında önemlidir, ancak özellikle açılışta dikkate alınması gereken bir faktördür. Bu nedenle, rok yapma ve kralın korunması gibi hamleler önemlidir.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "average-dev",
              title: "Gün 7: Merkezi kontrol ve gelişim stratejilerinin incelenmesi.",
              description: "Merkezi Kontrolün Derinlemesine İncelenmesi: Merkezi kontrol, satrançta büyük bir öneme sahiptir çünkü merkezi kareler, taşların hareket etmek için en fazla seçenek bulabileceği ve en çok etkiye sahip olabileceği yerlerdir. Bu nedenle, oyuncular genellikle oyunun erken aşamalarında merkezi kareleri kontrol etmeye ve bunları işgal etmeye çalışır. Bu strateji, daha fazla hamle seçeneği sunmanın yanı sıra saldırı ve savunma pozisyonları için daha iyi bir konum sağlar.Gelişim Stratejilerinin Derinlemesine İncelenmesi: Oyunun erken aşamalarında, taşların doğru şekilde geliştirilmesi önemlidir. Bu, piyonların ve atların erken bir şekilde hareket ettirilmesini, fil ve kalelerin doğru pozisyonlara yerleştirilmesini ve kralın güvenliğinin sağlanmasını içerir. Doğru gelişim stratejileri, oyunculara daha fazla kontrol ve esneklik sağlar ve pozisyon avantajı elde etmelerine yardımcı olur.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "90-90",
              title: "Gün 8: Saldırı ve Savunma Stratejileri",
              description: "Saldırı Stratejileri: Saldırı stratejileri, rakip kralı tehdit etmek veya rakip pozisyonunda zayıf noktaları hedeflemek için kullanılır. Bu stratejiler arasında açık dosyalara saldırı, arka sıra matı, atağa yönelik açılışlar ve taktik kombinasyonlar bulunur. Saldırı, rakibi savunmaya zorlamak ve pozisyon avantajı elde etmek için güçlü bir araçtır.Savunma Stratejileri: Savunma stratejileri, rakip saldırıları püskürtmek ve kendi pozisyonunuzu korumak için kullanılır. Bu stratejiler arasında taşların geri çekilmesi, savunma blokları oluşturma, savunma önceliği verme ve karşı saldırılar bulunur. Doğru savunma stratejileri, rakibin saldırılarını etkisiz hale getirmek ve pozisyonunuzu güçlendirmek için hayati öneme sahiptir.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "xcode-12",
              title: "Gün 9: Pozisyonel Oyun ve Zayıf Karelerin Hedeflenmesi",
              description: "Bugünün odak noktası, pozisyonel oyun stratejileri ve zayıf karelerin nasıl hedefleneceğidir. Pozisyonel oyun, rakip pozisyonunu zayıf noktalara saldırarak zayıflatma ve avantaj elde etme stratejisidir. Bu strateji, oyunun orta aşamalarında sık ​​sık kullanılır ve rakibin pozisyonunu zorlayarak zafer için bir yol sağlar.Pozisyonel Oyun Stratejileri: Pozisyonel oyun, bir oyuncunun pozisyonunu iyileştirmek ve rakibin pozisyonunu zayıflatmak için kullanılan çeşitli stratejiler içerir. Bu stratejiler arasında açık dosyaları kontrol etme, merkezi kareleri işgal etme, zayıf kareleri hedefleme ve piyon yapıları üzerinde baskı kurma bulunur. Pozisyonel oyun, rakibin hamlelerini sınırlayarak ve kendi taşlarını daha iyi bir konuma getirerek avantaj elde etme stratejisidir.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "10",
              title: "Gün 10: Orta Oyun Planları ve Avantajların Değerlendirilmesi",
              description: "Orta Oyun Planları: Orta oyun, genellikle açılışta elde edilen avantajların geliştirilmesi ve kullanılmasıyla ilgilidir. Oyuncular, piyon yapılarını iyileştirme, parça yerleşimini optimize etme, atağa yönelme veya savunma stratejileri gibi çeşitli orta oyun planlarını uygulayabilirler. Bu planlar, pozisyonel avantajların geliştirilmesi ve rakip pozisyonunun zayıf noktalarının hedeflenmesi için önemlidir.Avantajların Değerlendirilmesi: Orta oyunda, oyuncular elde ettikleri avantajları değerlendirme yeteneğine sahip olmalıdır. Bu avantajlar genellikle materyal üstünlüğü, pozisyonel avantajlar veya atak potansiyeli gibi çeşitli şekillerde olabilir. Oyuncular, avantajlarını koruyarak ve geliştirerek, sonraki aşamalarda zafer için daha iyi bir konum elde edebilirler.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://www.youtube.com/watch?v=bGGvyHhBzLU")!),
        
        Video(imageName: "11",
              title: "Gün 11: Satranç Taktikleri ve Taktik Problemleri",
              description: "Taktik Kavramları: Satrançtaki temel taktik kavramları arasında çift saldırı, çifte tehdit, çekme, fırlatma ve çatışma gibi terimler bulunur. Bu kavramlar, oyuncuların pozisyonlarını geliştirmek ve rakip pozisyonunu zorlamak için kritik öneme sahiptir.Taktik Problemleri Çözümü: Taktik problemleri, oyuncuların taktik becerilerini geliştirmek ve zihinsel keskinliklerini sınayarak pozisyonlarında avantaj elde etmelerini sağlar. Bu problemler, oyunculara belirli bir pozisyon veya durumda en iyi hamleyi bulma fırsatı verir ve stratejik düşünme yeteneklerini geliştirir.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUI")!),
        
        Video(imageName: "12",
              title: "Gün 12: Satranç Son Oyun Teknikleri ve Kazanma Stratejileri",
              description: "Son Oyun Teknikleri: Satrançtaki son oyun teknikleri, genellikle kralın aktif hale getirilmesi, piyonların terfi ettirilmesi ve taşların koordinasyonunun sağlanması gibi konuları içerir. Bu teknikler, oyuncuların son oyun aşamasında avantajlarını korumalarına ve rakibi yenmelerine yardımcı olur.Kazanma Stratejileri: Kazanma stratejileri, oyuncuların avantajlarını en üst düzeye çıkararak ve rakibin savunmasını aşarak oyunu kazanmalarını sağlayan stratejilerdir. Bu stratejiler arasında pasif taşları aktifleştirme, mat tehditleri oluşturma ve avantajlı bir konumda pozisyonu kapatma bulunur.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "13",
              title: "Gün 13: Kendi Oyunlarınızı Analiz Etme Pratiği",
              description: "Analiz Teknikleri: Kendi oyunlarınızı analiz etmek için faydalı birkaç teknik bulunmaktadır. Bu teknikler arasında oyunlarınızı satranç motorları veya programları kullanarak bilgisayar destekli analiz etmek, hamlelerinizi ve alternatiflerinizi düşünmek, kritik pozisyonları not almak ve daha güçlü oyuncularla oyunlarınızı incelemek bulunur.Hataları ve Fırsatları Belirleme: Oyunlarınızı analiz ederken, hem başarılı hamlelerinizi hem de hatalı hamlelerinizi gözden geçirmeniz önemlidir. Hatalarınızı belirleyerek, neden kaynaklandığını anlayabilir ve bu alanlarda çalışarak gelişebilirsiniz. Aynı şekilde, başarılı hamlelerinizi ve fırsatlarınızı belirleyerek, bu stratejileri gelecekteki oyunlarınıza uygulayabilirsiniz.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "14",
              title: "Gün 14: Büyük Ustaların Oyunlarını İnceleme ve Stratejileri Anlama",
              description: "Büyük Ustaların Oyunlarını İnceleme: Büyük ustaların oyunlarını incelemek, onların stratejilerini, açılış seçimlerini, orta oyun planlarını ve son oyun tekniklerini anlamanıza yardımcı olur. Bu oyunları inceleyerek, satrançtaki çeşitli stratejik yaklaşımları ve taktikleri öğrenebilir ve kendi oyunlarınıza uygulayabilirsiniz.Stratejileri Anlama: Büyük ustaların oyunlarını inceleyerek, onların kullandığı stratejileri ve taktikleri anlama fırsatına sahip olursunuz. Bu stratejileri anlayarak, kendi oyunlarınızda daha derin ve stratejik bir düşünme tarzı geliştirebilir ve rakiplerinizi daha etkili bir şekilde yenmeyi öğrenebilirsiniz.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "15",
              title: "Gün 15: Satranç Becerilerinizi Günlük Egzersizlerle Geliştirme",
              description: "Bugün, satranç becerilerinizi günlük egzersizlerle geliştirme günüdür. Satrançta ustalaşmak için düzenli ve sistematik bir pratik önemlidir. Bu günlük egzersizler, taktikleri, stratejileri ve pozisyonel anlayışı güçlendirmenize yardımcı olur.Taktik Egzersizleri: Taktik egzersizleri, satrançtaki temel taktik kavramlarını pekiştirmenin ve taktik becerilerinizi geliştirmenin harika bir yoludur. Taktik kitapları veya çevrimiçi platformlardan taktik problemleri çözerek, taktik yeteneklerinizi sınayabilir ve geliştirebilirsiniz.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "16",
              title: "Gün 16: Büyük Ustaların Oyunlarını İnceleme ve Stratejileri Anlama",
              description: "Stratejileri Anlama: Büyük ustaların oyunlarını inceleyerek, onların kullandığı stratejileri ve taktikleri anlama fırsatına sahip olursunuz. Bu stratejileri anlayarak, kendi oyunlarınızda daha derin ve stratejik bir düşünme tarzı geliştirebilir ve rakiplerinizi daha etkili bir şekilde yenmeyi öğrenebilirsiniz.Gün 16 boyunca, büyük ustaların oyunlarını inceleyerek, satranç dünyasındaki ustalıkları keşfedecek ve kendi oyunlarınıza uygulayabileceğiniz stratejileri öğreneceksiniz. Bu, satrançta ilerlemenin ve daha güçlü bir oyuncu haline gelmenin önemli bir adımıdır.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "17",
              title: "Gün 17: Satranç Becerilerinizi Günlük Egzersizlerle Geliştirme",
              description: "Taktik Egzersizleri: Taktik egzersizleri, satrançtaki temel taktik kavramlarını pekiştirmenin ve taktik becerilerinizi geliştirmenin harika bir yoludur. Taktik kitapları veya çevrimiçi platformlardan taktik problemleri çözerek, taktik yeteneklerinizi sınayabilir ve geliştirebilirsiniz.Strateji Egzersizleri: Strateji egzersizleri, açılışları, orta oyun planlarını ve son oyun tekniklerini çalışmanın önemli bir yoludur. Büyük ustaların oyunlarını inceleyerek veya konuyla ilgili kitapları okuyarak, stratejik anlayışınızı derinleştirebilirsiniz.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "18",
              title: "Gün 18: Büyük Ustaların Oyunlarını İnceleme ve Stratejileri Anlama",
              description: "Büyük Ustaların Oyunlarını İnceleme: Büyük ustaların oyunlarını incelemek, onların stratejilerini, açılış seçimlerini, orta oyun planlarını ve son oyun tekniklerini anlamanıza yardımcı olur. Bu oyunları inceleyerek, satrançtaki çeşitli stratejik yaklaşımları ve taktikleri öğrenebilir ve kendi oyunlarınıza uygulayabilirsiniz.Stratejileri Anlama: Büyük ustaların oyunlarını inceleyerek, onların kullandığı stratejileri ve taktikleri anlama fırsatına sahip olursunuz. Bu stratejileri anlayarak, kendi oyunlarınızda daha derin ve stratejik bir düşünme tarzı geliştirebilir ve rakiplerinizi daha etkili bir şekilde yenmeyi öğrenebilirsiniz.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "19",
              title: "Gün 19: Kendi Oyunlarınızı Analiz Etme Pratiği",
              description: "Bugün, kendi satranç oyunlarınızı analiz etme pratiği yapacaksınız. Satrançta kişisel gelişiminiz için en etkili araçlardan biri, kendi oyunlarınızı gözden geçirerek hatalarınızı ve iyileştirme fırsatlarınızı belirlemektir.Analiz Teknikleri: Kendi oyunlarınızı analiz etmek için faydalı birkaç teknik bulunmaktadır. Bu teknikler arasında oyunlarınızı satranç motorları veya programları kullanarak bilgisayar destekli analiz etmek, hamlelerinizi ve alternatiflerinizi düşünmek, kritik pozisyonları not almak ve daha güçlü oyuncularla oyunlarınızı incelemek bulunur.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "20",
              title: "Gün 20: Kendi Oyunlarınızı Analiz Etme Pratiği",
              description: "Analiz Teknikleri: Kendi oyunlarınızı analiz etmek için faydalı birkaç teknik bulunmaktadır. Bu teknikler arasında oyunlarınızı satranç motorları veya programları kullanarak bilgisayar destekli analiz etmek, hamlelerinizi ve alternatiflerinizi düşünmek, kritik pozisyonları not almak ve daha güçlü oyuncularla oyunlarınızı incelemek bulunur.Hataları ve Fırsatları Belirleme: Oyunlarınızı analiz ederken, hem başarılı hamlelerinizi hem de hatalı hamlelerinizi gözden geçirmeniz önemlidir. Hatalarınızı belirleyerek, neden kaynaklandığını anlayabilir ve bu alanlarda çalışarak gelişebilirsiniz. Aynı şekilde, başarılı hamlelerinizi ve fırsatlarınızı belirleyerek, bu stratejileri gelecekteki oyunlarınıza uygulayabilirsiniz.",
              viewCount: 1200,
              uploadDate: "1000-1200 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "21",
              title: "Gün 21: Büyük Ustaların Oyunlarını İnceleme ve Stratejileri Anlama",
              description: "Büyük Ustaların Oyunlarını İnceleme: Büyük ustaların oyunlarını incelemek, onların stratejilerini, açılış seçimlerini, orta oyun planlarını ve son oyun tekniklerini anlamanıza yardımcı olur. Bu oyunları inceleyerek, satrançtaki çeşitli stratejik yaklaşımları ve taktikleri öğrenebilir ve kendi oyunlarınıza uygulayabilirsiniz.Stratejileri Anlama: Büyük ustaların oyunlarını inceleyerek, onların kullandığı stratejileri ve taktikleri anlama fırsatına sahip olursunuz. Bu stratejileri anlayarak, kendi oyunlarınızda daha derin ve stratejik bir düşünme tarzı geliştirebilir ve rakiplerinizi daha etkili bir şekilde yenmeyi öğrenebilirsiniz.",
              viewCount: 1500,
              uploadDate: "1200-1500 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "22",
              title: "Gün 22: Satranç Becerilerinizi Günlük Egzersizlerle Geliştirme",
              description: "Bu gün, satranç becerilerinizi günlük egzersizlerle geliştirme günüdür. Satrançta ustalaşmak için düzenli ve sistematik bir pratik önemlidir. Günlük egzersizler, taktikleri, stratejileri ve pozisyonel anlayışı güçlendirmenize yardımcı olacaktır.Taktik Egzersizleri: Satrançtaki temel taktik kavramlarını pekiştirmek için taktik egzersizleri yapın. Taktik kitapları veya çevrimiçi platformlardan taktik problemleri çözerek taktik becerilerinizi geliştirin.Strateji Egzersizleri: Açılışları, orta oyun planlarını ve son oyun tekniklerini çalışmak için strateji egzersizleri yapın. Büyük ustaların oyunlarını inceleyerek veya strateji kitapları okuyarak stratejik anlayışınızı derinleştirin.",
              viewCount: 1500,
              uploadDate: "1200-1500 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "23",
              title: "Gün 23: Satranç Taktiklerini Çalışma ve Uygulama",
              description: "Bugün, satranç taktiklerini çalışma ve uygulama günüdür. Satrançtaki taktikler, oyunları kazanmak için hayati öneme sahip stratejik araçlardır. Bu gün, çeşitli taktikleri öğrenmek ve uygulamak için zaman ayıracağız.Taktik Kavramlarını İnceleme: Forks, pins, skewers, checks gibi temel taktik kavramlarına göz atın. Bu kavramları anlamak, rakiplerinizi zor duruma düşürmek ve fırsatları değerlendirmek için önemlidir.Taktik Problemleri Çözme: Çeşitli taktik problemlerini çözerek taktik becerilerinizi geliştirin. Taktik kitapları veya çevrimiçi platformlardan taktik problemleri bulabilir ve çözebilirsiniz.Gerçek Oyunlarda Uygulama: Öğrendiğiniz taktikleri gerçek satranç oyunlarında uygulayın. Bu, taktikleri daha iyi anlamanıza ve ustalaşmanıza yardımcı olacaktır.",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "24",
              title: "Gün 24: Satranç Stratejilerini İnceleme ve Uygulama",
              description: "Bugün, satranç stratejilerini inceleme ve uygulama günüdür. Satranç stratejileri, oyunu kontrol etmek ve avantaj elde etmek için kullanılan temel prensiplerdir. Bu gün, çeşitli stratejileri öğrenmek ve uygulamak için zaman ayıracağız.Stratejik Konseptlerin İncelemesi: Merkezi kontrol, gelişim, saldırı ve savunma gibi temel stratejik konseptlere göz atın. Bu konseptleri anlamak, pozisyonel üstünlük elde etmek ve oyunu kontrol etmek için önemlidir.Strateji Kitapları ve Kaynaklarını İnceleme: Strateji kitapları ve çevrimiçi kaynaklar aracılığıyla çeşitli stratejik konuları inceleyin. Büyük ustaların oyunlarını inceleyerek ve stratejik konseptleri analiz ederek stratejik anlayışınızı geliştirin.",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "25",
              title: "Gün 25: Orta Oyun Planları ve Avantajları Değerlendirme",
              description: "Bugün, orta oyun planları ve avantajları değerlendirme günüdür. Orta oyun, satranç oyununun merkezi ve stratejik bir aşamasıdır. Bu aşamada, pozisyonel avantajları değerlendirme ve doğru planları oluşturma önemlidir. Büyük ustaların oyunlarını inceleyerek ve orta oyun planlarını analiz ederek, orta oyun becerilerinizi geliştirebilir ve oyunlarınızda daha güçlü bir şekilde konum alabilirsiniz.",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "26",
              title: "Gün 26: Stratejik Pozisyonları Analiz Etme",
              description: "Bugün, stratejik pozisyonları analiz etme günüdür. Oyunun belirli bir noktasındaki pozisyonları doğru bir şekilde değerlendirmek, stratejik düşünme becerilerinizi geliştirmenin önemli bir parçasıdır. Büyük ustaların oyunlarını inceleyerek ve stratejik pozisyonları analiz ederek, stratejik anlayışınızı derinleştirebilir ve oyunlarınızda daha iyi kararlar alabilirsiniz.",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "27",
              title: "Gün 27: Satranç Son Oyun Teknikleri ve Kazanma Stratejileri",
              description: "Bugün, satranç son oyun teknikleri ve kazanma stratejileri üzerine odaklanacağız. Satrançtaki son oyun, genellikle oyunun en kritik ve kararlı anıdır. Bu aşamada doğru teknikleri ve stratejileri uygulamak, oyunu kazanmak veya beraberlik sağlamak için hayati öneme sahiptir. Büyük ustaların oyunlarını inceleyerek ve son oyun tekniklerini öğrenerek, son oyun becerilerinizi geliştirebilir ve oyunları daha başarılı bir şekilde sonlandırabilirsiniz.",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "28",
              title: "Gün 28: Kendi Oyunlarınızı Analiz Etme ve İlerlemenizi Gözden Geçirme",
              description: "Bugün, kendi satranç oyunlarınızı analiz etme ve ilerlemenizi gözden geçirme günüdür. Satrançta ilerlemek için, kendi oyunlarınızı düzenli olarak analiz etmek ve hatalarınızı belirlemek önemlidir. Ayrıca, bu süreçte kaydettiğiniz ilerlemeyi gözden geçirmek, hangi alanlarda geliştiğinizi ve hangi konular üzerinde daha fazla çalışmanız gerektiğini belirlemenize yardımcı olur.Oyun Analizi: Satranç oyunlarınızı dikkatlice analiz edin. Hangi hamlelerin doğru olduğunu ve hangi hamlelerin hatalı olduğunu belirleyin. Pozisyonel avantajları ve taktik fırsatları gözden geçirin.İlerlemenin Gözden Geçirilmesi: Kaydettiğiniz ilerlemeyi değerlendirin. Hangi konularda geliştiğinizi ve hangi konularda daha fazla çalışmanız gerektiğini belirleyin. Bu, ilerlemenizi sürdürmek ve daha iyi bir oyuncu olmak için önemlidir.",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "29",
              title: "Gün 29: Satranç Ustası Olma Yolculuğunun Değerlendirilmesi",
              description: "Başarıları Kutlama: 30 günlük programı tamamladığınız için kendinizi kutlayın! Bu, başlı başına büyük bir başarıdır ve satranç becerilerinizi geliştirmek için büyük bir adım atmışsınız demektir.Yolculuğun Değerlendirilmesi: 30 günlük süreç boyunca yaşadığınız deneyimleri ve öğrendiklerinizi değerlendirin. Hangi konularda ilerleme kaydettiğinizi ve hangi konularda daha fazla çalışmanız gerektiğini belirleyin.İlerlemenin Gözden Geçirilmesi: Başlangıçta belirlediğiniz hedeflere ne kadar yaklaştığınızı değerlendirin. Hangi hedefleri başardınız ve hangi hedefler üzerinde daha fazla çalışmanız gerekiyor?",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!),
        
        Video(imageName: "30",
              title: "Gün 30: Satranç Tutkunları İçin Son Gün - Tebrikler!",
              description: "Bugün, 30 günlük satranç beceri geliştirme programının son günüdür. Bu gün, programı başarıyla tamamlamanızı kutlamak ve satranç tutkunları için son bir mesaj vermek istiyorum. REFERANS KODUN: DEUYBS",
              viewCount: 1500,
              uploadDate: "1500-2000 Ukd Seviyesi",
              url: URL(string: "http://localhost/satranc/login.php")!),
    ]
}



