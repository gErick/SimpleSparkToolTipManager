package com.lafabrick.spark
{
    import mx.core.IToolTip;
    import mx.events.ToolTipEvent;

    public class ToolTipHelper
    {
        public function ToolTipHelper()
        {
        }

        static public function showTip(e:ToolTipEvent,toolTipClass:Class, text:String = "" ):void
        {
            var tip:IToolTip = new toolTipClass();

            tip.text = text;

            e.toolTip = tip;
        }
    }
}
