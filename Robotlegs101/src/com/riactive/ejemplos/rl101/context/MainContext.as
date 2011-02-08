package com.riactive.ejemplos.rl101.context
{
	import com.riactive.ejemplos.rl101.commands.PeticionRecetarioCommand;
	import com.riactive.ejemplos.rl101.events.RecetarioEvent;
	import com.riactive.ejemplos.rl101.interfaces.DAO;
	import com.riactive.ejemplos.rl101.model.RecetarioModel;
	import com.riactive.ejemplos.rl101.services.RecetarioDAOImp;
	import com.riactive.ejemplos.rl101.view.components.Robotlegs101;
	import com.riactive.ejemplos.rl101.view.mediators.MainMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class MainContext extends Context
	{
		public function MainContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			//Registramos la inyeccion del modelo
			injector.mapSingleton(RecetarioModel);
			
			//Registramos la inyeccion de DAO para que responda como RecetarioDAOImp
			injector.mapSingletonOf(DAO, RecetarioDAOImp);
			
			
			//Mapeamos el evento con el contexto, el ultimo parametro es si va a ser de una sola ejecucion.
			commandMap.mapEvent(RecetarioEvent.PETICION, PeticionRecetarioCommand, RecetarioEvent, false);
			
			//Aqui preparamos a la vista con su mediador. Este es el primer mapeo.
			mediatorMap.mapView(Robotlegs101, MainMediator);
		}
	}
}