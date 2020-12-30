class scorecard extends MovieClip{
	//public var scoretext_txt:TextInput;
	
	public function scorecard(){
		//trace('cargando scorecard');
		}
		
	public function onEnterFrame(){
			_root.scorecard_mc.scoretext_txt.text = _root.points;
		}
}