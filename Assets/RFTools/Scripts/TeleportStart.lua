-- Register the behaviour
behaviour("MyBehaviour")

function MyBehaviour:Start()
	-- Run when behaviour is created

	print("Teleporting")
	
	print(Player.actor.LoadoutType)

end

function MyBehaviour:Update()
	-- Run every frame
	
end

