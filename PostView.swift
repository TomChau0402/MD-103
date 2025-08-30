//
//  PostView.swift
//  103 Course
//

//

import SwiftUI

class PostModel: ObservableObject {
    @Published var likeCount: Int
    @Published var caption: String
    
    let imagename: String, date: String
    init(caption: String, imageName:String, date:String, likeCount : Int = 0){
        self.caption = caption
        self.imagename = imageName
        self.date = date
        self.likeCount = likeCount
        
        
        
}
    }
struct PostView: View {
    @State private var isLike = false
    @ObservedObject var post: PostModel
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            
            
            HStack {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                Text("my.username")
            }
            Image("assets1")
                .resizable()
                .aspectRatio(2/3, contentMode: .fill)
                .frame(width: .infinity)
            
            HStack {
                LikeButton(isLike: $isLike)
                Text("\(post.likeCount)")
                    .padding(.leading)
                
            }
            Text(post.caption)
                .font(.headline)
            Text(post.date)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
        .padding()
        .onChange(of: isLike) {
            if isLike{ post.likeCount += 1
            } else {post.likeCount = max(0, post.likeCount - 1    )
            }
        }
    }
}

struct LikeButton: View {
    @Binding var isLike: Bool
    
    var body: some View {
        Button(action: {
            isLike.toggle()
        }){
            Image(systemName: isLike ? "heart.fill" : "heart")
                .foregroundStyle(isLike ? .red : .gray)
                .imageScale(.large)
        }
    }
}

#Preview{
let newPost = PostModel(caption: "Having good Time! # Somehting # blaha",
    imageName: "assets1",
    date: "May 31"
)
PostView(post:newPost)
}
