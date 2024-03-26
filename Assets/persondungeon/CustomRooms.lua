behaviour("CustomRooms")

function CustomRooms:Start()
	self.master = GameObject.Find("DungeonManager").GetComponent(ScriptedBehaviour).self
	self.container = self.targets.container
	print("customroommod:" .. self.gameObject.name)
	for index, value in ipairs(self.container.GetGameObjectArray("floorone")) do
		table.insert(self.master.floor1rooms, value)
		print("added l1 room" .. value.name)
	end
	for index, value in ipairs(self.container.GetGameObjectArray("floortwo")) do
		table.insert(self.master.floor2rooms, value)
		print("added l2 room" .. value.name)
	end
	for index, value in ipairs(self.container.GetGameObjectArray("floorthree")) do
		table.insert(self.master.floor3rooms, value)
		print("added l3 room" .. value.name)
	end
end
