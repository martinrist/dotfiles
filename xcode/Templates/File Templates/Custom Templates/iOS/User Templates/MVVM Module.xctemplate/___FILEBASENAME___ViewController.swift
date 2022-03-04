//___FILEHEADER___

import Combine
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    private var subscriptions = Set<AnyCancellable>()
    
    private let contentView: ___VARIABLE_productName:identifier___View
    
    let viewModel: ___VARIABLE_productName:identifier___ViewModel
    
    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.contentView = ___VARIABLE_productName:identifier___View()
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = contentView
        setupUI()
        bindView()
        bindViewModel()
    }
    
    private func setupUI() {
//        contentView.tableView.delegate = self
    }

    private func bindView() {
//        contentView.publisher(for: .touchUpInside)
//            .sink { [weak self] _ in {} }
//            .store(in: &subscriptions)
    }

    private func bindViewModel() {
//        viewModel.pushSavedLinksPublisher
//            .receive(on: DispatchQueue.main)
//            .sink(receiveValue: { [weak self] in {} })
//            .store(in: &subscriptions)
    }
}

// TODO: Add to ViewControllerFactory, change uppercase in func to lowercase
func ___VARIABLE_productName:identifier___VC() -> ___VARIABLE_productName:identifier___ViewController {
    let viewModel = ___VARIABLE_productName:identifier___ViewModel()
    return ___VARIABLE_productName:identifier___ViewController(viewModel: viewModel)
}
