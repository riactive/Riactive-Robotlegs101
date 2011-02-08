package com.riactive.ejemplos.rl101.view.mediators
{
	import com.riactive.ejemplos.rl101.events.RecetarioEvent;
	import com.riactive.ejemplos.rl101.view.components.Robotlegs101;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class MainMediator extends Mediator
	{
		[Inject]
		public var view:Robotlegs101;
		
		public function MainMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			//Con esta linea mapeamos el evento de nuestra vista y en especifico de nuestro boton a la funcion obtenerRecetario
			eventMap.mapListener(view.obtenerButton, MouseEvent.CLICK, obtenerRecetario, MouseEvent);
			
			//Con esta linea ponemos a escuchar a este mediador cuando su propiedad eventDispatcher (aka el contexto del framework)
			//distribulla el evento RESULTADO
			eventMap.mapListener(eventDispatcher, RecetarioEvent.RESULTADO, resultado, RecetarioEvent);
		}
		
		private function obtenerRecetario(event:MouseEvent):void
		{
			//Vaciamos el recetarioDataGrid
			view.recetasDataGrid.dataProvider = null;
			//Creamos y distribuimos el evento con la peticion del recetario.
			var evento:RecetarioEvent = new RecetarioEvent(RecetarioEvent.PETICION);
			dispatch(evento);
		}
		
		private function resultado(event:RecetarioEvent):void
		{
			//Aqui asignamos el resultado a el dataprovider de nuestro data grid
			view.recetasDataGrid.dataProvider = event.modelo;
			trace(event.modelo.length);
		}
		
	}
	
}