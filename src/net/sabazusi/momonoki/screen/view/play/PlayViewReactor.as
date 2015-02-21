package net.sabazusi.momonoki.screen.view.play
{
    import raix.reactive.IObservable;
    import raix.reactive.Subject;

    import starling.events.Event;

    public class PlayViewReactor
    {
        private var _view:PlayView;
        private var _backButtonTapSource:Subject = new Subject();
        public function PlayViewReactor(view:PlayView)
        {
            _view = view;

            _view.addEventListener(Event.TRIGGERED, function(event:Event):void{
                _backButtonTapSource.onNext(event);
            })
        }

        public function get backButtonTapSource():IObservable
        {
            return _backButtonTapSource.asObservable();
        }
    }
}
