package com.riactive.ejemplos.rl101.commands
{
	import com.riactive.ejemplos.rl101.events.RecetarioEvent;
	import com.riactive.ejemplos.rl101.interfaces.DAO;
	import com.riactive.ejemplos.rl101.services.RecetarioDAOImp;
	
	import org.robotlegs.mvcs.Command;
	
	public class PeticionRecetarioCommand extends Command
	{
		//Realizamos la inyeccion del evento que estamos por ejecutar
		[Inject]
		public var event:RecetarioEvent;
		
		[Inject]
		public var recetarioServicio:DAO;
		
		public function PeticionRecetarioCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			recetarioServicio.obtenerTodos();
		}
	}
}