<!-- START BLOCK : vacaciones -->
<form action="game.php?page=options&mode=exit" method="post">
        <table width="519">
            <tr>
                <td class="c" colspan="2">{op_vacation_mode_active_message} {vacation_until}</td>
            </tr>
            <tr>
                <th>{op_end_vacation_mode}</th>
                <th><input type="checkbox" name="exit_modus" {opt_modev_exit}/></th>
            </tr>
            <tr>
                <th colspan="2"><input type="submit" value="{op_save_changes}" /></th>
            </tr>
        </table>
    </form>
<!-- END BLOCK : vacaciones -->
<!-- START BLOCK : options -->

<form action="game.php?page=options&mode=change" method="post">
    <table width="519">
    <tbody>
        <!-- START BLOCK : adm_frame -->
        <tr>
            <td class="c" colspan="2">{op_admin_title_options}</td>
        </tr><tr>
                <th>{op_admin_planets_protection}</th>
                <th><input name="adm_pl_prot"{adm_pl_prot_data} type="checkbox" /></th>
        </tr>
        <!-- END BLOCK : adm_frame -->
    <tr>
        <td class="c" colspan="2">{op_user_data}</td>
    </tr><tr>
        <th>{op_username}</th>
        <th><!--<input name="db_character" size="20" value="-->{opt_usern_data}<!--" type="text">--></th>
    </tr><tr>
        <th>{op_old_pass}</th>
        <th><input name="db_password" size="20" value="" type="password"></th>
    </tr><tr>
        <th>{op_new_pass}</th>
        <th><input name="newpass1"    size="20" maxlength="40" type="password"></th>
    </tr><tr>
        <th>{op_repeat_new_pass}</th>
        <th><input name="newpass2"    size="20" maxlength="40" type="password"></th>
    </tr><tr>
        <th><a title="{op_email_adress_descrip}">{op_email_adress}</a></th>
        <th><input name="db_email" maxlength="100" size="20" value="{opt_mail1_data}" type="text"></th>
    </tr><tr>
        {activate_status}

    </tr><tr>
        <td class="c" colspan="2">{op_general_settings}</td>
    </tr><tr>
        <th>{op_sort_planets_by}</th>
        <th>
            <select name="settings_sort">
            {opt_lst_ord_data}
            </select>
        </th>
    </tr><tr>
        <th>{op_sort_kind}</th>
        <th>
            <select name="settings_order">
            {opt_lst_cla_data}
            </select>
        </th>
    </tr><tr>
        <th>{op_skin_example}</th>
        <th><input name="dpath" maxlength="80" size="30" value="{opt_dpath_data}" onchange="this.form.skins.options[0].selected=true;"  type="text"><br>
            <select name="skins" onchange="this.form.dpath.value='';"><option id="skins" value='' >--ELEGIR--</option>{skins}</select>
        </th>
    </tr><!--<tr>
        <th>Template</th>
        <th> <select name="template"><option value='' >--ELEGIR--</option>{template}</select></th>
    </tr>--><tr>
        <th>{op_show_skin}</th>
        <th><input name="design"{opt_sskin_data} type="checkbox"></th>
                </tr><tr>
        <th><a title="{op_deactivate_ipcheck_descrip}">{op_deactivate_ipcheck}</a></th>
        <th><input name="noipcheck"{opt_noipc_data} type="checkbox" /></th>
    </tr><tr>
        <td class="c" colspan="2">{op_galaxy_settings}</td>
    </tr><tr>
        <th><a title="{op_spy_probes_number_descrip}">{op_spy_probes_number}</a></th>
        <th><input name="spio_anz" maxlength="2" size="2" value="{opt_probe_data}" type="text"></th>
    </tr><tr>
        <th>{op_toolt_data}</th>
        <th><input name="settings_tooltiptime" maxlength="2" size="2" value="{opt_toolt_data}" type="text"> {op_seconds}</th>
    </tr><tr>
        <th>{op_max_fleets_messages}</th>
        <th><input name="settings_fleetactions" maxlength="2" size="2" value="{opt_fleet_data}" type="text"></th>
    </tr><tr>
        <th>{op_show_ally_logo}</th>
        <th><input name="settings_allylogo"{opt_allyl_data} type="checkbox" /></th>
    </tr><tr>
        <td align="center" class="c">{op_shortcut}</td>
        <td align="center" class="c">{op_show}</td>
    </tr><tr>
        <th><img src="{dpath}img/e.gif"> {op_spy}</th>
        <th><input name="settings_esp"{user_settings_esp} type="checkbox" /></th>
    </tr><tr>
        <th><img src="{dpath}img/m.gif"> {op_write_message}</th>
        <th><input name="settings_wri"{user_settings_wri} type="checkbox" /></th>
    </tr><tr>
        <th><img src="{dpath}img/b.gif"> {op_add_to_buddy_list}</th>
        <th><input name="settings_bud"{user_settings_bud} type="checkbox" /></th>
    </tr><tr>
        <th><img src="{dpath}img/r.gif"> {op_missile_attack}</th>
        <th><input name="settings_mis"{user_settings_mis} type="checkbox" /></th>
    </tr><tr>
        <th><img src="{dpath}img/s.gif"> {op_send_report}</th>
        <th><input name="settings_rep"{user_settings_rep} type="checkbox" /></th>
    </tr><tr>
        <td class="c" colspan="2">{op_vacation_delete_mode}</td>
    </tr><tr>
        <th><a title="{op_activate_vacation_mode_descrip}">{op_activate_vacation_mode}</a></th>
        <th><input name="urlaubs_modus"{opt_modev_data} type="checkbox" /></th>
    </tr><tr>
        <th><a title="{op_dlte_account_descrip}">{op_dlte_account}</a></th>
        <th><input name="db_deaktjava"{db_deaktjava} type="checkbox" /></th>
    </tr><tr>
        <th colspan="2"><input value="{op_save_changes}" type="submit"></th>
    </tr>
    </tbody>
    </table>
    </form>
<!-- END BLOCK : options -->