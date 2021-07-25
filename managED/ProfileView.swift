//
//  CardView.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//

import SwiftUI

struct ProfileView: View {
    @State var showAboutMe: Bool = false
    @State var showAcademics: Bool = false
    @State var showSkills: Bool = false
    @State var showCertificates: Bool = false
    @State var showStatus: Bool = false
    @Binding var showSignout: Bool
    
    var body: some View {
        ZStack {
            
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Welcome,")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                        Text("Peter Parker")
                            .font(.system(size: 40, weight: .heavy, design: .rounded))
                        HStack {
                            Text("1DS19IS023")
                                .font(.system(size: 12, weight: .light,design: .serif))
                            Text("ISE")
                                .font(.system(size: 12, weight: .light, design: .serif))
                        }
                    }
                    .padding(.leading)
                    Spacer()
                    Button(action: {
                        showSignout.toggle()
                    }, label: {
                        Image("randomFace")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding()
                    })
                    
                }
                .padding(.horizontal, 20)
                
                Spacer()
            }
            
            VStack {
                HStack{
                    
                }
                .frame(height: 100)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        
                        CategoryCardView(show: $showAboutMe, title: "About Me" , imageName: "aboutMeCard", color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
                        
                        CategoryCardView(show: $showAcademics, title: "Academics" , imageName: "Card3", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))
                        
                        
                        SkillsExperiencesCardView(show: $showSkills)
                        
                        
                        CertificatesCardView(show: $showCertificates)
                        
                        //CategoryCardView(show: $showStatus, title: "Interview\nStatus" , imageName: "aboutMeCard", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                }
                
            }
            
            AboutMeView(show: $showAboutMe)
                .scaleEffect(showAboutMe ? 1 : 0.5)
                .offset(x: showAboutMe ? 0 : screen.width)
                .animation(.spring(response: 0.5, dampingFraction: 0.6))
            AcademicsView(show: $showAcademics)
                .scaleEffect(showAcademics ? 1 : 0.5)
                .offset(x: showAcademics ? 0 : screen.width)
                .animation(.spring(response: 0.5, dampingFraction: 0.6))
            SkillsExperienceView(show: $showSkills)
                .scaleEffect(showSkills ? 1 : 0.5)
                .offset(x: showSkills ? 0 : screen.width)
                .animation(.spring(response: 0.5, dampingFraction: 0.6))
            CertificatesView(show: $showCertificates)
                .scaleEffect(showCertificates ? 1 : 0.5)
                .offset(x: showCertificates ? 0 : screen.width)
                .animation(.easeInOut)
            InterviewStatus(show: $showStatus)
                .scaleEffect(showStatus ? 1 : 0.5)
                .offset(x: showStatus ? 0 : screen.width)
                .animation(.spring(response: 0.5, dampingFraction: 0.6))
            
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(showSignout: .constant(false))
    }
}

struct CategoryCardView: View {
    @Binding var show: Bool
    var title: String
    var imageName: String
    var color: UIColor
    
    var body: some View {
        VStack{
            HStack {
                Text(title)
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.leading,10)
            .padding()
            Spacer()
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 250)
                .frame(height: 100)
        }
        .frame(width: screen.width - 100 , height: 200)
        .background(Color(color))
        .cornerRadius(25)
        .padding()
        .shadow(color: Color(color).opacity(0.5), radius: 10, x: 0.0, y: 5)
        .onTapGesture {
            show.toggle()
        }
    }
}

struct SkillsExperiencesCardView: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack{
            HStack {
                Text("Skills &\nExperiences")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.leading,10)
            .padding()
            Spacer()
            Image("Card6")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 250)
                .frame(maxHeight: 50)
        }
        .frame(width: screen.width - 100 , height: 200)
        .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
        .cornerRadius(25)
        .padding()
        .shadow(color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.5), radius: 10, x: 0.0, y: 5)
        .onTapGesture {
            show.toggle()
        }
    }
}

struct CertificatesCardView: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack{
            HStack {
                Text("Certificates")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.leading,10)
            .padding()
            Spacer()
            Image("Card7")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 250,maxHeight: 40)
        }
        .frame(width: screen.width - 100 , height: 200)
        .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
        .cornerRadius(25)
        .padding()
        .shadow(color: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)).opacity(0.5), radius: 10, x: 0.0, y: 5)
        .onTapGesture {
            show.toggle()
        }
    }
}
