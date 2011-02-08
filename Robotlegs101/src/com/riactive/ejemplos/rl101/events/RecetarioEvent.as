package com.riactive.ejemplos.rl101.events
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class RecetarioEvent extends Event
	{
		//Aqui la constante para las llamadas.
		public static const PETICION:String = "recetario_peticion";
		public static const RESULTADO:String = "recetario_resultado";
		public static const ERROR:String = "recetario_error";
		
		//Aqui va el array con puros objetos de Receta
		public var modelo:ArrayCollection;
		
		public function RecetarioEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}