package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author SmashedFrenzy16
	 */
	
	public class Main extends Sprite 
	{
		private var draw_is_true:Boolean;
		
		var color:int;
		
		public function Main() 
		{
			
			function draw(event:MouseEvent)
			{
                if (draw_is_true)
				{
                    graphics.lineTo(mouseX,mouseY);
                }
			}
			function start(event:MouseEvent):void 
			{
							
				graphics.moveTo(mouseX, mouseY);
							
				draw_is_true = true;
			}
			function stop(event:MouseEvent):void 
			{
							
				draw_is_true = false;
			}
			
			function changeColor(event:KeyboardEvent):void 
			{
				var val:uint = event.keyCode;
				
				switch(val) {
					
					case 82: // Red
						color = 0xFF0000;
						
						graphics.lineStyle(1, color);
						
						break;
					
					case 79: // Orange
						
						color = 0xFF8000;
						
						graphics.lineStyle(1, color);
						
						break;
					
					case 89: // Yellow
						
						color = 0xFFFF00;
						
						graphics.lineStyle(1, color);
						
						break;
					
					case 71: // Green
						
						color = 0x00FF00;
						
						graphics.lineStyle(1, color);
						
						break;
					
					case 66: // Blue
						
						color = 0x0000FF;
						
						graphics.lineStyle(1, color);
						
						break;
						
					case 73: // Indigo
						
						color = 0x4B0082;
						
						graphics.lineStyle(1, color);
						
						break;
						
					case 86: // Violet
						
						color = 0x7F00FF;
						
						graphics.lineStyle(1, color);
						
						break;
				}
				
			}
			
			graphics.lineStyle(1, color); // Edit thickness (first argument) and color (second argument) in this function
			draw_is_true = false;
			stage.addEventListener(MouseEvent.MOUSE_DOWN, start);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, draw);
			stage.addEventListener(MouseEvent.MOUSE_UP, stop);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, changeColor);
		}
		
		
	}
	
}