package net.sabazusi
{

    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextField;

    import net.sabazusi.momonoki.Momonoki;

    import raix.reactive.ICancelable;

    import raix.reactive.IObservable;

    import raix.reactive.Observable;

    import starling.core.Starling;

    public class Main extends Sprite
    {
        private var _initializer:ICancelable;

        public function Main()
        {
            super();

            _initializer = Observable.fromEvent(this, Event.ADDED_TO_STAGE)
                    .subscribe(_initializeGame, null, _onError);
        }

        private function _initializeGame(e:Event):void
        {
            _initializer.cancel();

            var starling:Starling = new Starling(Momonoki, stage);

            // game property
            starling.antiAliasing = 1;

            // show stats for debug
            starling.showStats = true;
            starling.showStatsAt("left", "top", 1.5);

            starling.start();

        }

        private function _onError(e:Error):void
        {
            throw e;
        }
    }
}
