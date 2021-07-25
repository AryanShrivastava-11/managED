//
//  Testing.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//

import SwiftUI

struct AboutMeView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack{
                        Text("About Me")
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
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack{
                    
                }
                .frame(height: 180)
                ScrollView {
                    VStack(spacing: 30){
                        
                        Group {
                            RowField(field: "First Name", value: "Peter")
                            RowField(field: "Last Name", value: "Parker")
                            RowField(field: "USN", value: "1DS19IS023")
                            RowField(field: "Branch", value: "ISE")
                            RowField(field: "Year", value: "2023")
                            RowField(field: "DOB", value: "11-03-2000")
                            RowField(field: "Gender", value: "M")
                            RowField(field: "Hobbies", value: "In my pastime I love to play football and read books.")
                        }
                        
                        
                        Text("Family Background:")
                            .font(.system(size: 28, weight: .semibold, design: .monospaced))
                            .padding(.top)
                            .frame(maxWidth: screen.width, alignment: .leading)
                            .padding(.leading, 25)
                        
                        Group {
                            RowField(field: "Father's Name", value: "Ben Parker")
                            RowField(field: "Father's Occupation", value: "Doctor")
                            RowField(field: "Mother's Name", value: "May Parker")
                            RowField(field: "Mother's Occupation", value: "Housewife")
                            
                        }
                        
                        VStack{
                            
                        }
                        .frame(height: 50) 
                        
                    }
                    .padding(.top)
                }
            }
            
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeView(show: .constant(true))
    }
}

struct RowField: View {
    var field: String
    var value: String
    
    var body: some View {
        HStack() {
            Text("\(field):")
                .font(.system(size: 25, weight: .medium, design: .default))
            Text(value)
                .font(.system(size: 20, weight: .regular, design: .serif))
        }
        .frame(width: screen.width , alignment: .leading)
        .padding(.leading, 50)
    }
}
