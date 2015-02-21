package net.sabazusi.momonoki.screen
{
    import flash.events.IEventDispatcher;

    import starling.display.DisplayObject;

    public interface IScreen extends IEventDispatcher
    {
        function activateScreen():void;

        function inactivateScreen():void;

        function get displayObject():DisplayObject;
    }
}
