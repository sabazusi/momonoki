package net.sabazusi.momonoki.screen
{
    import flash.events.IEventDispatcher;

    public interface IScreen extends IEventDispatcher
    {
        function setUpScreen():void;

        function disposeScreen():void;
    }
}
