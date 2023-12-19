import SwiftUI

struct Screen_1_2: View {
    
    @State private var userInput: String = ""
    
    
    var body: some View {
        VStack {
            if let image = UIImage(named: "logo_vkid") {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 22)
                            .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                    } else {
                        Text("Изображение не найдено")
                    }
            Text("Введите пароль")
                .padding(20)
                .font(.system(size: 20))
                .bold()
            TextField("", text: $userInput, prompt: Text("Введите пароль").foregroundColor(Color(UIColor.systemGray2)))
                .padding(10)
                .background(Color(UIColor.secondarySystemBackground))
                .accentColor(.blue)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(UIColor.systemGray5), lineWidth: 1)
                    )
            Button {
                
            } label: {
                HStack {
                    Text("Забыли или не установили пароль?")
                        .padding(5)
                        .font(.system(size: 15))
                    Spacer()
                }
                    
            }

            
            Spacer()
            
            Button {
                
            } label: {
                Text("Продолжить")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
           
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        
    }
}

#Preview {
    Screen_1_2()
}
