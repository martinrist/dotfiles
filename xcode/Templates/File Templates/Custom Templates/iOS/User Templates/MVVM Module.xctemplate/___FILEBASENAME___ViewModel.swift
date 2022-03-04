//___FILEHEADER___

import Combine
import Foundation

class ___FILEBASENAMEASIDENTIFIER___ {
    private let someSubject = PassthroughSubject<Void, Never>()
    lazy var somePublisher = someSubject.eraseToAnyPublisher()
    
    init() {}
}
