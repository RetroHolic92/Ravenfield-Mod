-- Register the behaviour
behaviour("effectiverangedecreaser")

function effectiverangedecreaser:Awake()

for i=1,#WeaponManager.allWeapons do
local weapon=WeaponManager.allWeapons.prefabWeapon
weapon.effectiveRange = weapon.effectiveRange/2
end

self.gameObject.Destroy(self.gameObject)
end
