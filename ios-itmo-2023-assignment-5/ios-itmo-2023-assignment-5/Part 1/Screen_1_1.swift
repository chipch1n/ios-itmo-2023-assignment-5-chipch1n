import SwiftUI

struct Screen_1_1: View {
    
    let length = 237
    let downloaded = 150
    let played = 100

    var body: some View {
        VStack {
            VStack {
                if let image = UIImage(named: "vulturescover") {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                                .shadow(color: .black, radius: 5, x: 0, y: 4)
                        } else {
                            Text("Изображение не найдено")
                        }
                GeometryReader { geometry in
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .foregroundStyle(.gray.opacity(0.5))
                            .frame(width: geometry.size.width, height: 4)
                            .cornerRadius(2)
                        Rectangle()
                            .foregroundStyle(.gray)
                            .frame(width: geometry.size.width * CGFloat(downloaded) / CGFloat(length), height: 4)
                            .cornerRadius(2)
                        Rectangle()
                            .foregroundStyle(.white)
                            .frame(width: geometry.size.width * CGFloat(played) / CGFloat(length), height: 4)
                            .cornerRadius(2)
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundStyle(.white)
                            .offset(x: geometry.size.width * CGFloat(played) / CGFloat(length) - 3, y: -2)
                    }.padding(.top, 20)
                }
                .frame(height: 28)
                HStack(content: {
                    timeText(time: played)
                    Spacer()
                    timeText(time: length)
                })
                Text("Vultures")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                    .bold()
                    .padding(.top, 20)
                Text("¥$, Kanye West & Ty Dolla $ign")
                    .foregroundStyle(.white)
                    .font(.system(size: 18))
            }
            .padding(5)
            .padding(.bottom, 30)
            
            HStack(content: {
                Button {} label: {
                    Image("download")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
                Spacer(minLength: 0)
                
                Button {} label: {
                    Image(systemName: "backward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                }
                Spacer(minLength: 0)
                Button {} label: {
                    Image(systemName: "pause.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                }
                Spacer(minLength: 0)
                Button {} label: {
                    Image(systemName: "forward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                }
                Spacer(minLength: 0)
                Button {} label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.white)
                }
            })
            .frame(height: 50)
                
            }
        .padding(25)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 58 / 255, green: 58 / 255, blue: 58 / 255))
                .edgesIgnoringSafeArea(.all)
    }
    
    func timeText(time: Int) -> Text {
        let minutes = time / 60
        let seconds = time % 60
            
        let formattedTime = String(format: "%02d:%02d", minutes, seconds)
        let view = Text(formattedTime)
            .foregroundStyle(.white)
            .font(.system(size: 12))
            
        return view
    }
}

#Preview {
    Screen_1_1()
}
