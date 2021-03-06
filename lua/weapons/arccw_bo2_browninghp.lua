SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Black Ops" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "FNP-35"
SWEP.TrueName = "Browning HP"

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Another semi-automatic pistol designed by the legendary gunsmith, John Moses Browning. This 9mm pistol innovated with the use of double stack magazines which inspired many future handguns' designs."
SWEP.Trivia_Manufacturer = "FN Herstal"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1935

SWEP.Slot = 1

-- This is what governs the True Name feature. You can do extra stuff here such as changing a fictonal manufacturer to a real one!
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end


SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bo2_browninghp.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_bo2_browninghp.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-9, 3, -3.5),
    ang        =    Angle(-6, -2.5, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}
SWEP.ViewModelFOV = 60

SWEP.Damage = 26
SWEP.DamageMin = 16 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 6
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 250 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 13 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 8

SWEP.Recoil = 0.6
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 60

SWEP.AccuracyMOA = 13 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.ShootWhileSprint = false

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "bhp" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_BO2.BHP_Fire"
SWEP.ShootSoundSilenced = "ArcCW_BO2.M1911_Sil"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 3 -- which attachment to put the case effect on

SWEP.SightTime = 0.175

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.25,2,0.73),
    Ang = Angle(0, -0.115, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(1, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 3, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, -4, -5)
SWEP.HolsterAng = Angle(37.5, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["ammo_papunch"] = {
        --VMMaterial = "models/weapons/pap/pap_blue_burn",
        NamePriority = 10,
        TrueNameChange = "Moses Unlimited",
        NameChange = "Moses Unlimited",
    },
}

SWEP.ExtraSightDist = 2

SWEP.Attachments = {
    { --1
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        VMScale = Vector(1, 0.75, 0.75),
        WMScale = Vector(1, 0.75, 0.75),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(6.4, -0.1, 1.15),
            vang = Angle(0, 0, 0),
        },
    },
    { --2
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },
    },
    { --3
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(3.5, 0, 0),
            vang = Angle(0, 0, 0),
            wpos = Vector(8.5, 2, -2.9),
            wang = Angle(-5, -2, 177.5)
        },
    },
    { --4
        PrintName = "Ammo Type",
        Slot = {"ammo_pap"}
    },
    { --5
        PrintName = "Perk",
        Slot = "bo1_perk"
    },
    { --6
        PrintName = "Charms",
        Slot = "charm",
        Bone = "j_bolt",
        Offset = {
            vpos = Vector(5, -0.4, -0.6),
            vang = Angle(0, 0, 0),
            wpos = Vector(8.5, 2.5, -4),
            wang = Angle(-5, -2, 177.5)
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local papcamo = wep.Attachments[4].Installed == "ammo_papunch"

    if papcamo then
        return vm:SetSkin(3)
    end
end

SWEP.Hook_TranslateAnimation = function(wep, anim, data)
    if wep:Clip1() == 0 then
        return anim .. "_empty"
    end
end

SWEP.Animations = {
    ["idle"] = false,
    ["draw_empty"] = {
        Source = "draw empty",
        Time = 0.5,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
    },
    ["ready"] = {
        Source = "first_draw",
        Time = 1,
        SoundTable = {
            {s = "ArcCW_BO2.M1911_SlideBack", t = 0.2},
            {s = "ArcCW_BO2.M1911_SlideFwd", t = 0.8}
        }
    },
    ["fire"] = {
        Source = {"shoot"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "Fire_last",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot1",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "Fire_last",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 1.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
        SoundTable = {
            {s = "ArcCW_BO2.M1911_MagOut", t = 0.25},
            {s = "ArcCW_BO2.M1911_MagIn", t = 1}
        },
    },
    ["reload_empty"] = {
        Source = "reload empty",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
        SoundTable = {
            {s = "ArcCW_BO2.M1911_MagOut", t = 0.25},
            {s = "ArcCW_BO2.M1911_MagIn", t = 1},
            {s = "ArcCW_BO2.M1911_SlideFwd", t = 1.5}
        },
    },
    ["enter_sprint"] = {
        Source = "Idle_to_sprint",
        Time = 10 / 30
    },
    ["idle_sprint"] = {
        Source = "Sprint_",
        Time = 30 / 40
    },
    ["exit_sprint"] = {
        Source = "Sprint_to_Idle",
        Time = 10 / 30
    },
    ["enter_sprint_empty"] = {
        Source = "Idle_to_sprint_Empty",
        Time = 10 / 30
    },
    ["idle_sprint_empty"] = {
        Source = "Sprint_Empty",
        Time = 30 / 40
    },
    ["exit_sprint_empty"] = {
        Source = "Sprint_to_Idle_Empty",
        Time = 10 / 30
    },
}