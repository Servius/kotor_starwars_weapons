
if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )

end

if ( CLIENT ) then

	SWEP.PrintName			= "Battlerifle1"			
	SWEP.Author				= "TFA"
	SWEP.ViewModelFOV      	= 50
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.WepSelectIcon = surface.GetTextureID("HUD/killicons/DC15A")
	
	killicon.Add( "weapon_752_dc15a", "HUD/killicons/DC15A", Color( 255, 80, 0, 255 ) )
	
end

SWEP.HoldType				= "ar2"
SWEP.Base					= "tfa_swsft_base_servius"

SWEP.Category = "TFA EOTOR Weapons"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType = "ar2"
SWEP.ViewModelFOV = 56
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = true
SWEP.UseHands = true

SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(4, 8, 0.18), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.Primary.Sound = Sound ("combat/sounds.bif_00815.wav");
SWEP.Primary.ReloadSound = Sound ("weapons/DC15A_reload.wav");

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Recoil			= 0.5
SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Spread			= 0.0125
SWEP.Primary.IronAccuracy = .005	-- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.ClipSize		= 50
SWEP.Primary.RPM = 150
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"
SWEP.TracerName = "effect_sw_laser_red"

SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.SelectiveFire = true
SWEP.FireModes = {
	"3Burst",
	"Single"
}

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.Secondary.IronFOV = 70

SWEP.IronSightsPos = Vector(-7.401, -12, 2.099)
SWEP.IronSightsAng = Vector(-1.89, 0.282, 0)

SWEP.VElements = {
	["element_name"] = { type = "Model", model = "models/weapons/bc_1.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(-0.011, -2, 2), angle = Angle(90, 90, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["element_name2"] = { type = "Model", model = "models/weapons/bc_1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.279, 0.584, -4.468), angle = Angle(0, -90, 160.731), size = Vector(0.884, 0.884, 0.884), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


SWEP.BlowbackVector = Vector(0,-3,0.025)
SWEP.Blowback_Only_Iron  = false

SWEP.DoProceduralReload = true
SWEP.ProceduralReloadTime = 2.5