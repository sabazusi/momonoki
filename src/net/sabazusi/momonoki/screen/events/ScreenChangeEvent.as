package net.sabazusi.momonoki.screen.events
{
    import flash.events.Event;

    public class ScreenChangeEvent extends Event
    {
        public static const TRANSITION:String = "ScreenChangeEvent::transition";

        private var _transitionTo:Class;

        public function ScreenChangeEvent(type:String,transitionTo:Class, bubbles:Boolean, cancelable:Boolean)
        {
            _transitionTo = transitionTo;

            super(type, bubbles, cancelable);
        }

        public function get transitionTo():Class
        {
            return _transitionTo;
        }
    }
}
