<script lang="ts">
	import Background from '$lib/components/hero/Background.svelte';
	import Title from '$lib/components/hero/Title.svelte';
</script>

<div class="relative">
	<Background />
	<div class="absolute inset-0 flex h-full items-center justify-center">
		<Title />
	</div>
</div>
