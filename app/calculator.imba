export tag Calculator
	css .operations@off
		y:-10px


	css .calc-screen h:25% p:5 d:flex fld:column ai:flex-end jc:center color@dark:white
		.operations fw:300 fs:1.2rem
		.result fs:3rem fw:600 m:0 
		
	css .extend gcs:3 gce:5 w:auto bgc:green4 fw:bold

	css .buttons
		pos:relative
		d:grid
		h:58%
		gtc: repeat(4, 1fr)
		# bgc:red4
		g:4
		&@before pos:absolute content: 'Swipe left to delete a character' t:-40px r:0 fw:200 c:gray5


	css button
		w:60px
		h:60px
		fw:300
		fs:1.5rem
		transition-duration: 10ms
		rd:full
		bd:none
		bgc:transparent
		@active bgc:gray0
		@dark bgc:gray7 c:white


	buttons = ["()","DEL","%","/","7","8","9","*","4","5","6","-","1","2","3","+", "0","DOT", "="]

	operations\string = ''
	calculations\string = ''

	# controlla se esiste già un parentesi altrimenti ne crea una aperta
	isAlreadyOpened\boolean = false
	isTouchUp\boolean = false

	def selectOp value\string
		try
			if value.match(/\d+/gi) || value.match(/[+/*-.]/gi)
				calculations += value

			if value === "DOT"
				calculations += "."

			if value === "()"
				if isAlreadyOpen\boolean
					isAlreadyOpen = false
					calculations += ")"
				else
					isAlreadyOpen = true
					calculations += "("
					
			if value === "DEL"
				calculations = ''
				operations = ''

			if value === "="
				evalCalc!
		catch e
			calculations = 'Error'
			operations = ''

	def evalCalc
		operations = calculations
		calculations = (window.eval calculations).toString!
		
	def deleteLastChar
		if isTouchUp == false
			calculations = calculations.slice(0,-1)
		isTouchUp = true

	<self>
		<div.container>
			<div.calc-screen>
				<p.operations ease> operations
				<p.result @touch.moved-left=(deleteLastChar) @pointerup.touch=(isTouchUp = false)> calculations
			<div.buttons>
				for button in buttons
					<button.extend=(button == "=") @click=(selectOp button)> button
