package com.riactive.ejemplos.rl101.services
{
	import com.riactive.ejemplos.rl101.interfaces.DAO;
	import com.riactive.ejemplos.rl101.model.RecetarioModel;
	import com.riactive.ejemplos.rl101.model.valueobjects.Receta;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;
	
	import org.robotlegs.mvcs.Actor;
	
	public class RecetarioDAOImp extends Actor implements DAO
	{
		[Inject]
		public var recetarioModel:RecetarioModel;
		
		public function RecetarioDAOImp()
		{
			super();
		}
		
		public function obtenerTodos():void
		{
			trace("Aqui estan todos");
			obtenerTodosResult();
		}
		
		public function obtenerPorID(id:uint):void
		{
		}
		
		public function actualizar(receta:Receta):void
		{
		}
		
		public function borrar(id:uint):void
		{
		}
		
		public function agregar(receta:Receta):void
		{
		}
		
		public function obtenerTodosResult(event:ResultEvent = null):void
		{
			if(event == null){
				var coleccion:ArrayCollection = new ArrayCollection();
				
				for(var i:uint = 0; i < 5; i++){
					var recetai:Receta = new Receta();
					recetai.nombre = "receta"+i;
					recetai.receta = "preparacion"+i;
					recetai.recetaId = i;
					
					coleccion.addItem(recetai);
				}
				recetarioModel.modelo = coleccion;
			}
		}
	}
}