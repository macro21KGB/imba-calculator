import { AppHeader } from './header'
import { Calculator } from './calculator'
import { Converter } from './converter'

global css html, body
	ff:sans c:gray9 h:100% m:0 p:0 box-sizing:border-box
	@dark bgc:gray9

global css .container
	p:3
	

tag app

	css .drawer
		@off y:-20px
		pos:fixed
		t:0
		l:0
		w:320px
		h:100%
		zi:10
		bgc:white
		us:none
		d:flex
		fld:column
		py:4
		px:2
		shadow:xl
		.inner 
		ta:center


	show\boolean = false

	<self[max-width@md:30% mx@md:auto shadow@md:md pos:relative h@md:100%]>
		if show
			<div.drawer >
				<div.inner>
					<button[pos:absolute t:10px r:10px bd:none bgc:red5 c:white p:2 rd:md fs:1rem ] @click=(show = false)> "Close"
					<h2> "About the App"
					<p> "The app is built using the {<strong> "Imba Programming Language"}"
					<p> "You can find the source code of the app {<br>}on my"
					<a[td:none fw:500 fs:1.5rem bgc:black c:white px:5 py:2 rd:md mt:4] href="https://github.com/macro21KGB/imba-calculator"> "github"
					<br>
					<br>
					<h4> "Check the docs at {<br>} "
					<a[td:none fw:500 fs:1.5rem bgc:blue5 c:white px:5 py:2 rd:md mt:20] href="https://www.imba.io"> "Imba.io"
		<AppHeader @openMenu=(show= !show)>
		<Calculator route="/$">
		<Converter route="/converter">


imba.mount <app>
