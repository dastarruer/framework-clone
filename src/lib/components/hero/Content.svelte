<script>
	import { Canvas } from '@threlte/core';
	import Laptop from './Laptop.svelte';
	import { Button } from 'bits-ui';
</script>

<div class="flex w-1/2 flex-col items-center gap-5">
	<div class="h-96 w-full">
		<Canvas>
			<Laptop />
		</Canvas>
	</div>
	<h1 class="-mt-8 font-sans text-6xl font-bold text-black">Framework Laptop 16</h1>
	<p class="text-2xl">
		Framework Laptop 13 is a thin, light, and fast 13.5” notebook that is simple to customize,
		upgrade, and repair, so it stays yours for longer.
	</p>
	<div class="flex w-svw justify-center gap-10">
		<Button.Root
			class="pointer-events-auto h-14 w-56 cursor-pointer rounded-4xl bg-orange text-xl font-bold hover:bg-orange-hover active:bg-orange-click"
		>
			Configure now
		</Button.Root>
		<Button.Root
			class="pointer-events-auto h-14 w-56 cursor-pointer rounded-4xl border-2 border-solid border-slate-950 bg-white text-xl font-bold hover:bg-neutral-200 active:bg-neutral-300"
		>
			Learn more
		</Button.Root>
	</div>
</div>
