//
//  YYRoto.swift
//  YYRotoSwift
//
//  Created by mac on 16/5/18.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

import UIKit

class YYRoto: UIView
{

    @IBOutlet weak var YYView: UIView!
    @IBOutlet weak var roto: UIImageView!
    @IBOutlet weak var loading: UIImageView!
    
    override func awakeFromNib()
    {
        self.frame = UIScreen.mainScreen().bounds
        self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.1)
        YYView.layer.cornerRadius = 15.0
        
        roto.animationImages = [UIImage(named: "1")!,
                                UIImage(named: "2")!,
                                UIImage(named: "3")!,
                                UIImage(named: "4")!,
                                UIImage(named: "5")!,
                                UIImage(named: "6")!,
                                UIImage(named: "7")!,
                                UIImage(named: "8")!,
                                UIImage(named: "9")!]
        roto.animationDuration = 1.0
        roto.animationRepeatCount = -1
        roto.startAnimating()
        
        loading.animationImages = [ UIImage(named: "loading01")!,
                                    UIImage(named: "loading02")!,
                                    UIImage(named: "loading03")!,
                                    UIImage(named: "loading04")!,
                                    UIImage(named: "loading05")!]
        loading.animationDuration = 1.0
        loading.animationRepeatCount = -1
        loading.startAnimating()
        
    }
    
    internal class func instantiateFromNib() -> YYRoto{
        return (NSBundle.mainBundle().loadNibNamed(String(self), owner: nil, options: nil).first as? YYRoto)!
    }
    
    func show()
    {
        UIApplication.sharedApplication().keyWindow?.rootViewController?.view .addSubview(self)
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            
            }) { (Bool finished) -> Void in
                
        }
    }
    
    func close()
    {
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64( 2 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            
            UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
                
                }) { (Bool finished) -> Void in
                    self.roto.stopAnimating()
                    self.loading.stopAnimating()
                    self.removeFromSuperview()
            }
        }
        
    }
    
}
