//
//  ExperienceView.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//

import SwiftUI

struct InterviewStatus: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack{
                        Text("Experience")
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
                .background(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)).opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack{
                    
                }
                .frame(height: 150)
                ScrollView {
                    VStack(spacing: 30){
                        Text("This is about me  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                        Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")
                    }
                    .padding(30)
                }
            }
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        InterviewStatus(show: .constant(true))
    }
}
