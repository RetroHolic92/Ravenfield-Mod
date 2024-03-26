behaviour("CreateTransitionRoom")

function CreateTransitionRoom:SpawnTransition()
	self.master = GameObject.Find("DungeonManager").GetComponent(ScriptedBehaviour).self
	self.room = GameObject.Instantiate(self.master.transitionRoom, self.gameObject.transform.position, self.gameObject.transform.rotation)
	self.room.transform.parent = self.gameObject.transform.parent
end