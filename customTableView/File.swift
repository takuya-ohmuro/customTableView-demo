//
//  File.swift
//  customTableView
//
//  Created by 大室拓也 on 2018/04/05.
//  Copyright © 2018年 taku9321. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    var mainimage : UIImage?
    var messege : String?
    
    
    var messeageView : UITextView  = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
        }()
    
    var mainImageView : UIImageView = {
       var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImageView)
        self.addSubview(messeageView)
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.messeageView.topAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        messeageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        messeageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messeageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let message = messege {
            messeageView.text = message
        }
        if let image = mainimage {
            mainImageView.image = image
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
