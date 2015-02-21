package net.sabazusi.momonoki.screen
{
    import flash.events.EventDispatcher;

    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;

    public class WelcomeScreen extends EventDispatcher implements IScreen
    {
        public function WelcomeScreen(asset:WelcomeScreenAssetAccessor)
        {
            super();
        }

        public function setUpScreen():void
        {
        }

        public function disposeScreen():void
        {
        }

    }
}
