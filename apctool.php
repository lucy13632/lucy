<?php
 $success = NULL;
 $apc_key = "edit:menu:0:en_US";
 $cache = apc_fetch($apc_key, $success);
 echo $cache->data;

