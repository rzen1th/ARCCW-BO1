att.PrintName = "5.56mm IAR 60rnd"
att.Icon = Material("entities/acwatt_bo1_ext_mag.png")
att.Description = "Larger, quad-stack magazine increases magazine capacity to 60, but decrease reload speed by 50%."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"bo2_m27_ammo"}

att.ActivateElements = {"iarmag"}
att.GivesFlags = {"m27mag"}

att.SortOrder = 98

att.Override_ClipSize = 60
att.Mult_ReloadTime = 1.5

att.Override_MuzzleEffect = "muzzleflash_smg"