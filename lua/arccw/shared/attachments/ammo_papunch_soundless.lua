att.PrintName = "Pack-A-Punch (Alt)"
att.Icon = Material("entities/acwatt_ammo_papunch.png")
att.Description = "Mysterious rounds infused with Element 115 perform better than base weapons with no drawbacks. Improves magazine capacity, damage, and penetration. No visual difference from base weapon."
att.Desc_Pros = {
    "+ Extended Magazine."
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ammo_pap"}

att.MagExtender = true
att.ActivateElements = {"extendedmag"}

att.SortOrder = 99

att.Mult_Damage = 2.5
att.Mult_DamageMin = 2.5
att.Mult_Penetration = 2.5

att.Override_MuzzleEffect = "muzzleflash_suppressed"