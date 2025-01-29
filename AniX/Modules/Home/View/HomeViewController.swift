//
//  HomeViewController.swift
//  AniX
//
//  Created by Sravan Goud on 24/01/25.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let headerView = UIView()
    let contentLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(headerView)
        view.addSubview(contentLabel)
        
        headerView.backgroundColor = .blue
        contentLabel.backgroundColor = .red
        
        headerView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.left.right.equalToSuperview()
            make.height.equalTo(60)
        }
        
        contentLabel.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(20)
        }
    }

}
