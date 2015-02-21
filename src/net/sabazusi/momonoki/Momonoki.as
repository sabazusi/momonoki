package net.sabazusi.momonoki
{
    import flash.utils.Dictionary;

    import net.sabazusi.momonoki.asset.AssetAccessor;
    import net.sabazusi.momonoki.asset.PlayScreenAssetAccessor;
    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;
    import net.sabazusi.momonoki.screen.IScreen;
    import net.sabazusi.momonoki.screen.MomonokiScreenSwitcher;
    import net.sabazusi.momonoki.screen.PlayScreen;

    import net.sabazusi.momonoki.screen.WelcomeScreen;

    import raix.reactive.ICancelable;
    import raix.reactive.Observable;

    import starling.display.Sprite;
    import starling.events.Event;

    public class Momonoki extends Sprite
    {
        private static const _INITIAL_SCREEN:Class = WelcomeScreen;
        private var _screenSwitcher:MomonokiScreenSwitcher;


        public function Momonoki()
        {
            super();

            var assetAccessor:AssetAccessor = new AssetAccessor();
            var screens:Dictionary = _instantiateScreens(assetAccessor);
            _screenSwitcher = new MomonokiScreenSwitcher(screens);

            _initializeScreens(screens);
        }

        private function _instantiateScreens(asset:AssetAccessor):Dictionary
        {
            var screens:Dictionary = new Dictionary();
            screens[WelcomeScreen] = new WelcomeScreen(new WelcomeScreenAssetAccessor(asset));
            screens[PlayScreen] = new PlayScreen(new PlayScreenAssetAccessor(asset));
            return screens;
        }

        private function _initializeScreens(screens:Dictionary):void
        {
            // addedscreenが全部来たらswithcer.initialize(screen)して開始させる
        }
    }
}
