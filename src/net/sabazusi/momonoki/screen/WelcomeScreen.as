package net.sabazusi.momonoki.screen
{
    import flash.events.EventDispatcher;

    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;
    import net.sabazusi.momonoki.screen.view.welcome.WelcomeViewAccessor;

    import starling.display.DisplayObject;

    import starling.display.Sprite;

    public class WelcomeScreen extends EventDispatcher implements IScreen
    {
        private var _accessor:WelcomeViewAccessor;

        public function WelcomeScreen(asset:WelcomeScreenAssetAccessor)
        {
            super();
            _accessor = new WelcomeViewAccessor(asset);
        }

        public function activateScreen():void
        {
            _toggleUsecases(true);
            _accessor.activate();
        }

        public function inactivateScreen():void
        {
            _toggleUsecases(false);
            _accessor.inactivate();
        }

        public function get displayObject():DisplayObject
        {
            return _accessor.displayObject;
        }

        private function _toggleUsecases(eneabled:Boolean):void
        {
        }
    }
}
