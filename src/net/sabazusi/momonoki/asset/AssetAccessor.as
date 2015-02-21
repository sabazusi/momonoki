package net.sabazusi.momonoki.asset
{
    import flash.display.Bitmap;
    import flash.utils.Dictionary;

    import starling.textures.Texture;

    public class AssetAccessor
    {
        private var _loaded:Dictionary = new Dictionary();
        public function AssetAccessor()
        {
        }

        public function getTextureByAssetClass(assetClass:Class):Texture
        {
            if (!_loaded[assetClass])
            {
                var bitmap:Bitmap = new assetClass();
                _loaded[assetClass] = Texture.fromBitmap(bitmap);
            }

            return _loaded[assetClass];
        }
    }
}
