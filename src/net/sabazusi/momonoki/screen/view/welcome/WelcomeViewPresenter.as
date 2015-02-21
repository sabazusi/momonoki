package net.sabazusi.momonoki.screen.view.welcome
{
    public class WelcomeViewPresenter
    {
        private var _view:WelcomeView;
        public function WelcomeViewPresenter(view:WelcomeView)
        {
            _view = view;
            _view.visible = false;
        }

        public function activate():void
        {
            trace("welcome screen :: activate");
            _view.visible = true;
        }

        public function inactivate():void
        {
            _view.visible = false;
            trace("welcome screen :: inactivate");
        }
    }
}
