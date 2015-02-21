package net.sabazusi.momonoki
{
    import flash.utils.Dictionary;

    import net.sabazusi.momonoki.asset.AssetAccessor;
    import net.sabazusi.momonoki.asset.CharacterAssetAccessor;
    import net.sabazusi.momonoki.asset.PlayScreenAssetAccessor;
    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;
    import net.sabazusi.momonoki.character.CharacterController;
    import net.sabazusi.momonoki.screen.IScreen;
    import net.sabazusi.momonoki.screen.MomonokiScreenSwitcher;
    import net.sabazusi.momonoki.screen.PlayScreen;
    import net.sabazusi.momonoki.screen.WelcomeScreen;

    import starling.display.Sprite;
    import starling.events.Event;

    /**
     * Starling Game Root Class.
     */
    public class Momonoki extends Sprite
    {
        private static const _INITIAL_SCREEN:Class = WelcomeScreen;
        private var _screenSwitcher:MomonokiScreenSwitcher;

        public function Momonoki()
        {
            super();

            var assetAccessor:AssetAccessor = new AssetAccessor();

            var character:CharacterController = _createCharacter(assetAccessor);
            var screens:Dictionary = _instantiateScreens(assetAccessor);
            _screenSwitcher = new MomonokiScreenSwitcher(screens);

            _initializeScreens(screens);
        }

        private function _createCharacter(asset:AssetAccessor):CharacterController
        {
            return new CharacterController(
                    new CharacterAssetAccessor(asset)
            );
        }

        private function _instantiateScreens(asset:AssetAccessor):Dictionary
        {
            var screenMap:Dictionary = new Dictionary();
            screenMap[WelcomeScreen] = new WelcomeScreen(new WelcomeScreenAssetAccessor(asset));
            screenMap[PlayScreen] = new PlayScreen(new PlayScreenAssetAccessor(asset));
            return screenMap;
        }

        private function _initializeScreens(screens:Dictionary):void
        {
            this.addEventListener(Event.ADDED_TO_STAGE, function (event:Event):void
            {
                _screenSwitcher.initialize(_INITIAL_SCREEN);
            });

            for each(var screen:IScreen in  screens)
            {
                this.addChild(screen.displayObject);
            }
        }
    }
}
