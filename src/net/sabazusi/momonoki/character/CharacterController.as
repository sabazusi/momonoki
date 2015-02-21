package net.sabazusi.momonoki.character
{
    import net.sabazusi.momonoki.asset.CharacterAssetAccessor;
    import net.sabazusi.momonoki.character.view.CharacterPresenter;
    import net.sabazusi.momonoki.character.view.CharacterReactor;
    import net.sabazusi.momonoki.character.view.CharacterView;

    import starling.display.DisplayObject;

    public class CharacterController
    {
        private var _reactor:CharacterReactor;
        private var _presenter:CharacterPresenter;
        private var _view:CharacterView;

        public function CharacterController(asset:CharacterAssetAccessor)
        {
            _view = new CharacterView(asset);
            _reactor = new CharacterReactor(_view);
            _presenter = new CharacterPresenter(_view);
        }

        public function get displayObject():DisplayObject
        {
            return _view;
        }

        public function get reactor():CharacterReactor
        {
            return _reactor;
        }

        public function get presenter():CharacterPresenter
        {
            return _presenter;
        }
    }
}
