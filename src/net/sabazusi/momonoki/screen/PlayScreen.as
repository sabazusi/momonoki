package net.sabazusi.momonoki.screen
{
    import flash.events.EventDispatcher;

    import net.sabazusi.momonoki.asset.PlayScreenAssetAccessor;

    public class PlayScreen extends EventDispatcher implements IScreen
    {
        public function PlayScreen(asset:PlayScreenAssetAccessor)
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
