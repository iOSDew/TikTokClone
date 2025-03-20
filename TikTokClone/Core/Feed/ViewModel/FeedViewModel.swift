//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Khojimurod Sultonov on 17/03/25.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoUrls = [
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
        "https://videocdn.cdnpk.net/joy/content/video/free/2014-12/large_preview/Raindrops_Videvo.mp4?",
    ]
    
    init() {
        fetchPosts()
    }
    
//    func fetchPosts() {
//        self.posts = [
//            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0]),
//            .init(id: NSUUID().uuidString, videoUrl: videoUrls[1]),
//            .init(id: NSUUID().uuidString, videoUrl: videoUrls[2])
//        ]
//    }
    
    func fetchPosts() {
        
        videoUrls.forEach { url in
                let post = Post(id: NSUUID().uuidString, videoUrl: url)
                posts.append(post)
            }
        }

}
