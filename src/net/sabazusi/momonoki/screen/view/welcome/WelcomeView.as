package net.sabazusi.momonoki.screen.view.welcome
{
    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;

    import starling.display.Button;
    import starling.display.Sprite;

    public class WelcomeView extends Sprite
    {
        private var _tapToPlay:Button;

        public function WelcomeView(asset:WelcomeScreenAssetAccessor)
        {
            this.addChild(asset.background);

            _tapToPlay = asset.tapToPlayButton
            _tapToPlay.x = (this.width - _tapToPlay.width) / 2;
            _tapToPlay.y = this.height / 2 + (this.height / 2 - _tapToPlay.height) / 2;
            this.addChild(_tapToPlay);
        }

        public function get tapToPlay():Button
        {
            return _tapToPlay;
        }
    }
}
