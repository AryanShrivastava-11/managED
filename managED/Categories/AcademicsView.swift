//
//  AcademicsView.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//

import SwiftUI

struct AcademicsView: View {
    @Binding var show: Bool
    var sem1Perc: CGFloat = 80
    var sem2Perc: CGFloat = 75
    var sem3Perc: CGFloat = 94
    var sem4Perc: CGFloat = 88
    var sem5Perc: CGFloat = 100
    var sem6Perc: CGFloat = 82
    var sem7Perc: CGFloat = 89
    var sem8Perc: CGFloat = 96
    
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack{
                        Text("Academics")
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
                .background(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)).opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack{
                    
                }
                .frame(height: 150)
                ScrollView {
                    VStack(spacing: 30){
                        Text("The records are as follows:")
                            .font(.title2)
                
                        VStack {
                            RowView(sem: "1", perc: sem1Perc, show: $show)
                            RowView(sem: "2", perc: sem2Perc, show: $show)
                            RowView(sem: "3", perc: sem3Perc, show: $show)
                            RowView(sem: "4", perc: sem4Perc, show: $show)
                            RowView(sem: "5", perc: sem5Perc, show: $show)
                            RowView(sem: "6", perc: sem6Perc, show: $show)
                            RowView(sem: "7", perc: sem7Perc, show: $show)
                            RowView(sem: "8", perc: sem8Perc, show: $show)
                        }
                    }
                    .padding(30)
                }
            }
        }
        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct AcademicsView_Previews: PreviewProvider {
    static var previews: some View {
        AcademicsView(show: .constant(true))
    }
}

struct RowView: View {
    var sem: String
    var perc: CGFloat
    @Binding var show: Bool
    
    var body: some View {
        HStack {
            Text("Sem \(sem) :")
                .font(.system(size: 28, weight: .medium, design: .serif))
            Spacer()
            RingView(color1: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), color2: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), width: 85, height: 85, percent: perc, show: $show)
        }
        .frame(maxWidth: screen.width - 20)
        .padding(25)
    }
}
