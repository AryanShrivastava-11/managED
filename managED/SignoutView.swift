//
//  SignoutView.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI
import Firebase

struct SignoutView: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                SignOutButton(title: "Sign out", icon: "person.crop.circle")
                VStack {
                    Text("This app was designed and developed ")
                    Text("by Aryan Shrivastava")
                }
                .font(.caption2)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
        }
        .padding(.bottom, 30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        SignoutView()
    }
}

struct SignOutButton: View {
    @EnvironmentObject var user: UserStore
    var title: String
    var icon: String
    
    
    var body: some View {
        HStack() {
            Button(action: {
                UserDefaults.standard.set(false, forKey: "isLogged")
                user.isLogged = false
                
                let firebaseAuth = Auth.auth()
               do {
                 try firebaseAuth.signOut()
               } catch let signOutError as NSError {
                 print("Error signing out: %@", signOutError)
               }
            }, label: {
                Image(systemName: icon)
                    .font(.system(size: 20, weight: .light))
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .frame(width: 80, alignment: .leading)
            })
        }
        .frame(width: 150,alignment: .center)
    }
}
