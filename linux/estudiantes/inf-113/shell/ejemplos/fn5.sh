#!/bin/sh

function prueba ()
{
	local local_var="local"
	global_var="global"
}

echo L:$local_var
echo G:$global_var
prueba
echo L:$local_var
echo G:$global_var
