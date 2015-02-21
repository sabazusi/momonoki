package net.sabazusi.momonoki.asset
{
    import flash.utils.Dictionary;

    import starling.display.BlendMode;
    import starling.display.Image;
    import starling.display.Image;

    public class WelcomeScreenAssetAccessor
    {
        [Embed(source="../../../../../assets/graphics/welcome_background.jpg")]
        private static const IMAGE_BACKGROUND:Class;

        private var _accessor:AssetAccessor;

        public function WelcomeScreenAssetAccessor(accessor:AssetAccessor)
        {
            _accessor = accessor;
        }

        public function get background():Image
        {
            var image:Image = new Image(_accessor.getTextureByAssetClass(IMAGE_BACKGROUND));
            image.blendMode = BlendMode.NONE;
            return image;
        }
    }
}
