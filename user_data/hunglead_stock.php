<?php
// 2016/02/01
// ./html/zaiko_robot/Update_Stock.php
// に移行後、このファイルは削除予定

/**
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2008 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */

require_once "../../html/require.php";
require_once(CLASS_PATH . "helper/SC_Helper_ZaikoRobot.php");

set_time_limit(0);

// IDチェック
$objZaiko = new SC_Helper_ZaikoRobot();
if ($objZaiko->checkZaikoId() === true) {
    // 在庫調整
    $objZaiko->updateZaiko();
}
?>