package net.sabazusi.momonoki.asset
{
    import starling.display.BlendMode;
    import starling.display.Button;
    import starling.display.Image;

    public class PlayScreenAssetAccessor extends AssetAccessor
    {
        private var _accessor:AssetAccessor;

        [Embed(source="../../../../../assets/graphics/play_background.jpg")]
        private static const _IMG_BACKGROUND:Class;

        [Embed(source="../../../../../assets/graphics/play_back.jpg")]
        private static const _IMG_BACK:Class;

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

        public function get tapToBackButton():Button
        {
            var button:Button = new Button(_accessor.getTextureByAssetClass(_IMG_BACK));
            return button;
        }
    }
}
