//
//  AuthManager.swift
//  Spotify Clone - Swift
//
//  Created by Ömer Faruk Kılıçaslan on 25.06.2022.
//

import Foundation


final class AuthManager {
    
    static let shared = AuthManager()
    
    struct Constants {
        static let clientId = "a07f2c08db4d495698c7808edd3f54f0"
        static let clientSecret = "e8453967567e491098eca1e73c00e16d"

    }
    
    private init() { }
    
    public var signInURL: URL? {
        
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientId)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken:Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void) {
        //Get Token
        
    }
    
    public func refreshAccessToken() {
        
        
    }
    
    private func cacheToken() {
        
        
    }
}
