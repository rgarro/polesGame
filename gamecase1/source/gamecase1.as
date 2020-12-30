class gamecase1 {
	
	public var poles:Object;
	private var temp:Object;
	public var apuntador:Object;
	public var dscorecard:Object;
	public var poleAmount:Number;
	public var polePerRow:Number;
	public var resetbtn:Object;
	
	public function gamecase1() {
		this.poleAmount = 97;
		this.polePerRow = 12;
		this.setBG();
		this.fillPoleGround();
		this.setResetBTN();
		this.setApuntador();
		this.setScoreCard();
	}
	
	public function fillPoleGround(){
		var i:Number;
		poles = new Object();
		var xpos:Number;
		var ypos:Number;
		var mod:Number;
		var posflag:Number;
		var polename:String;
		posflag = 250;
		xpos = 250;
		ypos = 55;
		i = 0;
		while (i < this.poleAmount) {
			polename = "pole"+i+"_mc";
			this.temp = dynpole(_root.attachMovie("pole", polename, _root.getNextHighestDepth()));
			this.poles[i] = this.temp
			this.poles[i].setPole(xpos, ypos);
			this.poles[i].mynum = i;
			xpos += 30;
			mod = i % this.polePerRow;			
			if(mod == (this.polePerRow - 1)){
				ypos += 30;
				posflag -= 30;
				xpos = posflag;
			}
			i++;
		}
		this.temp.removeMovieClip();
	}
	
	public function setBG(){
			_root.attachMovie("polesbg","polesbg_mc", _root.getNextHighestDepth());
			_root.polesbg_mc._x = 38.5;
			_root.polesbg_mc._y = 85.0;
			_root.polesbg_mc._alpha = 50;
		}
		
	public function setApuntador(){
			this.apuntador = dynpointer(_root.attachMovie("pointer", "apuntador_mc", _root.getNextHighestDepth()));
		}	
	public function setResetBTN(){
			this.resetbtn = dynresetbtn(_root.attachMovie("resetbtn", "resetbtn_mc", _root.getNextHighestDepth()));
			_root.resetbtn_mc._x = 423;
			_root.resetbtn_mc._y = 341;
		}
		
	public function resetPoleGround(){
			var i:Number;
			var polename:String;
			i = 0;
			while (i < this.poleAmount) {
				polename = "pole"+i+"_mc";
				_root[polename].removeMovieClip();
				i++;
			}
			_root.points = 0;
			_root.started = 1;
			this.fillPoleGround();
		}	
	
	public function setScoreCard(){
			this.dscorecard = scorecard(_root.attachMovie("scorecard", "scorecard_mc", _root.getNextHighestDepth()));
			_root.scorecard_mc._x = 5;
			_root.scorecard_mc._y = 7;	
		}
	
	public function tester(){
		var i:Number;
		var j:Number;
		var polename:String;
		var polenameB:String;
		for(i=0;i<this.poleAmount;i++){
				polename = "pole"+i+"_mc";
				for(j=0;j<this.poleAmount;j++){
					polenameB = "pole"+i+"_mc";
					if (_root[polename].hitTest(_root[polenameB])) {
							this.poles[j] = this.temp
							this.temp.rolo();
							//this.rotatePole();
						}
					}
			}
	}
}
