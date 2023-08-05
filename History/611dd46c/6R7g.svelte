<script>
	import SignUpForm from '$lib/components/SignUpForm.svelte';

	let error;
	async function handleSubmit({ detail: { email, password } }) {
		const response = await fetch('/api/sign-up', {
			method: 'POST',
			body: JSON.stringify({ email, password }),
			headers: {
				'Content-Type': 'application/json'
			}
		});

		if (!response.ok) {
			error = (await response.json()).message;
			return;
		}
	}
</script>
