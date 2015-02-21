package net.sabazusi.momonoki.screen.view.welcome
{
    import raix.reactive.IObservable;
    import raix.reactive.Observable;
    import raix.reactive.Subject;

    import starling.events.Event;

    public class WelcomeViewReactor
    {
        private var _view:WelcomeView;
        private var _tapToPlaySource:Subject = new Subject();
        public function WelcomeViewReactor(view:WelcomeView)
        {
            _view = view;

            // Observable.fromEventにstarling.EventDispatcherを渡すことができないので
            // 直接subjectを操作して外部にストリームを提供している
            _view.tapToPlay.addEventListener(Event.TRIGGERED, function(event:Event):void
            {
                _tapToPlaySource.onNext(event);
            });
        }

        public function get tapToPlaySource():IObservable
        {
            return _tapToPlaySource.asObservable();
        }
    }
}
