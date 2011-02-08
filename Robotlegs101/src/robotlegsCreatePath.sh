#!/bin/bash

# Author Francisco Granados
# Ver: 1.0
# Desc: Script para crear una ramificacion de carpetas en tu nuevo proyecto de Robotlegs
# Contact: @GzFrancisco
# SeeMore: robotlegs.org & riactive.com

if [ -z "$1" ]; then 
 echo uso: $0 nombre del paquete ej. com.riactive.robotlegs.nombreproyecto
 exit
fi

declare -a paqARR
paqARR=$(echo $1 | tr "." "\n")

for i in $paqARR
do
	mkdir $i;
	chmod g+rwx $i;
	cd $i;
	echo directorio $i creado;
done

mkdir assets;
chmod g+rwx assets;
mkdir interfaces
chmod g+rwx interfaces;
mkdir helpers
chmod g+rwx helpers;
mkdir context
chmod g+rwx context;
mkdir signals
chmod g+rwx signals;
mkdir skins
chmod g+rwx skins;
mkdir styles
chmod g+rwx styles;
mkdir model
chmod g+rwx model;
cd model
mkdir valueobjects
chmod g+rwx valueobjects;
cd ..
mkdir commands
chmod g+rwx commands;
mkdir services
chmod g+rwx services;
mkdir view
chmod g+rwx view;
cd view
mkdir mediators
chmod g+rwx mediators;
mkdir components
chmod g+rwx components;
cd components
mkdir renderers
chmod g+rwx renderers;
cd ./../..
mkdir events
chmod g+rwx events;

exit