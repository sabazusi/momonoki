package net.sabazusi.momonoki.asset
{
    public class PlayScreenAssetAccessor extends AssetAccessor
    {
        private var _accessor:AssetAccessor;

        public function PlayScreenAssetAccessor(accessor:AssetAccessor)
        {
            _accessor = accessor;
        }
    }
}
