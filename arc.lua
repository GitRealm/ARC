reactor = peripheral.wrap("back")
while true do
	sleep(5)
	state = reactor.getActive()
	energyStored = reactor.getEnergyStored()
	threshold = 5000000
	if (not state) and (energyStored < threshold) then
		reactor.setActive(true)
	end
end
