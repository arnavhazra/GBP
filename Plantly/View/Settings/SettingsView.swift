import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View{
        GeometryReader{_ in
            VStack(spacing: 18) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack{
                        Text("Settings")
                            .font(Font.custom("Kollektif-Bold", size: 30))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(EdgeInsets(.init(top: 10, leading: 35, bottom: 0, trailing: 35)))
                    VStack(spacing: 18) {
                        GroupBox(label:
                                Text("About Greenbook")
                                    .font(Font.custom("Kollektif-Bold", size: 18))
                                    .foregroundColor(Color("Primary Green"))
                                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                    .padding(.leading, 35)
                                    .padding(.top, 35),
                            content: { Text("Greenbook is an interactive plant care mobile application for those who need knowledge on plants and a guide to gardening success.")
                                .font(Font.custom("Kollektif", size: 18))
                                .foregroundColor(Color("Primary Green"))
                                .padding(.top, 35)
                        })
                        .cornerRadius(30)
                        .groupBoxStyle(TransparentGroupBox())
                        
                        GroupBox(label:
                                Text("Development Information")
                                    .font(Font.custom("Kollektif-Bold", size: 18))
                                    .foregroundColor(Color("Primary Green"))
                                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                    .padding(.leading, 35)
                                    .padding(.top, 35),
                            content: {
                                VStack {
                                    HStack {
                                        Text("Developed by")
                                        .font(Font.custom("Kollektif", size: 18))
                                        .foregroundColor(Color("Primary Green"))
                                        .padding(.top, 35)
                                        Spacer()
                                        Text("Team Greenbook")
                                        .font(Font.custom("Kollektif-Bold", size: 18))
                                        .foregroundColor(Color("Primary Green"))
                                        .padding(.top, 35)
                                        .padding(.trailing, 20)
                                    }
                                    HStack {
                                        Text("Version")
                                        .font(Font.custom("Kollektif", size: 18))
                                        .foregroundColor(Color("Primary Green"))
                                        .padding(.top, 5)
                                        Spacer()
                                        Text("0.0.1")
                                        .font(Font.custom("Kollektif-Bold", size: 18))
                                        .foregroundColor(Color("Primary Green"))
                                        .padding(.trailing, 20)
                                            .padding(.top, 5)
                                    }
                                }
                        })
                        .cornerRadius(30)
                        .groupBoxStyle(TransparentGroupBox())
                        
                        GroupBox(label:
                                Text("Source Code")
                                    .font(Font.custom("Kollektif-Bold", size: 18))
                                    .foregroundColor(Color("Primary Green"))
                                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                    .padding(.leading, 35)
                                    .padding(.top, 35),
                                 content: { Link(destination: URL(string: "https://github.com/GreenbookDPLYR")!, label: {
                                    Text("GitHub")
                                        .font(Font.custom("Kollektif", size: 18))
                                        .foregroundColor(Color("Primary Green"))
                                        .padding(.top, 35)
                                    Image(systemName: "arrow.up.right.square")
                                        .foregroundColor(Color("Primary Green"))
                                        .padding(.top, 32)
                                    Spacer()
                                 })
                        })
                        .cornerRadius(30)
                        .groupBoxStyle(TransparentGroupBox())
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            HStack {
                                Text("Reset Settings")
                                    .font(Font.custom("Kollektif", size: 22))
                                    .foregroundColor(.white)
                                    .textCase(.lowercase)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(25)
                            .background(Color("Primary Green"))
                            .cornerRadius(20)
                        }
                        .padding(.bottom, 20)
                        
                    }
                    .padding(.leading, 35)
                    .padding(.trailing, 35)
                    .padding(.top, 20)
                }
                .frame(maxWidth: .infinity)
                .padding(EdgeInsets(.init(top: 30, leading: 0, bottom: 0, trailing: 0)))
            }
        }
    }
}

//Transparent Custom GroupBoxStyle
struct TransparentGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(35)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("Muted Green")))
            .overlay(configuration.label.padding(.leading, 0), alignment: .topLeading)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
