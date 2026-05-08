# Baklava iOS SDK

A black-box network mocking SDK for iOS. Mock API responses from the Baklava dashboard — no changes to your app's networking code required.

## Requirements

- iOS 16.0+
- Xcode 16.0+
- Swift 5.9+

## Installation

### Swift Package Manager

1. Open your Xcode project
2. Go to **File → Add Package Dependencies**
3. Enter the repository URL:
   ```
   https://github.com/TerraceApps/baklava-ios-sdk
   ```
4. Select **BaklavaSDK** as the product to add to your target

## Setup

Call `configure` once at app start, before any network requests:

```swift
import BaklavaSDK

@main
struct MyApp: App {
    init() {
        #if DEBUG
        Baklava.configure(projectKey: "YOUR_PROJECT_KEY")
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

Your project key is available on the Baklava dashboard.

## Usage

### URLSession

Use `Baklava.session` as a drop-in replacement for `URLSession.shared`:

```swift
import BaklavaSDK

let (data, _) = try await Baklava.session.data(from: url)
```

Or inject the configuration into your own session:

```swift
let session = URLSession(configuration: Baklava.sessionConfiguration)
```

### Alamofire

```swift
import BaklavaSDK
import Alamofire

let af = Session(configuration: Baklava.sessionConfiguration)
af.request(url).responseDecodable(of: MyModel.self) { response in ... }
```

### Moya

```swift
import BaklavaSDK
import Moya
import Alamofire

let provider = MoyaProvider<MyAPI>(
    session: Session(configuration: Baklava.sessionConfiguration)
)
```

## Debug Panel

Present `BaklavaDebugView` to browse and toggle active scenarios at runtime:

```swift
import BaklavaSDK

.sheet(isPresented: $showDebug) {
    BaklavaDebugView()
}
```

## How It Works

1. `Baklava.configure()` starts polling `GET /sdk/scenarios` every 5 seconds
2. Active scenarios are cached locally on-device
3. Every outgoing `URLSession` request is evaluated by `BaklavaURLProtocol`
4. If an active scenario matches the request's method + path → mock response is returned
5. Everything else passes through to the real server unchanged

The SDK is fully transparent. Only explicitly activated scenarios are mocked.

## License

MIT License — see [LICENSE](LICENSE) for details.
