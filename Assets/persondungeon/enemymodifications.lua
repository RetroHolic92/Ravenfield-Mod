behaviour("enemymodifications")

function enemymodifications:Start()
	--don't delete this
	self.spawnEnemiesSignal = self.gameObject.GetComponent(TriggerScriptedSignal)
	self.master = GameObject.Find("DungeonManager").GetComponent(ScriptedBehaviour).self

	--send first spawn enemy signal
	self.spawnEnemiesSignal.Send("spawnenemies")
	
	self.master.script.StartCoroutine(self.master:ModifyEnemies(self.spawnEnemiesSignal))
end