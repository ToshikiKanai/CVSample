import UIKit
 
class CollectionViewLayout: UICollectionViewLayout{
    //行数
    let columns = 8
    //レイアウト
    private var layoutData = [UICollectionViewLayoutAttributes]()
    
    //レイアウトの準備
    override func prepare() {
        super.prepare()
        self.layoutData.removeAll()
        let allWidth  = collectionView!.bounds.width
        let columnWidth = allWidth / CGFloat(self.columns)
        let columnHeight = columnWidth
//        var x:CGFloat = 0
        var x:CGFloat = columnHeight*7
        var y:CGFloat = 0
        
        for count in 0 ... collectionView!.numberOfItems(inSection: 0){
            let indexPath = NSIndexPath(item: count, section: 0)
            //レイアウトの配列に位置とサイズを登録する。
            let frame = CGRect(x: x, y: y, width: columnWidth, height: columnHeight)
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath as IndexPath)
            attributes.frame = frame
            layoutData.append(attributes)
            
//            ここでcellをどの場所に配置するかを指定している
//            これはindexPath[1]が右上が0,左下が63となるように配置している(縦書き配置)
            if ((count + 1) % columns != 0){
                y += columnHeight
            }else{
                y = 0
                x -= columnWidth
            }
            
//            これはindexPath[1]が左上が0,右下が63となるように配置している
//            if ((count + 1) % columns != 0){
//                x += columnWidth
//            }else{
//                x = 0
//                y += columnHeight
//            }
        }
    }
    
    //レイアウトを返す
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return layoutData
    }
}
