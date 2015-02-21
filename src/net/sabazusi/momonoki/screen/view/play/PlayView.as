package net.sabazusi.momonoki.screen.view.play
{
    import net.sabazusi.momonoki.asset.PlayScreenAssetAccessor;

    import starling.display.Button;

    import starling.display.Sprite;

    public class PlayView extends Sprite
    {
        private var _tapToBack:Button;
        public function PlayView(asset:PlayScreenAssetAccessor)
        {
            this.addChild(asset.background);

            _tapToBack = asset.tapToBackButton;
            _tapToBack.x = _tapToBack.y = 50;
            this.addChild(_tapToBack);
        }

        public function get tapToBack():Button
        {
            return _tapToBack;
        }
    }
}
