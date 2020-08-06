import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Blog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    let url = URL(string: "https://markiv.github.io")!
    let name = "Swifterland"
    let description = "My musings on Swift, iOS, SwiftUI and all things related."
    let language = Language.english
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Blog().publish(
    withTheme: .foundation,
    deployedUsing: .gitHub("markiv/markiv.github.io", useSSH: true)
)
