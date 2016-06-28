//
//  TabRepliesViewCell.swift
//  v2ex
//
//  Created by ellipse42 on 15/8/16.
//  Copyright (c) 2015年 ellipse42. All rights reserved.
//

import UIKit
import ActiveLabel

class TabRepliesViewCell: UITableViewCell {
    
    lazy var content: ActiveLabel = {
        return Factory.createActiveLabel()
    }()
    
    lazy var username: UILabel = {
        return Factory.createBasicLabel()
    }()
    
    lazy var created: UILabel = {
        return Factory.createBasicLabel()
    }()
    
    lazy var avatar: UIImageView = {
        let v = UIImageView()
        v.backgroundColor = UIColor.blackColor()
        v.layer.masksToBounds = false
        v.layer.cornerRadius = 15
        v.clipsToBounds = true
        return v
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        for v in [content, username, created, avatar] {
            contentView.addSubview(v)
        }
        
        avatar.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(contentView).offset(5)
            make.left.equalTo(contentView).offset(30)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        username.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(content.snp_bottom).offset(5)
            make.left.equalTo(contentView).offset(10)
        }
        
        created.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(content.snp_bottom).offset(5)
            make.left.equalTo(username.snp_right).offset(5)
        }
        
        content.snp_makeConstraints { (make) -> Void in            
            make.top.equalTo(avatar.snp_bottom).offset(5)
            make.bottom.equalTo(contentView).offset(-20)
            make.left.equalTo(contentView).offset(10)
            make.right.equalTo(contentView).offset(-10)
        }
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.blackColor().CGColor)
        CGContextSetLineWidth(context, 1.0)
        CGContextMoveToPoint(context, 10, 20)
        CGContextAddLineToPoint(context, contentView.frame.width - 10, 20)
        CGContextStrokePath(context)
    }
}
