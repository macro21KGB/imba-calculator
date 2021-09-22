export tag ConverterItem

	prop tool\Object

	css .converter-item
			d:flex
			ai:center
			g:4
		input
			w:100%
			h:50px
			rd:lg
			td:none
			p:3

	css .converter-container
		d:flex
		fld:column
		rd:md
		shadow:md
		p:5
		my:0
		mb:5


	input\string = ''
	output\string = ''

	def updateOutput
		if input != ''
			output = window.eval(tool.formula.replace(/INPUT/g, input)).toFixed(3).toString!
		else
			output = ''
	<self> 
		<div.converter-container>
			<h3> "From {tool.from} to {tool.to}"
			<div.converter-item>
				<input bind=input placeholder="From {tool.from}" @input=(updateOutput)> 
				<input bind=output placeholder="To {tool.to}">
