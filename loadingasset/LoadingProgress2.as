package 
{
    import LoadingProgress.*;
    import flash.display.*;
    import flash.text.*;

    public class LoadingProgress extends MovieClip
    {
        public var tbxPercent:TextField;
        public var percentIcon:MovieClip;
        private var _progress:int;
        public var Min_Progress:int = 0;
        public var Max_Progress:int = 99;

        public function LoadingProgress()
        {
            Max_Progress = 99;
            Min_Progress = 0;
            return;
        }// end function

        public function next() : void
        {
            (progress + 1);
            return;
        }// end function

        public function get progress() : int
        {
            return _progress;
        }// end function

        public function set progress(param1:int) : void
        {
            if (_progress == param1)
            {
                return;
            }
            if (param1 > Max_Progress || param1 < Min_Progress)
            {
                return;
            }
            _progress = param1;
            update();
            return;
        }// end function

        private function updateLabel() : void
        {
            var _loc_1:* = NaN;
            var _loc_2:* = NaN;
            tbxPercent.text = String(_progress);
            _loc_1 = tbxPercent.textWidth + percentIcon.width;
            _loc_2 = (1000 - _loc_1) / 2 - 8;
            tbxPercent.x = _loc_2;
            percentIcon.x = _loc_2 + tbxPercent.textWidth + 2;
            return;
        }// end function

    }
}
