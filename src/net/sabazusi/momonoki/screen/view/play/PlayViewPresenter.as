package net.sabazusi.momonoki.screen.view.play
{
    public class PlayViewPresenter
    {
        private var _view:PlayView;
        public function PlayViewPresenter(view:PlayView)
        {
            _view = view;
            _view.visible = false;
        }

        public function activate():void
        {
            trace("play screen :: activate");
            _view.visible = true;
        }

        public function inactivate():void
        {
            trace("play screen :: inactivate");
            _view.visible = false;
        }
    }
}
