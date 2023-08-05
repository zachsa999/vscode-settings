<script>

    fetch("https://www.google.ca)
    .then((response) => {
        export let red = response
    })
    .catch(function (err) {
    console.log("Unable to fetch -", err);
  })
</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>
<head>
	<style>
		iframe {
			border: none;
		}
	</style>
</head>
<body>
	<p>{red}</p>
	<iframe
		title="hi"
		src="https://blog.hubspot.com/marketing/how-to-add-html-embed-codes-ht"
		width="100%"
		height="500"
	>
		<p>
			<a href="/en-US/docs/Glossary"> Fallback link for browsers that don't support iframes </a>
		</p>
	</iframe>
</body>
