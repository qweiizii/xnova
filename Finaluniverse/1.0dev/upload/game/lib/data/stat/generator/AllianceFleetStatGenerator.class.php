<?php
/*
  This file is part of WOT Game.

    WOT Game is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    WOT Game is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with WOT Game.  If not, see <http://www.gnu.org/licenses/>.
*/

require_once(LW_DIR.'lib/data/stat/generator/AlliancePointsStatGenerator.class.php');

/**
 * This class creates the stats of the points of the users.
 * 
 * @author		Biggerskimo
 * @copyright	2008-2009 Lost Worlds
 */
class AllianceFleetStatGenerator extends AlliancePointsStatGenerator {
	protected $userPendant = 'fleet';
}
?>