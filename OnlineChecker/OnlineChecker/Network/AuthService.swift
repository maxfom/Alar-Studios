//
//  AuthService.swift
//  OnlineChecker
//
//  Created by Максим Фомичев on 06.10.2021.
//

import Foundation
import SwiftyJSON

class AuthService {
    
    private let networkService = NetworkService()
    
    private enum Spec {
        static let scheme = "http"
        static let host = "www.alarstudios.com"
        static let appId = ""
    }
    
    enum Endpoint: String {
        case authCall = "/test/auth.cgi"
        case dataCall = "/test/data.cgi"
    }
    
    func defaultParameters() -> [String: String] {
        [
            "appid": Spec.appId,
        ]
    }
    
    @discardableResult
    func sendRequest(endpoint: Endpoint, parameters: [String: String], completion: @escaping (Result<JSON, Error>) -> Void) -> URLSessionDataTask? {
        var components = URLComponents()
        components.scheme = Spec.scheme
        components.host = Spec.host
        components.path = endpoint.rawValue
        let parametersDict = defaultParameters().merging(parameters) { (_, new) in new }
        components.queryItems = parametersDict.map { key, value in
            URLQueryItem(name: key, value: value)
        }
        guard let url = components.url else {
            completion(.failure(AuthParsingError.invalidURL))
            return nil
        }
        let request = URLRequest(url: url)
        let task = networkService.sendRequest(request: request, completion: completion)
        task.resume()
        return task
    }

    
}
