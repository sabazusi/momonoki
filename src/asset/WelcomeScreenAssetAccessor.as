package asset
{
    public class WelcomeScreenAssetAccessor extends AssetAccessor
    {
        public function WelcomeScreenAssetAccessor()
        {
            super();
        }

        public function get titleLogo():*
        {
            return _getByName("welcome_title");
        }
    }
}
