
export tag AppHeader

	css header d:flex ai:center jc:space-between p:3
		@dark c:white
		svg h:30px

	css .buttons d:flex g:3 
		button bd:none bgc:transparent p:4 pt:2 pb:2 rd:20px ls:1px us:none
		button@dark c:white
		.active bgc:green5 c:white


	<self>
		<header>
			<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" @click=(emit('openMenu'))>
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
			<div.buttons>
				<button.active route-to="/$"> "Calculator"
				<button route-to="/converter"> "Converter"


