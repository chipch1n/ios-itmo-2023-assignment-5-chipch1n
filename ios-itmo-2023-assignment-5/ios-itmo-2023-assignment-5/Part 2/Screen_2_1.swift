import SwiftUI

struct Screen_2_1: View {
    
    let images = ["yzy_v", "yzy_h", "mclovin"]

    var body: some View {
        GeometryReader {screenGeometry in
            VStack {
                
                HStack {
                    Button {} label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.blue)
                    }
                    Spacer()
                    HStack(content: {
                        Button {} label: {
                            Image(systemName: "cart")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                                .padding(.trailing, 30)
                        }
                        Button {} label: {
                            Image(systemName: "ellipsis")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                        }
                    })
                }.padding(.horizontal)
                
                TabView {
                            ForEach(images, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .onAppear {
                                  setupAppearance()
                                }
                        .frame(width: screenGeometry.size.width, height: screenGeometry.size.width)

                VStack {
                    HStack  {
                        VStack (alignment: .leading) {
                            Text("Yeezy Foam Runner")
                                .font(.system(size: 20))
                            HStack {
                                Text("12 250₽")
                                    .font(.system(size: 20))
                                    .bold()
                                Text("15000₽")
                                    .strikethrough()
                                    .foregroundStyle(.gray)
                            }
                        }
                        Spacer()
                        Button {} label: {
                            Image("bookmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .padding()
                        }
                        
                    }
                    Rectangle()
                        .foregroundStyle(Color(UIColor.secondarySystemBackground))
                        .frame(height: 1)
                        .cornerRadius(2)
                    GeometryReader { geometry in
                        VStack (alignment: .leading) {
                            Text("Доставка")
                                .font(.system(size: 18))
                            Text("Доставим 30 декабря, Санкт-Петербург - 140₽.\nБесплатная доставка от 15000₽.")
                                .font(.system(size: 14))
                                .foregroundStyle(.gray)
                        }
                        .frame(width: geometry.size.width, alignment: .leading)
                        .padding(.top, 5)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Добавить в корзину")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                    }
                    Button {
                        
                    } label: {
                        Text("Написать")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(UIColor.secondarySystemBackground))
                            .foregroundStyle(.blue)
                            .cornerRadius(10)
                    }
                }.padding(.horizontal)
            }
            
        }
    }
    func setupAppearance() {
      UIPageControl.appearance().currentPageIndicatorTintColor = .gray
      UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.3)
    }}

#Preview {
    Screen_2_1()
}
