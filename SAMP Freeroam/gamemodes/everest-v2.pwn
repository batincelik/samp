// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>
#include <zcmd>
#include <sscanf2>
#include <streamer>

#define sscanf2

// NEWLER //

new Injury[MAX_PLAYERS];
new bool:PosAldim[MAX_PLAYERS];
new Float:exPos[MAX_PLAYERS][3];



//PRAGMALAR//

#pragma tabsize 0

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Everest Freeroam V2.0 by Aspera Coding");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print("Everest Freeroam V2.0 by Aspera Coding");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
	SetGameModeText("Everest Freeroam V2.0");
    AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);

// SAN FIERRO SPAWN MAP
CreateObject(18783, -2055.23340, -265.06589, 36.63610,   0.00000, 0.00000, 0.00000);
CreateObject(5130, -2055.18872, -249.17529, 36.12840,   0.00000, 0.00000, 45.00000);
CreateObject(18761, -2045.59937, -102.51556, 34.18958,   0.00000, 0.00000, 0.00000);
CreateObject(3534, -2055.49072, -103.01662, 35.52630,   0.00000, 0.00000, 0.00000);
CreateObject(3534, -2056.47510, -103.23521, 35.52630,   0.00000, 0.00000, 0.00000);
CreateObject(7392, -2082.70386, -245.47693, 42.85880,   0.00000, 0.00000, 55.00000);
CreateObject(13562, -2018.11963, -137.18250, 35.37620,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2065.18652, -269.42551, 40.86230,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2065.18579, -259.84891, 40.86230,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2065.18579, -259.84891, 40.86230,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2065.18652, -269.42551, 40.86230,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2045.28491, -259.74942, 40.86230,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2045.27661, -269.35574, 40.86230,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2060.35913, -274.06567, 40.88140,   0.00000, 0.00000, -89.00000);
CreateObject(19454, -2050.74780, -273.88150, 40.88340,   0.00000, 0.00000, -89.00000);
CreateObject(19454, -2050.04858, -273.86230, 40.88340,   0.00000, 0.00000, -89.00000);
CreateObject(640, -2046.24500, -254.09689, 3.39300,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.71924, -272.69159, 39.81230,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.71997, -270.01871, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.71582, -267.33630, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.71484, -264.65939, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.71631, -261.98111, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.71313, -259.30121, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2064.70947, -256.62311, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.75305, -272.37039, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.75684, -269.92050, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.75781, -267.24161, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.76025, -264.56131, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.76172, -261.88770, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.76489, -259.20850, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(638, -2045.76550, -256.52740, 39.81030,   0.00000, 0.00000, 0.00000);
CreateObject(19128, -2052.34839, -266.80722, 39.11860,   0.00000, 0.00000, 0.00000);
CreateObject(19128, -2052.34839, -262.86469, 39.11860,   0.00000, 0.00000, 0.00000);
CreateObject(19128, -2056.31226, -266.84061, 39.11860,   0.00000, 0.00000, 0.00000);
CreateObject(19128, -2056.32471, -262.86230, 39.11860,   0.00000, 0.00000, 0.00000);
CreateObject(19056, -2015.76770, -187.99576, 34.96020,   0.00000, 0.00000, 0.00000);
CreateObject(19056, -2015.58179, -180.49484, 34.96020,   0.00000, 0.00000, 0.00000);
CreateObject(19056, -2015.45691, -162.01851, 34.96020,   0.00000, 0.00000, 0.00000);
CreateObject(19056, -2014.72424, -151.50867, 34.96020,   0.00000, 0.00000, 0.00000);
CreateObject(13667, -2025.41162, -243.63220, 50.35000,   0.00000, 0.00000, 142.00000);
CreateObject(18655, -2046.44202, -273.08731, 39.13230,   0.00000, 0.00000, -25.00000);
CreateObject(18655, -2063.62915, -273.18741, 39.13230,   0.00000, 0.00000, 222.00000);
CreateObject(19129, -2021.84644, -180.05730, 34.31067,   0.00000, 0.00000, 0.00000);
CreateObject(19129, -2021.83203, -160.20773, 34.31067,   0.00000, 0.00000, 0.00000);
CreateObject(19056, -2015.75867, -171.54497, 34.96020,   0.00000, 0.00000, 0.00000);
CreateObject(19454, -2050.04858, -273.86230, 40.88340,   0.00000, 0.00000, -89.00000);
CreateObject(18662, -2058.27295, -273.82779, 40.30830,   0.00000, 0.00000, -84.00000);
CreateObject(18662, -2052.83252, -273.75201, 40.30830,   0.00000, 0.00000, -84.00000);
CreateVehicle(411, -2018.2983, -166.7455, 35.0442, 98.0000, -1, -1, 100);
CreateVehicle(411, -2018.9098, -155.5396, 35.0442, 98.0000, -1, -1, 100);
CreateVehicle(411, -2018.7539, -176.6622, 35.0442, 98.0000, -1, -1, 100);
CreateVehicle(411, -2018.8569, -184.5820, 35.0442, 98.0000, -1, -1, 100);
CreateVehicle(522, -2025.0837, -160.5979, 35.7451, -251.0000, -1, -1, 100);
CreateVehicle(522, -2024.7384, -161.7907, 35.7451, -251.0000, -1, -1, 100);
CreateVehicle(522, -2024.5842, -172.8846, 35.7451, -265.0000, -1, -1, 100);
CreateVehicle(522, -2024.6005, -174.4037, 35.7451, -265.0000, -1, -1, 100);
CreateVehicle(522, -2024.5990, -179.9150, 35.7451, -265.0000, -1, -1, 100);
CreateVehicle(522, -2024.3506, -181.8367, 35.7451, -265.0000, -1, -1, 100);
CreateVehicle(522, -2024.0048, -187.1590, 35.7451, -265.0000, -1, -1, 100);
CreateVehicle(522, -2024.0326, -188.4188, 35.7451, -265.0000, -1, -1, 100);

UsePlayerPedAnims();



	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	if(GetPVarInt(playerid, "siracreqq") == 0)
	{
		SetPlayerPos(playerid,-1441.4991,393.8694,694.9886);
		SetPlayerFacingAngle(playerid,270.8115);
		SetPlayerTime(playerid,0,0);
		SetPlayerInterior(playerid, 0);
		InterpolateCameraPos(playerid, -1364.240356, 393.983825, 705.295043, -1413.108154, 394.089630, 698.621643, 7777);
		InterpolateCameraLookAt(playerid, -1369.161865, 394.075439, 704.417114, -1418.082763, 394.155029, 698.122802, 7777);
		SetPVarInt(playerid, "siracreqq", 1);
	}
	return true;
}
public OnPlayerConnect(playerid)
{
 // SKIN SECME YERI //
	RemoveBuildingForPlayer(playerid, 10898, -1407.0000, 390.9609, 13.1016, 0.25);
    RemoveBuildingForPlayer(playerid, 10826, -1407.0000, 390.9609, 13.1016, 0.25);


RemoveBuildingForPlayer(playerid, 11372, -2076.4375, -107.9297, 36.9688, 0.25);
RemoveBuildingForPlayer(playerid, 11099, -2056.9922, -184.5469, 34.4141, 0.25);
RemoveBuildingForPlayer(playerid, 11014, -2076.4375, -107.9297, 36.9688, 0.25);
SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}Sunucumuza hoþgeldiniz.");
SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}2020 - 20xx");
SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}everestfreeroam.tr.gg");

    PosAldim[playerid] = false;
   return 1;



}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{

	SetPlayerPos(playerid, -2054.7307,-267.4548,40.1889);
	SetPlayerVirtualWorld(playerid, 0);
	SetPlayerArmour(playerid, Float:100);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{

    return 1;

}

public OnPlayerCommandText(playerid, cmdtext[])
{

  return 1;

}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{


	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}


public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
{
    if(issuerid != INVALID_PLAYER_ID)
    {
		Injury[playerid] = gettime();
	}
	return 1;
}
public OnPlayerCommandReceived(playerid, cmdtext[])
{
	if((gettime() < (Injury[playerid] + 3)))
	{
		new str[128];
    	format(str,sizeof(str),"EG »{17F0D5} Yaralý iken 3 saniye komut kullanamazsýnýz. (%i Saniye)",((Injury[playerid] + 3) - gettime()));
		SendClientMessage(playerid, -1, str);
		return 0;
	}
    return 1;
}


public OnPlayerCommandPerformed(playerid, cmdtext[], success)
{

if(!success) return SendClientMessage(playerid,  0xFF0000FC, "EG » {17F0D5}Hatalý veya eksik komut kullandýnýz.");

return 1;

}

CMD:credits(playerid, params[])
{
    new credits[1000];
    strcat(credits, "{33FF33}EG » {FFFFFF}Merhaba, aþaðýda sunucunun yapýmcýlarýný görebilirsin. {33FF33}\n\n");
    strcat(credits, "{FFA600}Kurucu: Aspera\n");
    strcat(credits, "\t{33CCCC}Pawn Coder : Aspera\n");
    strcat(credits, "{FFA600}Mapper : RaqueL\n");
    strcat(credits, "\t{33CCCC}Web Master: HydroManiac.\n");
    strcat(credits, "{FFA600}Tester: Aspera & Alper.\n");
    strcat(credits, "\t{33CCCC}Web Site : everestfr.tr.gg\n\n");
    strcat(credits, "{33FF33}Sunucumuzun yapýmcýlarýna baktýðýn için teþekkürler.");
    ShowPlayerDialog(playerid, 1, DIALOG_STYLE_MSGBOX, "{33FF33}{17F0D5} Everest Freeroam | {33CCCC}Yapýmcýlar {33FF33}", credits, "Tamam", "Kapat");
    return 1;
}

CMD:silahver(playerid, params[])
{
	{
		GivePlayerWeapon(playerid, 24, 9999);
		GivePlayerWeapon(playerid, 26, 9999);
		GivePlayerWeapon(playerid, 30, 9999);
		GivePlayerWeapon(playerid, 34, 9999);
		SendClientMessage( playerid, 0xFF0000FC, "EG » {17F0D5}Deagle, Sawn-off, AK47 ve Sniper silahlari verilmiþtir." );
		SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}Eðer Sawn-off yerine Combat isterseniz, /cshotver yazabilirsiniz.");
		return 1;
	}
}

CMD:can(playerid, params[])
{
		SetPlayerHealth(playerid, 100);
		SendClientMessage( playerid, 0xFF0000FC, "EG » {17F0D5}Canýnýz fullendi." );

		return 1;
}

CMD:zirh(playerid, params[])
{
		SetPlayerArmour(playerid, 100);
		SendClientMessage( playerid, 0xFF0000FC, "EG » {17F0D5}Zýrhýnýz fullendi." );

		return 1;
	}

CMD:cshotver(playerid, params[])

     {
		GivePlayerWeapon(playerid, 27, 9999);
		SendClientMessage( playerid, 0xFF0000FC, "EG » {17F0D5}Sawn yerine CombatShotgun verildi." );

		return 1;
	}

 CMD:deagledm(playerid, params[])
    {

     SetPlayerInterior(playerid, 1); // setting his interior to 1(Check Interiors list to see which one we have set to the DM arena
     SetPlayerPos(playerid, 1412.639892, -1.787510, 1000.924377); // coordinates for his player spawn
     ResetPlayerWeapons(playerid);
     GivePlayerWeapon(playerid, 24, 9999);
     return 1;
    }

CMD:dmayril(playerid, params[])
{

	SetPlayerPos(playerid, -2054.7307,-267.4548,40.188);
	ResetPlayerWeapons(playerid);
	SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}DM'den baþarý ile ayrýldýnýz.");
     return 1;
}

CMD:yardim(playerid, params[])
{
    new yardim[1000];
    strcat(yardim, "{33FF33}» {FFFFFF}Merhaba, aþaðýda sunucunun komutlarýný görebilirsiniz! {33FF33}\n\n");
    strcat(yardim, "{FFA600}/silahver - Silah alýrsýnýz.");
    strcat(yardim, "{33CCCC}/cshotver - CombatShotgun alýrsýnýz.\n");
    strcat(yardim, "{FFA600}/deagledm - DeagleDM'sine gidersiniz.\n");
    strcat(yardim, "{33CCCC}/dmayril - DM'lerden ayrýlýrsýnýz.\n");
    strcat(yardim, "{FFA600}/can - Can seviyenizi fullersiniz.\n");
    strcat(yardim, "{33CCCC}/zirh - Zýrh seviyeinizi fullersiniz.\n");
    strcat(yardim, "{33FF33}/veh -  Araç id veya isimi ile araç spawnlayabilirsiniz.\n");
    strcat(yardim, "{FFA600} /credits - Sunucu yapimcilarini gorebilirsiniz.\n");
    strcat(yardim, "{33FF33}/kill -  Kendinizi öldürürsünüz.\n");
    strcat(yardim, "{FFA600}/myskin -  Skininizi degistirirsiniz.\n");
    strcat(yardim, "{33FF33}/savepos -  Bir bölge kaydedersiniz.\n");
    strcat(yardim, "{FFA600}/loadpos -  Kaydettiðiniz bölgeye dönersiniz.\n");
    ShowPlayerDialog(playerid, 1, DIALOG_STYLE_MSGBOX, "{33FF33}{17F0D5} Everest Freeroam | {33CCCC} Komutlar {33FF33}", yardim, "Tamam", "Kapat");
    return 1;
}

CMD:kill(playerid, params[])
{

  SetPlayerHealth(playerid, Float:0);
  SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}5000$ karþýlýðýnda kendinizi öldürdünüz.");
  return 1;

}

CMD:myskin(playerid,params[])
{
    new skinnumber, skinid, string[128];
    if(sscanf(params, "d", skinid)) return SendClientMessage(playerid, -1, "{ffff00}EG » {ffffff}/myskin <skinid>");
    if(skinid < 0 || skinid > 299) return SendClientMessage(playerid, 0xFF000000, "{ff0000}EG » {ffffff}Skinin 0 ile 299 arasi olmalý!");
    SetPlayerSkin(playerid, skinid);
    skinnumber = GetPlayerSkin(playerid);
    format(string, sizeof(string), "{ffff00}EG » {ffffff}Skininiz deðiþti. -> ({17F0D5}%d)", skinnumber);
    SendClientMessage(playerid, -1, string);
    return 1;
}

 CMD:jetpack(playerid,params[])

    {
        SetPlayerSpecialAction(playerid, 2);
        SendClientMessage(playerid,0xFF0000FC, "EG » {17F0D5}Jetpack'iniz verildi.");

    return 1;
}

CMD:alperkralkomut(playerid, params[])
{

	GivePlayerMoney(playerid, 9999999999);
	SetPlayerScore(playerid, 99999999);

   return 1;
}

CMD:savepos(playerid, params[])
{
    PosAldim[playerid] = true;
    GetPlayerPos(playerid, exPos[playerid][0], exPos[playerid][1], exPos[playerid][2]);
    SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}Bulunduðunuz yeri kaydettiniz");
	SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}Tekrar ýþýnlanmak için /loadpos kullanýnýz.");
    return 1;
}
CMD:loadpos(playerid, params[])
{
    if(PosAldim[playerid] == false) return SendClientMessage(playerid,0xFF0000FC, "EG » {17F0D5}Kayýtlý bir bölgeniz bulunmamaktadýr. /savepos yazarak kaydedebilirsiniz.");
    SetPlayerPos(playerid, exPos[playerid][0], exPos[playerid][1], exPos[playerid][2]);
    SendClientMessage(playerid, 0xFF0000FC, "EG » {17F0D5}Kayýt ettiðiniz bölgeye baþarýyla ýþýnlandýnýz!");
    return 1;
}

