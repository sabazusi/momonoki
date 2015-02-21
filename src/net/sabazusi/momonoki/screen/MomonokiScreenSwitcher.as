package net.sabazusi.momonoki.screen
{
    import flash.utils.Dictionary;

    import net.sabazusi.momonoki.screen.events.ScreenChangeEvent;

    import raix.reactive.ICancelable;
    import raix.reactive.Observable;

    public class MomonokiScreenSwitcher
    {
        private var _screens:Dictionary;
        private var _switchSource:ICancelable;
        private var _currentScreen:IScreen;

        public function MomonokiScreenSwitcher(screens:Dictionary)
        {
            _screens = screens;
        }

        public function initialize(initialScreen:Class):void
        {
            _currentScreen = _screens[initialScreen];
            _subscribeScreenSwitch();

            _currentScreen.activateScreen();
        }

        private function _subscribeScreenSwitch():void
        {
            if (_currentScreen)
            {
                _switchSource = Observable.fromEvent(_currentScreen, ScreenChangeEvent.TRANSITION)
                        .subscribe(_updateCurrentScreen);
            }
        }

        private function _updateCurrentScreen(event:ScreenChangeEvent)
        {
            _switchSource.cancel();
            _currentScreen = null;

            for(var keyClass:* in _screens)
            {
                if (keyClass == event.transitionTo)
                {
                    _currentScreen = _screens[keyClass];
                    _currentScreen.activateScreen();
                }
                else
                {
                    _screens[keyClass].inactivateScreen();
                }
            }
            _subscribeScreenSwitch();
        }
    }
}
