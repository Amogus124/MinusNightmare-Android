function onStepHit()
	if curStep == 2050 then
		doTweenAlpha('byebozo', 'dad', 0, 3.5, 'linear')
	end
	if curStep == 640 or curStep == 1024 or curStep == 1153 or curStep == 1175 or curStep == 1279 or curStep == 1300 or curStep == 1408 or curStep == 1792 then
		for i = 0,7 do
			xValue = getPropertyFromGroup('strumLineNotes', i, 'x')
			if i < 3.5 then
				setPropertyFromGroup('strumLineNotes', i, 'x', xValue+640)
			else
				setPropertyFromGroup('strumLineNotes', i, 'x', xValue-640)
			end
		end
	end
	if curStep == 384 or curStep == 768 or curStep == 1151 or curStep == 1172 or curStep == 1276 or curStep == 1281 or curStep == 1303 or curStep == 1536 then
		for i = 0,7 do
			xValue = getPropertyFromGroup('strumLineNotes', i, 'x')
			if i < 3.5 then
				setPropertyFromGroup('strumLineNotes', i, 'x', xValue-640)
			else
				setPropertyFromGroup('strumLineNotes', i, 'x', xValue+640)
			end
		end
	end
	if curStep == 384 then
		setProperty('dad.alpha', 0.1)
	end
end

function onCreatePost()
	for i = 0,7 do
		xValue = getPropertyFromGroup('strumLineNotes', i, 'x')
		if i < 3.5 then
			setPropertyFromGroup('strumLineNotes', i, 'x', xValue+640)
		else
			setPropertyFromGroup('strumLineNotes', i, 'x', xValue-640)
		end
	end
end
