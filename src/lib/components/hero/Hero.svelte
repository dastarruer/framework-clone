<script lang="ts">
	import Background from '$lib/components/hero/Background.svelte';
	import Content from '$lib/components/hero/Content.svelte';
</script>

<div class="relative">
	<Background />
	<div class="absolute inset-0 flex h-full items-center justify-center">
		<Content />
	</div>
</div>
