//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by Olha Hladush on 12/29/22.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image:String
    var title:String
    var description:String
    var count:String
    var time:String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                
            HStack {
                
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(title)
                        .bold()
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.system(size: 10))
                    
                    HStack {
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(.system(size: 10))
                        
                        Spacer()
                        
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(.system(size: 10))
                    }
                }.padding(.leading, 20)
                
            }
            .padding(.horizontal, 20)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "Swift", title: "Learn Swift", description: "some descriptoon", count: "count", time: "time")
    }
}
