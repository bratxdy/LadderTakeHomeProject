//
//  CachableAsyncImage.swift
//  Ladder
//
//  Created by Brady Miller on 2/5/25.
//

import Creed_Lite
import SwiftUI

struct CachedAsyncImage<Content>: View where Content: View {
    @State var phase: AsyncImagePhase
    var imageFetcher: ImageFetching = ImageFetcher(imageCache: ImageCache(cache: URLCache(memoryCapacity: 512*1024*1024, diskCapacity: 10*1024*1024*1024)), session: URLSession.shared)
    
    let url: URL?
    let content: (AsyncImagePhase) -> Content
    
    init(url: URL?, @ViewBuilder content: @escaping (AsyncImagePhase) -> Content) {
        self.url = url
        self.content = content
        
        self._phase = State(wrappedValue: .empty)
    }
    
    init<I, P>(url: URL?, @ViewBuilder content: @escaping (Image) -> I, @ViewBuilder placeholder: @escaping () -> P) where Content == _ConditionalContent<I, P>, I : View, P : View {
        self.init(url: url) { phase in
            if let image = phase.image {
                content(image)
            } else {
                placeholder()
            }
        }
    }
    
    var body: some View {
        content(phase)
        .task {
            await loadImage()
        }
    }
    
    @Sendable
    func loadImage() async {
        guard let url else {
            phase = .failure(ImageError())
            return
        }
        
        do {
            let uiImage = try await imageFetcher.fetchImage(url: url)
            let image = Image(uiImage: uiImage)
            phase = .success(image)
        } catch {
            phase = .failure(error)
        }
    }
}
