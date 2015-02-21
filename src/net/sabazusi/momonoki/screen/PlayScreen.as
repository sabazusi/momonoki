package net.sabazusi.momonoki.screen
{
    import flash.events.EventDispatcher;

    import net.sabazusi.momonoki.asset.PlayScreenAssetAccessor;

    import starling.display.DisplayObject;

    public class PlayScreen extends EventDispatcher implements IScreen
    {
        public function PlayScreen(asset:PlayScreenAssetAccessor)
        {
            super();
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
