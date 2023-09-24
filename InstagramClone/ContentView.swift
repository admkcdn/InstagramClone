//
//  ContentView.swift
//  InstagramClone
//
//  Created by Adem Koçdoğan on 24.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HomeStoriesView()
            
            Divider()
            
            PostHeaderView()
            
            PostContentView()
            
//
            Spacer()
        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack{
            Image("splash")
                .resizable()
                .scaledToFit()
                .frame(height: 48)
            
            Spacer()
            
            HStack{
                Image(systemName: "plus")
                Image(systemName: "heart")
                Image(systemName: "message")
            }
            .font(.system(size: 24))
        }
        .padding(.vertical,16)
        .padding(.horizontal,8)
    }
}

struct StoryView: View {
    
    var image: String
    var name: String
    
    init(image: String, name: String) {
        self.image = image
        self.name = name
    }
    
    var body: some View {
        VStack{
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(60)
                    .overlay(
                        Circle()
                            .stroke(
                                .linearGradient(colors: [.blue,.purple,.red,.pink,.yellow,.orange], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth: 2.5
                            )
                            .frame(width: 68,height: 68)
                    )
                
            }
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct HomeStoriesView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing:16){
                StoryView(image: "koray",name: "Koray Birand")
                StoryView(image: "verstappen",name: "Verstappen")
                StoryView(image: "koray",name: "Koray Birand")
                StoryView(image: "verstappen",name: "Verstappen")
                StoryView(image: "koray",name: "Koray Birand")
                StoryView(image: "verstappen",name: "Verstappen")
                
            }.padding(.horizontal,8)
            
        }
        .padding(.vertical,12)
    }
}

struct PostHeaderView: View {
    var body: some View {
        HStack{
            HStack{
                Image("koray")
                    .resizable()
                    .frame(width: 40,height: 40)
                    .cornerRadius(40)
                Text("Koray Birand")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .padding(.vertical,12)
            .padding(.horizontal,12)
        }
    }
}

struct PostContentView: View {
    var body: some View {
        VStack{
            Image("rb")
                .resizable()
                .frame(width: .infinity,height: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "envelope")
                }
                Spacer()
                
                Image(systemName: "bookmark")
            }
            .font(.system(size: 24))
            .padding(.horizontal,8)
            .padding(.vertical, 8)
        }
    }
}
