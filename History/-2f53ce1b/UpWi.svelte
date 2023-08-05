<script>
	let input = 0.0;
	let office_rate = 1;
	let rate = 18 - office_rate;

	let enumeration = 0.0;
</script>

<h1>Random Company OO Calculator</h1>

<div>
	<p>Gross pay ($)</p>
	<input type="number" bind:value={input} />
</div>
<div>
	<p>Rate (%)</p>
	<input type="number" min="0.16" max="0.18" bind:value={rate} />
</div>

<code>
	<div class="result">
		<p>Gross Profit:${input}</p>
		<p>Office Charges 1%: ${input * 0.01}</p>
		<p>Trailer Rental {rate - 1}%: ${input * rate * 0.01}</p>
		<p>Total Enumeration 84%: $12657.30</p>
	</div>
</code>

<style>
	p {
		font-size: large;
	}
	.result {
		border-radius: 15px;
		border: 2px solid #73ad21;
		padding: 15px;
	}
</style>
