import { ConverterItem } from './components/converter-item'


export tag Converter

	

	conversionType\Array<Object> = [
		{
			from: 'Seconds',
			to: 'Minutes',
			formula: "INPUT / 60"
		},
		{
			from: 'Minutes',
			to: 'Seconds',
			formula: "INPUT * 60"
		}
		{
			from: 'Celsius',
			to: 'Fahrenheit ',
			formula: "(INPUT * 1.8) + 32"
		}
		{
			from: 'Fahrenheit ',
			to: 'celsius',
			formula: "(INPUT / 1.8) - 32"
		}
	]



	<self>
		<div.container>
			for tool in conversionType
				<ConverterItem tool=tool>


