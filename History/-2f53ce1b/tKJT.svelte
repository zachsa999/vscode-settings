<script>
	let input = 0.0;
	let rate = 0.18;

	$: enumeration = 0.0;
</script>

<div>
	<input value={input} />
</div>
<div>
	<input type="range" min="0.16" max="0.18" bind:value={rate} />
</div>

<h1>Random Company OO Calculator</h1>
<code>
	<div class="result">
		<p>Gross Profit:{input}</p>
		<p>Office Charges 1%: ${input * 0.01}</p>
		<p>Trailer Rental 15%: ${input * 0.0}</p>
		<p>Total Enumeration 84%: $12657.30</p>
	</div>
</code>

<style>
	p {
		font-size: large;
	}
	.result {
		border-radius: 25px;
		border: 2px solid #73ad21;
		padding: 20px;
	}
</style>
