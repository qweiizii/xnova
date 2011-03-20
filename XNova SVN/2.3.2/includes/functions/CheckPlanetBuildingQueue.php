<?php

//version 1

function CheckPlanetBuildingQueue ( &$CurrentPlanet, &$CurrentUser )
{
	global $resource,$db;

	$RetValue     = false;
	if ($CurrentPlanet['b_building_id'] != 0)
	{
		$CurrentQueue  = $CurrentPlanet['b_building_id'];
		if ($CurrentQueue != 0)
		{
			$QueueArray    = explode ( ";", $CurrentQueue );
			$ActualCount   = count ( $QueueArray );
		}

		$BuildArray   = explode (",", $QueueArray[0]);
		$BuildEndTime = floor($BuildArray[3]);
		$BuildMode    = $BuildArray[4];
		$Element      = $BuildArray[0];
		array_shift ( $QueueArray );

		if ($BuildMode == 'destroy')
			$ForDestroy = true;
		else
			$ForDestroy = false;

		if ($BuildEndTime <= time())
		{
			$Needed  = GetBuildingPrice ($CurrentUser, $CurrentPlanet, $Element, true, $ForDestroy);
			$Units   = $Needed['metal'] + $Needed['crystal'] + $Needed['deuterium'];

			$current = intval($CurrentPlanet['field_current']);
			$max     = intval($CurrentPlanet['field_max']);

			if ($CurrentPlanet['planet_type'] == 3)
			{
				if ($Element == 41)
				{
					$current += 1;
					$max     += FIELDS_BY_MOONBASIS_LEVEL;
					$CurrentPlanet[$resource[$Element]]++;
				}
				elseif ($Element != 0)
				{
					if ($ForDestroy == false)
					{
						$current += 1;
						$CurrentPlanet[$resource[$Element]]++;
					}
					else
					{
						$current -= 1;
						$CurrentPlanet[$resource[$Element]]--;
					}
				}
			}
			elseif ($CurrentPlanet['planet_type'] == 1)
			{
				if ($ForDestroy == false)
				{
					$current += 1;
					$CurrentPlanet[$resource[$Element]]++;
				}
				else
				{
					$current -= 1;
					$CurrentPlanet[$resource[$Element]]--;
				}
			}
			if (count ( $QueueArray ) == 0)
				$NewQueue = 0;
			else
				$NewQueue = implode (";", $QueueArray );

			$CurrentPlanet['b_building']    = 0;
			$CurrentPlanet['b_building_id'] = $NewQueue;
			$CurrentPlanet['field_current'] = $current;
			$CurrentPlanet['field_max']     = $max;

			$QryUpdatePlanet  = "UPDATE {{table}} SET ";
			$QryUpdatePlanet .= "`".$resource[$Element]."` = '".$CurrentPlanet[$resource[$Element]]."', ";
			$QryUpdatePlanet .= "`b_building` = '". $CurrentPlanet['b_building'] ."' , ";
			$QryUpdatePlanet .= "`b_building_id` = '". $CurrentPlanet['b_building_id'] ."' , ";
			$QryUpdatePlanet .= "`field_current` = '" . $CurrentPlanet['field_current'] . "', ";
			$QryUpdatePlanet .= "`field_max` = '" . $CurrentPlanet['field_max'] . "' ";
			$QryUpdatePlanet .= "WHERE ";
			$QryUpdatePlanet .= "`id` = '" . $CurrentPlanet['id'] . "';";
			$db->query( $QryUpdatePlanet, 'planets');

			$RetValue = true;
		}
		else
			$RetValue = false;
	}
	else
	{
		$CurrentPlanet['b_building']    = 0;
		$CurrentPlanet['b_building_id'] = 0;

		$QryUpdatePlanet  = "UPDATE {{table}} SET ";
		$QryUpdatePlanet .= "`b_building` = '". $CurrentPlanet['b_building'] ."' , ";
		$QryUpdatePlanet .= "`b_building_id` = '". $CurrentPlanet['b_building_id'] ."' ";
		$QryUpdatePlanet .= "WHERE ";
		$QryUpdatePlanet .= "`id` = '" . $CurrentPlanet['id'] . "';";
		$db->query( $QryUpdatePlanet, 'planets' );

		$RetValue = false;
	}
	return $RetValue;
}
?>