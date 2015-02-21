package net.sabazusi.momonoki.screen.view.welcome
{
    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;

    import starling.display.Sprite;

    public class WelcomeView extends Sprite
    {
        public function WelcomeView(asset:WelcomeScreenAssetAccessor)
        {
            this.addChild(asset.background);
        }
    }
}
