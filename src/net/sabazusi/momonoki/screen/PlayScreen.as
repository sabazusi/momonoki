package net.sabazusi.momonoki.screen
{
    import flash.events.EventDispatcher;

    import net.sabazusi.momonoki.asset.PlayScreenAssetAccessor;
    import net.sabazusi.momonoki.screen.events.ScreenChangeEvent;
    import net.sabazusi.momonoki.screen.view.play.PlayView;
    import net.sabazusi.momonoki.screen.view.play.PlayViewPresenter;
    import net.sabazusi.momonoki.screen.view.play.PlayViewReactor;

    import starling.display.DisplayObject;
    import starling.events.Event;

    public class PlayScreen extends EventDispatcher implements IScreen
    {
        private var _reactor:PlayViewReactor;
        private var _presenter:PlayViewPresenter;
        private var _view:PlayView;

        public function PlayScreen(asset:PlayScreenAssetAccessor)
        {
            super();

            _view = new PlayView(asset);
            _reactor = new PlayViewReactor(_view);
            _presenter = new PlayViewPresenter(_view);

            _reactor.backButtonTapSource
                    .subscribe(function(e:Event):void{
                        dispatchEvent(new ScreenChangeEvent(ScreenChangeEvent.TRANSITION, WelcomeScreen));
                    })
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
