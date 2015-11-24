package  {
	
	import flash.display.MovieClip;
	
	
	public class LoadingProgress extends MovieClip {
		
		private var _progress:int;
        public var Min_Progress:int = 0;
        public var Max_Progress:int = 99;
		
		public function LoadingProgress() {
			// constructor code
		}
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
		private function update() : void
        {
			this.gotoAndStop(_progress);
            return;
        }// end function
		public function next() :void
		{
			progress = progress +1;
		}

		
	}
	
}
