package net.sabazusi.momonoki.asset
{
    import starling.display.BlendMode;
    import starling.display.Image;

    public class PlayScreenAssetAccessor extends AssetAccessor
    {
        private var _accessor:AssetAccessor;

        [Embed(source="../../../../../assets/graphics/play_background.jpg")]
        private static const _IMG_BACKGROUND:Class;

        public function PlayScreenAssetAccessor(accessor:AssetAccessor)
        {
            _accessor = accessor;
        }

        public function get background():Image
        {
            var image:Image = new Image(_accessor.getTextureByAssetClass(_IMG_BACKGROUND));
            image.blendMode = BlendMode.NONE;
            return image;
        }
    }
}
