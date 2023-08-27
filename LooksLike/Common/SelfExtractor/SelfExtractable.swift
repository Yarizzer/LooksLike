//
//  SelfExtractable.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 27.08.2023.
//

import Foundation

protocol SelfExtractable: NSObject { }

extension SelfExtractable {
  typealias BasicCall = (Self) -> ()
  typealias BasicResponse = () -> ()
  typealias DataCall<T> = (Self, T) -> ()
  typealias DataResponse<T> = (T) -> ()
  
  func extractSelf(code: @escaping BasicCall) -> BasicResponse {
    { [weak self] in
      guard let sSelf = self else { return }

      code(sSelf)
    }
  }
  
  func extractSelf<T>(_ code: @escaping DataCall<T>) -> DataResponse<T> {
    { [weak self] data in
      guard let sSelf = self else { return }
      
      code(sSelf, data)
    }
  }
}
