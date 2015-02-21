package net.sabazusi.momonoki.asset
{
    import starling.display.Image;

    public class CharacterAssetAccessor
    {
        private var _accessor:AssetAccessor;

        public function CharacterAssetAccessor(accessor:AssetAccessor)
        {
            _accessor = accessor;
        }

        public function get movableCharacter():Image
        {
            return null; // TODO: impl
        }
    }
}
