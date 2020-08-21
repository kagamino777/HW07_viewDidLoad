//
//  ViewController.swift
//  0804_viewDidLoadandArray
//
//  Created by JaBa CHIA on 2020/8/4.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    // Plurk畫圖路徑＆變形function
    func addPlurkView(moveX: CGFloat, moveY: CGFloat, rotateDegree: CGFloat, scale: CGFloat,fillAlpha: Float){
        let plurkLogo = CGRect(x: 0, y: 0, width: 200, height: 100)
        let logoView = UIView(frame: plurkLogo)
        let oneDegree = CGFloat.pi / 180
        
        // Plurk Logo Path
        let logoPath = UIBezierPath()
        // PLURK - P
        logoPath.move(to: CGPoint(x: 156.73, y: 128.07))
        logoPath.addQuadCurve(to: CGPoint(x: 178.18, y: 160.43), controlPoint: CGPoint(x: 186.55 , y: 138.6))
        logoPath.addQuadCurve(to: CGPoint(x: 153.84, y: 175.68), controlPoint: CGPoint(x: 173.63 , y: 174.77))
        logoPath.addQuadCurve(to: CGPoint(x: 148.62, y: 182.63), controlPoint: CGPoint(x: 147.07 , y: 176.4))
        logoPath.addLine(to: CGPoint(x: 152.06, y: 204.47))
        logoPath.addQuadCurve(to: CGPoint(x: 147.2, y: 214.42), controlPoint: CGPoint(x: 153.11 , y: 209.59))
        logoPath.addQuadCurve(to: CGPoint(x: 142.38, y: 215), controlPoint: CGPoint(x: 145.15 , y: 215.82))
        logoPath.addQuadCurve(to: CGPoint(x: 127.67, y: 146.37), controlPoint: CGPoint(x: 127.75 , y: 207.31))
        logoPath.addQuadCurve(to: CGPoint(x: 156.73, y: 128.07), controlPoint: CGPoint(x: 131.56 , y: 119.18))
        // P挖空
        logoPath.move(to: CGPoint(x: 147.77, y: 141.91))
        logoPath.addQuadCurve(to: CGPoint(x: 153.82, y: 145.67), controlPoint: CGPoint(x: 152.47 , y: 141.9))
        logoPath.addQuadCurve(to: CGPoint(x: 150.4, y: 156.44), controlPoint: CGPoint(x: 156.76 , y: 153.73))
        logoPath.addQuadCurve(to: CGPoint(x: 142.69, y: 154.9), controlPoint: CGPoint(x: 144.83 , y: 158.56))
        logoPath.addQuadCurve(to: CGPoint(x: 142.81 , y: 145.32), controlPoint: CGPoint(x: 140.32 , y: 150.61))
        logoPath.addQuadCurve(to: CGPoint(x: 147.77, y: 141.91), controlPoint: CGPoint(x: 144.19 , y: 141.9))
                
        // PLURK - L
        logoPath.move(to: CGPoint(x: 170.65, y: 173.55))
        logoPath.addQuadCurve(to: CGPoint(x: 174.68, y: 176.28), controlPoint: CGPoint(x: 174.11 , y: 173.74))
        logoPath.addCurve(to: CGPoint(x: 175.78, y: 197.69), controlPoint1: CGPoint(x: 175.33, y: 179.43), controlPoint2: CGPoint(x: 174.11, y: 192.02))
        logoPath.addQuadCurve(to: CGPoint(x: 183.06, y: 204.03), controlPoint: CGPoint(x: 177.39 , y: 203.08))
        logoPath.addQuadCurve(to: CGPoint(x: 188.78, y: 208.53), controlPoint: CGPoint(x: 186.17 , y: 204.51))
        logoPath.addQuadCurve(to: CGPoint(x: 185.22, y: 214.03), controlPoint: CGPoint(x: 192.14 , y: 213.8))
        logoPath.addQuadCurve(to: CGPoint(x: 164.22, y: 204.6), controlPoint: CGPoint(x: 165.31 , y: 215))
        logoPath.addQuadCurve(to: CGPoint(x: 165.86, y: 175.59), controlPoint: CGPoint(x: 161.75 , y: 180.86))
        logoPath.addQuadCurve(to: CGPoint(x: 170.65, y: 173.55), controlPoint: CGPoint(x: 167.63 , y: 173.3))
        logoPath.close()
                
        // PLURK - U
        logoPath.move(to: CGPoint(x: 213.04, y: 147.71))
        logoPath.addQuadCurve(to: CGPoint(x: 221.24, y: 157), controlPoint: CGPoint(x: 222.15 , y: 147.71))
        logoPath.addQuadCurve(to: CGPoint(x: 215.46, y: 193.45), controlPoint: CGPoint(x: 219.22 , y: 179.43))
        logoPath.addQuadCurve(to: CGPoint(x: 199.54, y: 205.1), controlPoint: CGPoint(x: 212.59 , y: 205.1))
        logoPath.addQuadCurve(to: CGPoint(x: 183.49, y: 192.3), controlPoint: CGPoint(x: 186.17 , y: 204.51))
        logoPath.addQuadCurve(to: CGPoint(x: 184.03, y: 157.71), controlPoint: CGPoint(x: 175.33 , y: 167.9))
        logoPath.addQuadCurve(to: CGPoint(x: 189.36, y: 156.42), controlPoint: CGPoint(x: 186.17 , y: 155.79))
        logoPath.addQuadCurve(to: CGPoint(x: 193.44, y: 160), controlPoint: CGPoint(x: 193.21 , y: 156.73))
        logoPath.addCurve(to: CGPoint(x: 196.52, y: 185.31), controlPoint1: CGPoint(x: 194.34, y: 166.02), controlPoint2: CGPoint(x: 195.56, y: 183.1))
        logoPath.addQuadCurve(to: CGPoint(x: 200.49, y: 187.88), controlPoint: CGPoint(x: 197.58 , y: 187.87))
        logoPath.addQuadCurve(to: CGPoint(x: 203.59, y: 185.08), controlPoint: CGPoint(x: 203.1 , y: 188.07))
        logoPath.addQuadCurve(to: CGPoint(x: 204.59, y: 157.08), controlPoint: CGPoint(x: 205.62 , y: 173.15))
        logoPath.addQuadCurve(to: CGPoint(x: 213.04, y: 147.71), controlPoint: CGPoint(x: 204.34 , y: 147.71))
        logoPath.close()
                
        // PLURK - R
        logoPath.move(to: CGPoint(x: 228.19, y: 154.54))
        logoPath.addQuadCurve(to: CGPoint(x: 256.49, y: 156.46), controlPoint: CGPoint(x: 243.22 , y: 145.16))
        logoPath.addQuadCurve(to: CGPoint(x: 246.21, y: 182.08), controlPoint: CGPoint(x: 267.88 , y: 165.56))
        logoPath.addQuadCurve(to: CGPoint(x: 246.26, y: 185.4), controlPoint: CGPoint(x: 243.67 , y: 183.69))
        logoPath.addLine(to: CGPoint(x: 262.84, y: 196.88))
        logoPath.addQuadCurve(to: CGPoint(x: 263.15, y: 208.25), controlPoint: CGPoint(x: 271.26 , y: 202.6))
        logoPath.addQuadCurve(to: CGPoint(x: 253.48, y: 208.74), controlPoint: CGPoint(x: 258.37 , y: 212.1))
        logoPath.addLine(to: CGPoint(x: 245.05, y: 203.06))
        logoPath.addQuadCurve(to: CGPoint(x: 241.46, y: 204.41), controlPoint: CGPoint(x: 242 , y: 200.93))
        logoPath.addLine(to: CGPoint(x: 240.42, y: 210.21))
        logoPath.addQuadCurve(to: CGPoint(x: 228.54, y: 216.62), controlPoint: CGPoint(x: 238.64 , y: 219.87))
        logoPath.addQuadCurve(to: CGPoint(x: 223.83, y: 210.55), controlPoint: CGPoint(x: 224.35 , y: 215.22))
        logoPath.addCurve(to: CGPoint(x: 224.06, y: 195.56), controlPoint1: CGPoint(x: 223.27, y: 205.61), controlPoint2: CGPoint(x: 224.2, y: 200.55))
        logoPath.addCurve(to: CGPoint(x: 222.75, y: 179.07), controlPoint1: CGPoint(x: 223.92, y: 190.38), controlPoint2: CGPoint(x: 222.1, y: 183.81))
        logoPath.addCurve(to: CGPoint(x: 225.7, y: 159.17), controlPoint1: CGPoint(x: 223.14, y: 176.15), controlPoint2: CGPoint(x: 225.12, y: 167.37))
        logoPath.addQuadCurve(to: CGPoint(x: 228.19, y: 154.54), controlPoint: CGPoint(x: 225.96 , y: 155.81))
        logoPath.close()
        // R挖空
        logoPath.move(to: CGPoint(x: 241.96, y: 162.37))
        logoPath.addQuadCurve(to: CGPoint(x: 246.14, y: 162.7), controlPoint: CGPoint(x: 244.3 , y: 160.46))
        logoPath.addQuadCurve(to: CGPoint(x: 246.87, y: 165.46), controlPoint: CGPoint(x: 247.1 , y: 163.82))
        logoPath.addQuadCurve(to: CGPoint(x: 243.09, y: 167.89), controlPoint: CGPoint(x: 246.53 , y: 167.9))
        logoPath.addQuadCurve(to: CGPoint(x: 240.82, y: 164.79), controlPoint: CGPoint(x: 240.49 , y: 168.12))
        logoPath.addQuadCurve(to: CGPoint(x: 241.96, y: 162.37), controlPoint: CGPoint(x: 240.81 , y: 163.21))
        logoPath.close()
                
        // PLURK - K
        logoPath.move(to: CGPoint(x: 259.25, y: 148.03))
        logoPath.addQuadCurve(to: CGPoint(x: 263.22, y: 144.01), controlPoint: CGPoint(x: 259.96 , y: 145.16))
        logoPath.addQuadCurve(to: CGPoint(x: 269.05, y: 145.64), controlPoint: CGPoint(x: 267.5 , y: 142.93))
        logoPath.addLine(to: CGPoint(x: 276.37, y: 159.51))
        logoPath.addQuadCurve(to: CGPoint(x: 280.22, y: 159.92), controlPoint: CGPoint(x: 277.99 , y: 162.02))
        logoPath.addLine(to: CGPoint(x: 285.43, y: 154.51))
        logoPath.addQuadCurve(to: CGPoint(x: 298.29, y: 150.35), controlPoint: CGPoint(x: 292.74 , y: 147.11))
        logoPath.addQuadCurve(to: CGPoint(x: 299.29, y: 162.35), controlPoint: CGPoint(x: 304.21 , y: 153.5))
        logoPath.addLine(to: CGPoint(x: 292.17, y: 174.57))
        logoPath.addQuadCurve(to: CGPoint(x: 298.66, y: 186.39), controlPoint: CGPoint(x: 287.33 , y: 182.83))
        logoPath.addQuadCurve(to: CGPoint(x: 310.64, y: 196.58), controlPoint: CGPoint(x: 312.7 , y: 187.52))
        logoPath.addQuadCurve(to: CGPoint(x: 300.78, y: 201.89), controlPoint: CGPoint(x: 308.83 , y: 203.21))
        logoPath.addQuadCurve(to: CGPoint(x: 289.68, y: 207.1), controlPoint: CGPoint(x: 288.94 , y: 200.29))
        logoPath.addQuadCurve(to: CGPoint(x: 283.35, y: 214.73), controlPoint: CGPoint(x: 289.26 , y: 215.04))
        logoPath.addQuadCurve(to: CGPoint(x: 271.35, y: 207.73), controlPoint: CGPoint(x: 271.79 , y: 214.43))
        logoPath.addQuadCurve(to: CGPoint(x: 267.54, y: 189.14), controlPoint: CGPoint(x: 270.13 , y: 198.78))
        logoPath.addQuadCurve(to: CGPoint(x: 264.54, y: 162.14), controlPoint: CGPoint(x: 266.49 , y: 165.51))
        logoPath.addQuadCurve(to: CGPoint(x: 259.25, y: 148.03), controlPoint: CGPoint(x: 258.86 , y: 149.66))
        logoPath.close()
                
        // PLURK - .
        logoPath.move(to: CGPoint(x: 318.45, y: 202.81))
        logoPath.addQuadCurve(to: CGPoint(x: 320.41, y: 203.62), controlPoint: CGPoint(x: 319.19 , y: 202.84))
        logoPath.addQuadCurve(to: CGPoint(x: 319.82, y: 211.56), controlPoint: CGPoint(x: 324.89 , y: 207.27))
        logoPath.addQuadCurve(to: CGPoint(x: 319.04, y: 211.79), controlPoint: CGPoint(x: 319.42 , y: 211.71))
        logoPath.addQuadCurve(to: CGPoint(x: 313.63, y: 207.56), controlPoint: CGPoint(x: 314.1 , y: 212.72))
        logoPath.addQuadCurve(to: CGPoint(x: 318.45, y: 202.81), controlPoint: CGPoint(x: 313.14 , y: 202.47))
        logoPath.close()
                
        // Plurk Logo Layer
        let logoLayer = CAShapeLayer()
        logoLayer.path = logoPath.cgPath
        logoLayer.fillRule = CAShapeLayerFillRule.evenOdd // 中空語法
        logoLayer.fillColor = UIColor.white.cgColor
        logoLayer.opacity = fillAlpha
        logoView.layer.addSublayer(logoLayer)
        
        // 變形（帶入function參數做出不同大小位置）
        logoView.transform = CGAffineTransform.identity.translatedBy(x: moveX, y: moveY).scaledBy(x: scale, y: scale).rotated(by: oneDegree * rotateDegree)//把function參數代入transform值的欄位中
        view.addSubview(logoView)
    }
    
    
    // 愛心線條動畫function
    func addHeartAnimation(translateX: CGFloat, translateY: CGFloat, rotateDegree: CGFloat, scale: CGFloat, animationStartEnd: String){
        // 愛心Path
        let heartPath = UIBezierPath()
        heartPath.move(to: CGPoint(x: 156.7, y: 42.6))
        heartPath.addQuadCurve(to: CGPoint(x: 150.81, y: 45.28), controlPoint: CGPoint(x: 151.3 , y: 38.67))
        heartPath.addQuadCurve(to: CGPoint(x: 158.57, y: 54.32), controlPoint: CGPoint(x: 151.01 , y: 52.3))
        heartPath.addCurve(to: CGPoint(x: 160.33, y: 50.24), controlPoint1: CGPoint(x: 160.3, y: 54.79), controlPoint2: CGPoint(x: 158.21, y: 52.93))
        heartPath.addQuadCurve(to: CGPoint(x: 159.43, y: 41.34), controlPoint: CGPoint(x: 166.43 , y: 42.03))
        heartPath.addCurve(to: CGPoint(x: 156.7, y: 42.6), controlPoint1: CGPoint(x: 157.65, y: 41.4), controlPoint2: CGPoint(x: 157, y: 42.86))
        // path變形（帶入function參數做出不同大小位置）
        heartPath.apply(CGAffineTransform(translationX: translateX, y: translateY))
        heartPath.apply(CGAffineTransform(scaleX: scale, y: scale))
        heartPath.apply(CGAffineTransform(rotationAngle: rotateDegree))
//       寫一起語法，但是位移值會跟單獨寫不一樣，要重調一次 heartPath.apply(CGAffineTransform.identity.translatedBy(x: translateX, y: translateY).scaledBy(x: scale, y: scale).rotated(by: rotateDegree))
        
        // Layer
        let heartLayer = CAShapeLayer()
        heartLayer.path = heartPath.cgPath
        heartLayer.fillColor = nil
        heartLayer.lineWidth = 3
        heartLayer.strokeColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        // 動畫
        let heartAnimation = CABasicAnimation(keyPath: animationStartEnd)
        heartAnimation.fromValue = 0
        heartAnimation.toValue = 1
        heartAnimation.duration = 3
        heartAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        heartAnimation.repeatCount = .greatestFiniteMagnitude
        heartLayer.add(heartAnimation, forKey: nil)
        
        view.layer.addSublayer(heartLayer)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 背景漸層（最底下）
        let bgGradientLayer = CAGradientLayer()
        bgGradientLayer.frame = view.bounds
        bgGradientLayer.colors = [CGColor(red: 1, green: 154/255, blue: 117/255, alpha: 1),CGColor(red: 1, green: 87/255, blue: 77/255, alpha: 1),CGColor(red: 1, green: 87/255, blue: 77/255, alpha: 1),CGColor(red: 1, green: 154/255, blue: 117/255, alpha: 1)]
        // 顏色分布：較淺色、標準色、標準色、較淺色
        bgGradientLayer.startPoint = CGPoint(x: 0.8, y: 1)
        bgGradientLayer.endPoint = CGPoint(x: 0.2, y: 0)
        bgGradientLayer.locations = [0,0.2,0.6,1]
        view.layer.insertSublayer(bgGradientLayer, at: 0)
        
        // 小的coin雪（第二層背景） View跟Scene的背景都要改透明才不會蓋到漸層
        let coinSnowView = SKView(frame: view.frame)
        coinSnowView.backgroundColor = .clear
        view.addSubview(coinSnowView)
        
        let coinSnowScene = SKScene(size: coinSnowView.frame.size)
        coinSnowScene.anchorPoint = CGPoint(x: 0.5, y: 1)
        coinSnowScene.alpha = 0.5 // 雪的透明度（做出景深感）
        coinSnowScene.backgroundColor = .clear
        
        let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
        coinSnowScene.addChild(emitterNode!)
        coinSnowView.presentScene(coinSnowScene)
        
        
        // 中間吉祥物GIF
        let mascotGIFView = UIImageView(frame: CGRect(x: (414-150)/2, y: (896-150)/2, width: 150, height: 150))
        view.addSubview(mascotGIFView)
        
        let mascotGIFImage = UIImage.animatedImageNamed("46d9326c23b04e28ccdd6d08e457b4a6dfP9GWe9gzyuiulA-", duration: 1)
        mascotGIFView.image = mascotGIFImage
        
        
        // Logo Path變形（路徑跟變形語法寫在上面function）
        addPlurkView(moveX: 0, moveY: 500, rotateDegree: 0, scale: 1, fillAlpha: 1)
        addPlurkView(moveX: 98, moveY: 360, rotateDegree: 15, scale: 0.3, fillAlpha: 0.7)
        
        // 愛心線條動畫（路徑跟動畫語法寫在上面function）
        addHeartAnimation(translateX: 199, translateY: 77, rotateDegree: CGFloat.pi/4, scale: 2, animationStartEnd: "strokeEnd")
        addHeartAnimation(translateX: -120, translateY: 160, rotateDegree: 0, scale: 3, animationStartEnd: "strokeStart")
        
        // 大的coin雪（前景 最前面一層）
        let coinSnowEmitterCell = CAEmitterCell()
        coinSnowEmitterCell.contents = UIImage(named: "plurkCoin")?.cgImage
        coinSnowEmitterCell.birthRate = 1  //一秒生幾個
        coinSnowEmitterCell.lifetime = 10  //出現時間
        coinSnowEmitterCell.lifetimeRange = 5
        coinSnowEmitterCell.velocity = -30 //移動速度
        coinSnowEmitterCell.velocityRange = -20
        coinSnowEmitterCell.scale = 1 //大小變形
        coinSnowEmitterCell.scaleRange = 0.5 //大小範圍在1+-0.5之間（0.5~1.5之間隨機）
        coinSnowEmitterCell.yAcceleration = 30 //向下加速度
        coinSnowEmitterCell.spin = -0.5  // 旋轉
        coinSnowEmitterCell.spinRange = 1
        coinSnowEmitterCell.emissionRange = CGFloat.pi //左右落下
        
        let coinSnowEmitterLayer = CAEmitterLayer()
        coinSnowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width/2, y: -50)
        coinSnowEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        coinSnowEmitterLayer.emitterShape = .line

        coinSnowEmitterLayer.emitterCells = [coinSnowEmitterCell]
        view.layer.addSublayer(coinSnowEmitterLayer)
        
        
        /* 語法練習部分
        // transfrom－用圖片
        let imageView = UIImageView(image: UIImage(named: "cat"))
        view.addSubview(imageView)
        // 放大縮小、鏡像
        imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        imageView.transform = CGAffineTransform.identity.scaledBy(x: 0.5, y: 0.5)
        imageView.transform = CGAffineTransform(scaleX: -1, y: 1)
        imageView.transform = CGAffineTransform(scaleX: 1, y: -1)
        
        // 改變位置
          imageView.transform = CGAffineTransform(translationX: 50, y: 50)
        
        // 旋轉
        let oneDegree = CGFloat.pi / 180
        imageView.transform = CGAffineTransform(rotationAngle: oneDegree * 45)

        // 綜合變形 先translate再scale
        imageView.transform = CGAffineTransform.identity.translatedBy(x: 50, y: 50).scaledBy(x: 0.5, y: 0.5).rotated(by: oneDegree * 45)
         
        
        // transfrom－用Path
        // Path 語法寫在上面function處
        addPlurkView(moveX: 50, moveY: 50, rotateDegree: 45, scale: 0.5, fillAlpha: 1)
        addPlurkView(moveX: 100, moveY: 150, rotateDegree: 90, scale: 1, fillAlpha: 1)
        addPlurkView(moveX: 0, moveY: 200, rotateDegree: 30, scale: 1.5, fillAlpha: 1)
        
        
        //漸層－一般漸層（上到下）
        let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [CGColor(red: 220/255, green: 0, blue: 0, alpha: 1),CGColor(red: 10/255, green: 0, blue: 0, alpha: 1)]
        // [a,b] 利用array可以有多個顏色 a＝漸層上面；b＝漸層下面（寫越後面越下面）
        
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
        // 第二種寫法（UIColor轉CGColor）
        
        gradientLayer.frame = gradientView.bounds
        // 要記得加frame！ bounds＝強調大小，x,y必是0,0
        gradientView.layer.addSublayer(gradientLayer)
        view.addSubview(gradientView)
        
 
        //漸層－方向變化（改變start point跟end point）
        let gradientView2 = UIView(frame: CGRect(x: 200, y: 0, width: 200, height: 200))
        let gradientLayer2 = CAGradientLayer()
        gradientLayer2.colors = [CGColor(red: 220/255, green: 0, blue: 0, alpha: 1),CGColor(red: 10/255, green: 0, blue: 0, alpha: 1)]
        //第一個顏色：開始處 (1,0)，第二個顏色：結束處 (0,1)
        gradientLayer2.startPoint = CGPoint(x: 1, y: 0)
        gradientLayer2.endPoint = CGPoint(x: 0, y: 1)
        
        gradientLayer2.frame = gradientView2.bounds
        gradientView2.layer.addSublayer(gradientLayer2)
        view.addSubview(gradientView2)
        
 
        // 改變顏色分布（locoation）
        let gradientView3 = UIView(frame: CGRect(x: 0, y: 200, width: 200, height: 200))
        let gradientLayer3 = CAGradientLayer()
        gradientLayer3.colors = [CGColor(red: 220/255, green: 0, blue: 0, alpha: 1),CGColor(red: 10/255, green: 0, blue: 0, alpha: 1),CGColor(red: 220/255, green: 0, blue: 0, alpha: 1)]

        gradientLayer3.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer3.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer3.locations = [0,0.7,1]
        
        gradientLayer3.frame = gradientView3.bounds
        gradientView3.layer.addSublayer(gradientLayer3)
        view.addSubview(gradientView3)
        
 
        // 整個畫面都是漸層背景
        let gradientLayerBG = CAGradientLayer()
        gradientLayerBG.frame = view.bounds
        gradientLayerBG.colors = [
            CGColor(srgbRed: 0, green: 0, blue: 1, alpha: 1),
            CGColor(srgbRed: 0, green: 0, blue: 20/255, alpha: 1)
                ]
        view.layer.insertSublayer(gradientLayerBG, at: 0)
        // insertSublayer＋at:0 讓漸層在最底下，用addSublayer會在最上面
 
        
        // GIF動畫（無限循環）
        let aniimageView = UIImageView(frame: CGRect(x: 50, y: 100, width: 139, height: 141))
        view.addSubview(aniimageView)
        let animatedImage = UIImage.animatedImageNamed("aac297b10af247e7b5444f2a64454d68uBvnWliM5OFAaYye-", duration: 1)
        // duration 一個GIF圖片循環的秒數，同樣張數下設定0.5秒會比1秒動更快
        aniimageView.image = animatedImage
        
 
        // GIF動畫（限制次數）
        let imageViewOneTime = UIImageView(frame: CGRect(x: 200, y: 250, width: 139, height: 141))
        view.addSubview(imageViewOneTime)
        
        var animatedImageOneTime = [UIImage]()
        for i in 0...7{
            animatedImageOneTime.append(UIImage(named: "aac297b10af247e7b5444f2a64454d68uBvnWliM5OFAaYye-\(i)")!)
        }
        imageViewOneTime.animationImages = animatedImageOneTime
        imageViewOneTime.animationDuration = 1
        imageViewOneTime.animationRepeatCount = 5
        imageViewOneTime.image = animatedImageOneTime.last
        imageViewOneTime.startAnimating()
        // imageViewOneTime.stopAnimating() 加上這個GIF不會動，停在上面設定的last最後一張
         */
    }
}

