package net.sabazusi.momonoki.asset
{
    import starling.display.BlendMode;
    import starling.display.Button;
    import starling.display.Image;

    public class WelcomeScreenAssetAccessor
    {
        [Embed(source="../../../../../assets/graphics/welcome_background.jpg")]
        private static const _IMG_BACKGROUND:Class;

        [Embed(source="../../../../../assets/graphics/welcome_transition.jpg")]
        private static const _IMG_BUTTON_START:Class;

        private var _accessor:AssetAccessor;

        public function WelcomeScreenAssetAccessor(accessor:AssetAccessor)
        {
            _accessor = accessor;
        }

        public function get background():Image
        {
            var image:Image = new Image(_accessor.getTextureByAssetClass(_IMG_BACKGROUND));
            image.blendMode = BlendMode.NONE;
            return image;
        }

        public function get tapToPlayButton():Button
        {
            var button:Button = new Button(_accessor.getTextureByAssetClass(_IMG_BUTTON_START));
            return button;
        }
    }
}
