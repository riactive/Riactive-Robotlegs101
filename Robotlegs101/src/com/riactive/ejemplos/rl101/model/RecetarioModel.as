package com.riactive.ejemplos.rl101.model
{
	import com.riactive.ejemplos.rl101.events.RecetarioEvent;
	
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;

	public class RecetarioModel extends Actor
	{
		private var _modelo:ArrayCollection;
		
		public function RecetarioModel()
		{
		}

		public function get modelo():ArrayCollection
		{
			return _modelo;
		}

		public function set modelo(value:ArrayCollection):void
		{
			//Cada que alguien (servicio o alguna inyeccion) actualice el modelo
			//se distribulle el evento, con el nuevo modelo.
			_modelo = value;

			var evento:RecetarioEvent = new RecetarioEvent(RecetarioEvent.RESULTADO);
			evento.modelo = _modelo;
			dispatch(evento);
		}

	}
}