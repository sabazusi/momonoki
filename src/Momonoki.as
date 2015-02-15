package {

    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextField;

    import raix.reactive.ICancelable;

    import raix.reactive.IObservable;

    import raix.reactive.Observable;

    import starling.core.Starling;

    public class Momonoki extends Sprite
    {
        private var _initializer:ICancelable;
        public function Momonoki()
        {
            super();

            _initializer = Observable.fromEvent(this, Event.ADDED_TO_STAGE)
                    .subscribe(_initializeGame, null, _onError);
        }

        private function _initializeGame(e:Event):void
        {
            _initializer.cancel();

            var starling:Starling = new Starling(MomonokiInitializer, stage);

            // game property
            starling.antiAliasing = 1;

            // show stats for debug
            starling.showStats = true;
            starling.showStatsAt("left", "top", 0.9);

            starling.start();

        }

        private function _onError(e:Error):void
        {
        }
    }
}
