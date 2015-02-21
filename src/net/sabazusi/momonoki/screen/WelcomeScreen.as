package net.sabazusi.momonoki.screen
{
    import flash.events.EventDispatcher;

    import net.sabazusi.momonoki.asset.WelcomeScreenAssetAccessor;
    import net.sabazusi.momonoki.screen.events.ScreenChangeEvent;
    import net.sabazusi.momonoki.screen.view.welcome.WelcomeView;
    import net.sabazusi.momonoki.screen.view.welcome.WelcomeViewPresenter;
    import net.sabazusi.momonoki.screen.view.welcome.WelcomeViewReactor;

    import starling.display.DisplayObject;

    import starling.display.Sprite;
    import starling.events.Event;

    public class WelcomeScreen extends EventDispatcher implements IScreen
    {
        private var _reactor:WelcomeViewReactor;
        private var _presenter:WelcomeViewPresenter;
        private var _view:WelcomeView;

        public function WelcomeScreen(asset:WelcomeScreenAssetAccessor)
        {
            super();

            _view = new WelcomeView(asset);
            _reactor = new WelcomeViewReactor(_view);
            _presenter = new WelcomeViewPresenter(_view);

            _reactor.tapToPlaySource
                    .subscribe(function(event:Event):void{
                        dispatchEvent(new ScreenChangeEvent(ScreenChangeEvent.TRANSITION, PlayScreen));
                    });
        }

        public function activateScreen():void
        {
            _toggleUsecases(true);
            _presenter.activate();
        }

        public function inactivateScreen():void
        {
            _toggleUsecases(false);
            _presenter.inactivate();
        }

        public function get displayObject():DisplayObject
        {
            return _view;
        }

        private function _toggleUsecases(eneabled:Boolean):void
        {
        }
    }
}
