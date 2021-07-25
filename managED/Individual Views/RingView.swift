//
//  RingView.swift
//  managED
//
//  Created by Aryan Shrivastava on 23/07/21.
//
import SwiftUI

struct RingView: View {
    var color1 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    var color2 = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    var width: CGFloat = 300
    var height: CGFloat = 300
    var percent: CGFloat = 88
    @Binding var show: Bool 
    
    var body: some View {
        let multiplier = width/44
        //intially width and height was set to 44 so to change the size of the ring view, it must be increased/decreased by that factor
        let progress = 1 - (percent/100)
        
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5 * multiplier))
                .frame(width: width, height: height)
            
            Circle()
                .trim(from: show ? progress : 1, to: 1.0)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    ,
                        style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,1], dashPhase: 0)
                )
                .animation(.easeInOut.delay(0.3))
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(
                    Angle(degrees: 180),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                )
                .frame(width: width, height: height)
                .shadow(color: Color(color2).opacity(0.3), radius: 3 * multiplier, x: 0, y: 3 * multiplier)
                
                
            
            Text("\(Int(percent))%")
                .font(.system(size: 14 * multiplier))
                .fontWeight(.bold)
//                .onTapGesture {
//                    show.toggle()
//                }
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(show: .constant(true))
    }
}
