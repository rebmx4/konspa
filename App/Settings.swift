import WebKit

struct Cookie {
    var name: String
    var value: String
}

// Стартовый URL — PWA «Конспа» (ASR Аналитик встреч).
let rootUrl = URL(string: "https://rynpro.ru/asr/")!

// Домены, остающиеся внутри WebView. Должны совпадать с WKAppBoundDomains в Info.plist.
let allowedOrigins: [String] = ["rynpro.ru"]

// Сторонний вход (Apple/Google) НЕ используется — вход только email+пароль.
let authOrigins: [String] = []
// allowedOrigins + authOrigins <= 10

let platformCookie = Cookie(name: "app-platform", value: "iOS App Store")

// UI options
let displayMode = "standalone"
let adaptiveUIStyle = true
let overrideStatusBar = false
let statusBarTheme = "dark"
let pullToRefresh = true
