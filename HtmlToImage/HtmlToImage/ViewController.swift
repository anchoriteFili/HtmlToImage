//
//  ViewController.swift
//  HtmlToImage
//
//  Created by zetafin on 2018/10/30.
//  Copyright © 2018 赵宏亚. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 尺寸设置
    let HEIGHT = UIScreen.main.bounds.size.height
    let WIDTH = UIScreen.main.bounds.size.width

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let htmlImageView = HtmlToImageViewTool.newInstance()
        htmlImageView?.frame = CGRect(x: 0, y: 0, width: WIDTH, height: HEIGHT)
        
        self.view.addSubview(htmlImageView!)
        htmlImageView?.setUrl(url: "https://anchoritefiligod.gitee.io/blogs/2017/12/19/WKWebView%E5%BF%AB%E9%80%9F%E5%88%9B%E5%BB%BA/")
    }


}

