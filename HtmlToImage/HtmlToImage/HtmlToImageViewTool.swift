//
//  HtmlToImageViewTool.swift
//  HtmlToImage
//
//  Created by zetafin on 2018/10/30.
//  Copyright © 2018 赵宏亚. All rights reserved.
//

import UIKit
import WebKit

class HtmlToImageViewTool: UIView {
    
    // 创建webview
    @IBOutlet weak var webview: WKWebView!
    @IBOutlet weak var shareButton: UIButton!
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    
    var contentController: WKUserContentController = WKUserContentController()
    
    
    static func newInstance() -> HtmlToImageViewTool?{
        let nibView = Bundle.main.loadNibNamed("HtmlToImageViewTool", owner: nil, options: nil)
        if let view = nibView?.first as? HtmlToImageViewTool{
            return view
        }
        return nil
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        load_init()
    }
    
    func load_init(){
        
        
    }
    
    // 初始化url
    func setUrl(url: String) {
        
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        webview.load(myRequest)
    }
    
    // 分享按钮点击
    @IBAction func shareButtonClick(_ sender: UIButton) {
        
        self.imageview.image = getImageFromView(view: webview.scrollView)
    }
    
    //    将某个view 转换成图像
    func getImageFromView(view:UIView) ->UIImage{
        
        UIGraphicsBeginImageContext(view.bounds.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
