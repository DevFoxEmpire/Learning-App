//
//  QuestionsView.swift
//  LearningApp
//
//  Created by Olha Hladush on 12/29/22.
//

import SwiftUI

struct QuetionView: View {
    var title:String
    var video:String
    var time: String
    var number: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .aspectRatio(CGSize(width: 150, height: 50), contentMode: .fit)
                
            HStack{
                Text(number)
                    .font(.system(size: 30, weight: .medium))
                    .padding(.trailing, 30)
                VStack(alignment: .leading, spacing: 10) {
                    Text(title)
                        .font(.system(size: 20, weight: .medium))
                    HStack {
                        Text(video)
                        Text(time)
                    }
                }
            }.padding(.horizontal, 20)
        }.padding()
    }
}

struct QuetionView_Previews: PreviewProvider {
    static var previews: some View {
        QuetionView(title: "Constant and Variable", video: "Video", time: "17 minutes", number: "1")
    }
}
