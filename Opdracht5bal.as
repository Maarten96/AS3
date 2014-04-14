package  
{
	
	import flash.events.MouseEvent;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.text.TextField;

	/**
	 * ...
	 * @author Maarten Molendijk
	 */
	public class Opdracht5Bal extends Sprite
	{
		public var rondje:Sprite = new Sprite();
		public var vx:Number = 9.81 * Math.random() / 1.3806488;
		public var vy:Number = 9.81 * Math.random() / 1.3806488;
		public var hor:Boolean = false;
		public var ver:Boolean = false;
		
		public function Opdracht5Bal(x:int, y:int, vergroting:Number, verplaatsingx:Number, verplaatsingy:Number):void
		{
			
			rondje.graphics.beginFill(0xFFFFFF);
			rondje.graphics.lineStyle(3 * vergroting, 0xFF0000);
			rondje.graphics.drawCircle(220 * vergroting + verplaatsingx, 300 * vergroting + verplaatsingy, 210 * vergroting);
			rondje.graphics.endFill();
			
			
			rondje.x = x;
			rondje.y = y;
			
			addChild (rondje)
			rondje.addEventListener(Event.ENTER_FRAME, beweegx);
			rondje.addEventListener(Event.ENTER_FRAME, beweegy);
			rondje.addEventListener(MouseEvent.CLICK, Klik);
			
		}
		
		public function beweegx(e:Event):void
		{
			
			rondje.x += vx;  
            if (hor == false)
			{   
                
				if (rondje.x > 800 - 55)   
                {   
					
					vx *= -1;   
                    hor = true;
					
                }   
				
			}   
            
			else   
            {   
                
				if (rondje.x < 0 + 5)   
                {   
                    
					vx *= -1;
                    hor = false;
					
                }   
				
            }
			
		//	trace(vx)
		}
		
		public function beweegy(e:Event):void
		{
			
			rondje.y += vy;  
            if (ver == false)
			{   
                
				if (rondje.y > 600 - 55)   
                {   
                   
					vy *= -1;   
                    ver = true;
					
                }   
				
			}   
            
			else   
            {   
                
				if (rondje.y < 0 + 5)   
                {   
                    
					vy *= -1;   
                    ver = false;  
					
                }   
				
            }
			
		//	trace(vy)
		}
		
		public function Klik(e:MouseEvent):void
		{
			
			removeChild(rondje);
			rondje.removeEventListener(Event.ENTER_FRAME, beweegx);
			rondje.removeEventListener(Event.ENTER_FRAME, beweegy);
			
		}
		
	}

}
