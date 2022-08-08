import UIKit
//建立一個變數儲存 UIImageView（UIImageView 裡儲存 UIImage 照片）
let image=UIImageView(image: UIImage(named: "ai.png"))
//調整背景顏色及透明度
image.backgroundColor=UIColor(red: 255/255, green: 215/255, blue: 0/255, alpha:0.1)
//建立 backgroundImage 來儲存另一張底圖
let backgroundImage=UIImageView(image: UIImage(named: "background.jpeg"))
//添加調色圖層
let cover = UIImageView(image: UIImage())
cover.frame=image.frame
cover.backgroundColor=UIColor(red: 255/255, green: 69/255, blue: 0/255, alpha: 0.5)
//將底圖的尺寸改成與主要圖片相等
backgroundImage.frame=image.frame
//並將底圖調整為最適當比例呈現
backgroundImage.contentMode = .scaleAspectFill
//將主要圖片加至底圖上
backgroundImage.addSubview(cover)
backgroundImage.addSubview(image)
