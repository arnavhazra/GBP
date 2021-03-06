import SwiftUI

struct TipRowView: View {
    
    var tip: Tip
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 25) {
                Image("plant-tips")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 30, alignment: .leading)
                
                Text(tip.tip)
                    .font(Font.custom("Kollektif", size: 20))
                    .foregroundColor(.white)
                    .textCase(.lowercase)
                    .frame(width: 170, height: .infinity, alignment: .leading)
                    .lineSpacing(3.0)
            }
            .padding(EdgeInsets(.init(top: 0, leading: 120, bottom: 0, trailing: 0)))

            Spacer()
            
            Image(tip.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 130, alignment: .center)
                .padding(EdgeInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 40)))
            
            
        }
        .frame(maxWidth: 300, maxHeight: 190)
        .background(Color("Primary Green"))
        .cornerRadius(25.0)
    }
}

struct TipRowView_Previews: PreviewProvider {
    static var previews: some View {
        TipRowView(tip: Tips[0])
            .previewLayout(.sizeThatFits)
    }
}
