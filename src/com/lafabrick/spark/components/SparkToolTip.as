package com.lafabrick.spark.components
{
    import mx.core.IToolTip;
    import spark.components.supportClasses.SkinnableComponent;
    import spark.components.supportClasses.TextBase;
    import spark.primitives.BitmapImage;


    [Style( name = "fillColor", format = "Color", minValue = "0" )]
    [Style( name = "fillAlpha", format = "Number", minValue = "0", maxValue = "1" )]
    [Style( name = "borderColor", format = "Color", minValue = "0" )]
    [Style( name = "borderAlpha", format = "Number", minValue = "0", maxValue = "1" )]
    [Style( name = "cornerRadius", format = "uint", minValue = "0", maxValue = "12" )]
    public class SparkToolTip extends SkinnableComponent implements IToolTip
    {

        private var _icon :Class;


        public function get icon() :Class
        {
            return _icon;

        }


        public function set icon( value :Class ) :void
        {
            _icon = value;
        }

        [SkinPart( required = "false" )]
        public var iconDIsplay :BitmapImage;

        /*public override function get screen():Rectangle
        {
            //TODO Auto-generated method stub
            return super.screen;
        }*/

        private var _text :String;


        public function get text() :String
        {
            return _text;
        }


        public function set text( value :String ) :void
        {
            _text = value;
        }

        [SkinPart( required = "false" )]
        public var tipDisplay :TextBase;


        public function SparkToolTip()
        {
            super();
        }


        protected override function partAdded( partName :String, instance :Object ) :void
        {
            switch ( partName )
            {
                case 'tipDisplay':
                    TextBase( instance ).text = _text;
                    break;

                case 'iconDIsplay':
                    BitmapImage( instance ).source = _icon;
                    break;
            }

        }


        protected override function partRemoved( partName :String, instance :Object ) :void
        {
            //TODO Auto-generated method stub
            super.partRemoved( partName, instance );

        }
    }
}
