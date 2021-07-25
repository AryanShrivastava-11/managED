//
//  Skills.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//

import SwiftUI

struct SkillsExperienceView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack{
                        Text("Skills & Experience")
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
                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack{
                    
                }
                .frame(height: 150)
                ScrollView {
                    VStack(spacing: 30){
                        
                        
                        ScrollView(.horizontal, showsIndicators: true){
                            HStack(spacing: 40) {
                                SingleSkillView(title: "SwiftUI")
                                
                                SingleSkillView(title: "Figma")
                                
                                SingleSkillView(title: "Swift")
                                
                                SingleSkillView(title: "Sketch")
                                
                                SingleSkillView(title: "C++")
                                
                            }
                            .frame(height: 180)
                        }
                        
                        Text("Experiences: ")
                            .font(.system(size: 35, weight: .medium, design: .default))
                        
                        VStack(spacing: 30.0){
                            
                            SingleExperienceView(comapny: "Swiggy", position: "iOS Intern", yearAndDurations: "2020 6 Months")
                            
                            SingleExperienceView(comapny: "Appzy", position: "iOS Intern", yearAndDurations: "2019 3 Months")
                        
                        }
                    }
                    .padding(30)
                }
            }
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsExperienceView(show: .constant(true))
    }
}

struct SingleSkillView: View {
    var title: String
    
    var body: some View {
        VStack{
            Image(title)
                .resizable()
                .frame(width: 80  , height: 80)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
            Text(title)
                .foregroundColor(.white)
            
        }
        .frame(width: 100, height: 130)
        .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
        .cornerRadius(10)
        .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/), radius: 5, y: 5)
    }
}

struct SingleExperienceView: View {
    var comapny: String
    var position: String
    var yearAndDurations: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(comapny)
                    .font(.system(size: 35, weight: .medium, design: .rounded))
                Text(position)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                Text(yearAndDurations)
                    .font(.footnote)
            }
            .padding()
            Spacer()
            Image(comapny)
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .padding()
        }
        .frame(maxWidth: screen.width - 100)
        .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
        .cornerRadius(20)
        .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
    }
}
