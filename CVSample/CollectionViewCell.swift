import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var label: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //cellの枠の太さ
        self.layer.borderWidth = 1.4
        //cellの枠の色
        self.layer.borderColor = #colorLiteral(red: 0.9086276889, green: 0.2920762599, blue: 0.2549881935, alpha: 1)
//        self.layer.borderColor = #colorLiteral(red: 0.3795862794, green: 0.3773348629, blue: 0.3813202381, alpha: 1)
        //cellを丸くする
//        self.layer.cornerRadius = UIScreen.main.bounds.size.width/50
        
    }
    
}
