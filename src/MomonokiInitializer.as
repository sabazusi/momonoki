/**
 * Created with IntelliJ IDEA.
 * User: sabazusi
 * Date: 15/02/01
 * Time: 14:49
 * To change this template use File | Settings | File Templates.
 */
package
{
    import raix.reactive.ICancelable;
    import raix.reactive.Observable;

    import starling.display.Sprite;
    import starling.events.Event;

    public class MomonokiInitializer extends Sprite
    {
        private var _initializer:ICancelable;
    //    private var _activators:Vector.<IScreenActivator> = Vector.<IScreenActivator>([]);

        public function MomonokiInitializer()
        {
            super();

       //     _initializer = Observable.fromEvent(Event.ADDED_TO_STAGE)
         //           .subscribe(_initScreens);
        }

        private function _initScreens(e:Event):void
        {
            _initializer.cancel();

        }
    }
}
