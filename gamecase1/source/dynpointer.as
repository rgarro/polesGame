class dynpointer extends MovieClip {
		private var  te:Object;
		
		public function dynpointer(){
				Mouse.hide();
			}
		
		public function onEnterFrame() {			
			/*var yChange:Number;
			var xChange:Number;
			var yMove:Number;
			var xMove:Number;
			yChange = Math.round(_root._ymouse-this._y);
			xChange = Math.round(_root._xmouse-this._x);
			yMove = Math.round(yChange/5);
			xMove = Math.round(xChange/5);
			this._y += yMove;
			this._x += xMove;*/
			this._y = _root._ymouse;
			this._x = _root._xmouse;
			}
	}