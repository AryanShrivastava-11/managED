//
//  ProjectView.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//

import SwiftUI

struct CertificatesView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack{
                        Text("Certificates")
                            .font(.system(size: 40, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                            .shadow(color: .black.opacity(0.7), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                        Spacer()
                        
                        Button(action: { show.toggle() }, label: {
                            Image(systemName: "arrowshape.turn.up.backward.2")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.7), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                                .padding()
                        })
                    }
                    .padding()
                    .padding(.top)
                }
                .frame(maxWidth: screen.width)
                .frame(height: 150)
                .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)).opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack{
                    
                }
                .frame(height: 150)
                ScrollView {
                    HStack{
                        
                    }
                    .frame(height: 50)
                    
                    CertificateCardView(title: "UI Design", year: "2021", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                    
                    HStack{
                        
                    }
                    .frame(height: 50)
                    
                    CertificateCardView(title: "SwiftUI", year: "2019", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
                    
                    
                    
                }
            }
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView(show: .constant(true))
    }
}

struct CertificateCardView: View {
    var title: String
    var year: String
    var color: UIColor
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                    Text(year)
                        .foregroundColor(Color.white)
                        .font(.footnote)
                }
                Spacer()
            }
            .padding(.horizontal , 20)
            .padding(.top , 20)
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340, height: 220)
        .background(Color(color))
        .clipShape(RoundedRectangle(cornerRadius:  20, style: .continuous))
        .shadow(color: .black.opacity(0.4), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
    }
}
