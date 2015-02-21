package net.sabazusi.momonoki.asset
{
    public class WelcomeScreenAssetAccessor
    {
        private var _accessor:AssetAccessor;

        public function WelcomeScreenAssetAccessor(accessor:AssetAccessor)
        {
            _accessor = accessor;
        }

        public function get titleLogo():*
        {
            return _accessor.getByName("welcome_title");
        }
    }
}
