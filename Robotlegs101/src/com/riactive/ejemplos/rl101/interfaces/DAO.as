package com.riactive.ejemplos.rl101.interfaces
{
	import com.riactive.ejemplos.rl101.model.valueobjects.Receta;
	
	import mx.collections.ArrayCollection;

	public interface DAO
	{
		//El contrato que tienen que cumplir el servicio
		function obtenerTodos():void;
		function obtenerPorID(id:uint):void;
		function actualizar(receta:Receta):void;
		function borrar(id:uint):void;
		function agregar(receta:Receta):void;
	}
}