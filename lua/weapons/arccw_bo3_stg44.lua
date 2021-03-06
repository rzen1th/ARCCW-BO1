SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Black Ops" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "MKb-44(H)"
SWEP.TrueName = "StG-44"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "The first modern assault rifle, created with the intent to arm tank crewmen with better weapons than an SMG or a rifle. Hitler eventually dubbed the weapon the 'Sturmgewehr' as means for propaganda."
SWEP.Trivia_Manufacturer = "Schmeisser Waffe GmbH"
SWEP.Trivia_Calibre = "7.92x33mm Kurz"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Nazi Germany"
SWEP.Trivia_Year = 1942

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "C.G. Haenel"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bo3_stg44.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bo3_stg44.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-12, 4.25, -4.75),
    ang        =    Angle(-4, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =   0.925
}
SWEP.ViewModelFOV = 60

SWEP.Damage = 35
SWEP.DamageMin = 25 -- damage done at maximum range
SWEP.Range = 150 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1100 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0-- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 20

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.75
SWEP.RecoilRise = 0.75
SWEP.VisualRecoilMult = 1

SWEP.Delay = 60 / 588 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 200

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 700 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "stg44" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "ArcCW_BO3.STG44_COD4"
SWEP.ShootSound = "ArcCW_BO3.STG44_COD4"
SWEP.ShootSoundSilenced = "ArcCW_BO1.M16_Sil"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellAngle = 180
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.94
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.33

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector (-3.10, -8, -0.725),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(2, 0, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(2, 0, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(15, -2, -6)
SWEP.CustomizeAng = Angle(15, 40, 0)

SWEP.HolsterPos = Vector(8, -3, -1)
SWEP.HolsterAng = Angle(-7.036, 40.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["noch"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/item/bo1_ak_rail.mdl",
                Bone = "tag_weapon",
                Scale = Vector(0.375, 0.375, 0.375),
                Offset = {
                    pos = Vector(0, 0.3, 2.8),
                    ang = Angle(0, 90, 0),
                }
            },
        },
    },
    ["stg44_long"] = {
        AttPosMods = {
            [2] = {
                vpos = Vector (27, 0, 1.9),
            }
        },
        TrueNameChange = "StG-44L",
        NameChange = "MKb-44L",
        NamePriority = 1,
    },
    ["stg44_short"] = {
        AttPosMods = {
            [2] = {
                vpos = Vector (21, 0, 1.9),
            }
        },
        TrueNameChange = "StG-44K",
        NameChange = "MKb-44K",
        NamePriority = 2,
    },
    ["stg44_carb"] = {
        AttPosMods = {
            [2] = {
                vpos = Vector (20, 0, 1.9),
            }
        },
        TrueNameChange = "StG-44C",
        NameChange = "MKb-44C",
        NamePriority = 3,
    },
    ["mp44l"] = {
        TrueNameChange = "MP-44/9L",
        NameChange = "VP-44/9L",
        NamePriority = 4,
        RequireFlags = {"stg44_long", "9mm_mag"},
    },
    ["mp44k"] = {
        TrueNameChange = "MP-44/9K",
        NameChange = "VP-44/9K",
        NamePriority = 5,
        RequireFlags = {"stg44_short", "9mm_mag"},
    },
    ["mp44c"] = {
        TrueNameChange = "MP-44/9C",
        NameChange = "VP-44/9C",
        NamePriority = 6,
        RequireFlags = {"stg44_carb", "9mm_mag"},
    },
    ["light_stock"] = {
        VMBodygroups = {
            {ind = 3, bg = 2},
        },
    },
    ["solid_stock"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
        },
    },
    ["papname1"] = {
        TrueNameChange = "Spatz-447+",
        NameChange = "Spatz-447+",
        NamePriority = 10,
    },
    ["9mm_mag"] = {
        VMBodygroups = {
            {ind = 0, bg = 1},
        },
        TrueNameChange = "MP-44/9",
        NameChange = "VP-44/9",
        NamePriority = 1,
    },
}

SWEP.Attachments = {
    { --1
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon",
        VMScale = Vector(1.25, 1.25, 1.25),
        Offset = {
            vpos = Vector(0, 0, 3.85), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6.5, 1.2, -5.6),
            wang = Angle(172.5, -180, -2),
        },
        InstalledEles = {"noch"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(1, 0, 0)
    },
    { --2
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        VMScale = Vector(1.25, 1.25, 1.25),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(23, 0, 1.9),
            vang = Angle(0, 0, 0),
        },
    },
    { --3
        PrintName = "Barrel",
        Slot = "stg44_barrel",
        DefaultAttName = "Standard Barrel",
    },
    { --4
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(12, 0, 1.2),
            vang = Angle(0, 0, 0),
            wpos = Vector(16, 0.899, -3.9),
            wang = Angle(172.5, 180, -2)
        },
        MergeSlots = {5,6},
    },
    { --5
        Hidden = true,
        Slot = {"ubgl"},
        VMScale = Vector(1.2, 1, 1),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(10, 0, 1),
            vang = Angle(0, 0, 0),
            wpos = Vector(14, 0.899, -3.25),
            wang = Angle(172.5, 180, 0)
        },
    },
    { --6
        Hidden = true,
        Slot = {"bipod"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(15.5, 0, 1.75),
            vang = Angle(0, 0, 0),
            wpos = Vector(20.5, 0.899, -4.75),
            wang = Angle(172.5, 180, -2)
        },
    },
    { --7
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(15, 0.75, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
            wpos = Vector(19.34, 0.331, -5.6),
            wang = Angle(-7.5, 0, 88)
        },
    },
    { --8
        PrintName = "Stock",
        Slot = "bo1_stock",
        DefaultAttName = "No Stock",
        Installed = "bo1_solid_stock",
    },
    { --9
        PrintName = "FCG",
        Slot = {"bo1_fcg"}
    },
    { --10
        PrintName = "Caliber",
        Slot = "stg44_9mm_ammo",
        DefaultAttName = "7.92mm Kurz 30rnd",
    },
    { --11
        PrintName = "Ammo Type",
        Slot = {"ammo_pap"}
    },
    { --12
        PrintName = "Perk",
        Slot = "bo1_perk"
    },
    { --13
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(2, -0.75, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(6.25, 1.9, -3),
            wang = Angle(-7.5, 0, 180)
        },
    },
    { --14
        PrintName = "Sound",
        Slot = "sound_mp44",
        FreeSlot = true,
        DefaultAttName = "COD4 Sound",
        ExcludeFlags = {"smgsound"},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local sigh = wep.Attachments[1].Installed
    local short = wep.Attachments[3].Installed == "bo3_stg44_short"
    local carb = wep.Attachments[3].Installed == "bo3_stg44_carb"
    local long = wep.Attachments[3].Installed == "bo3_stg44_long"
    local papcamo = wep.Attachments[11].Installed == "ammo_papunch"
    local waw = wep.Attachments[14].Installed == "stg44_waw_sound"
    local dods = wep.Attachments[14].Installed == "stg44_dods_sound"

    if sigh and !short and !carb and !long then
        vm:SetBodygroup(1, 1)
        vm:SetBodygroup(2, 4)
    elseif short and !sigh and !carb and !long then
        vm:SetBodygroup(2, 1)
        vm:SetBodygroup(5, 1)
    elseif short and sigh and !carb and !long then
        vm:SetBodygroup(1, 1)
        vm:SetBodygroup(2, 4)
        vm:SetBodygroup(5, 1)
    elseif carb and !sigh and !short and !long then
        vm:SetBodygroup(2, 2)
        vm:SetBodygroup(4, 1)
        vm:SetBodygroup(5, 2)
    elseif carb and sigh  and !short and !long then
        vm:SetBodygroup(1, 1)
        vm:SetBodygroup(2, 4)
        vm:SetBodygroup(4, 1)
        vm:SetBodygroup(5, 2)
    elseif long and !sigh and !short and !carb then
        vm:SetBodygroup(2, 3)
        vm:SetBodygroup(5, 3)
    elseif long and sigh and !short and !carb then
        vm:SetBodygroup(1, 1)
        vm:SetBodygroup(2, 4)
        vm:SetBodygroup(5, 3)
    end

    if papcamo and waw then
        return vm:SetSkin(1)
    elseif papcamo and dods then
        return vm:SetSkin(2)
    elseif papcamo and !waw then
        return vm:SetSkin(3)
    end
end

SWEP.Hook_GetShootSound = function(wep, sound)
    if wep.Attachments[2].Installed and wep:GetBuff_Override("Silencer") then
        return "ArcCW_BO1.M16_Sil"
    end
end

SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = "draw",
        Time = 0.7,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["ready"] = {
        Source = "first_draw",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
        SoundTable = {
            {s = "ArcCW_BO3.STG44_BoltBack", t = 0.1},
            {s = "ArcCW_BO3.STG44_BoltFwd", t = 0.75},
        },
    },
    ["fire"] = {
        Source = {"shoot"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = {"shoot_ads"},
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
        SoundTable = {
            {s = "ArcCW_BO3.STG44_MagOut", t = 0.2},
            {s = "ArcCW_BO3.STG44_MagIn", t = 1},
        },
    },
    ["reload_empty"] = {
        Source = "reload empty",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
        SoundTable = {
            {s = "ArcCW_BO3.STG44_MagOut", t = 0.2},
            {s = "ArcCW_BO3.STG44_MagIn", t = 1},
            {s = "ArcCW_BO3.STG44_BoltBack", t = 1.6},
            {s = "ArcCW_BO3.STG44_BoltFwd", t = 1.9},
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
}