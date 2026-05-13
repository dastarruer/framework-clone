<script lang="ts">
	// import { asset } from '$app/paths';
	import { NavigationMenu } from 'bits-ui';

	type ListItemProps = {
		img?: string;
		title: string;
	};
</script>

<!-- img isn't used right now since content is broken -->
<!-- {#snippet ListItem({ img, title }: ListItemProps)} -->
{#snippet ListItem({ title }: ListItemProps)}
	<NavigationMenu.Item>
		<NavigationMenu.Trigger class="cursor-pointer hover:underline">{title}</NavigationMenu.Trigger>
		<!-- content is broekn right now -->
		<!-- <NavigationMenu.Content class="z-20 flex w-svw bg-amber-300">
			<img src={img} alt="Picture of {title}" />
			<div>
				<h1>{title}</h1>
				<p class="cursor-pointer hover:underline">Learn more</p>
				<p class="cursor-pointer hover:underline">Shop parts</p>
				<p class="cursor-pointer hover:underline">Downloads and guides</p>
				<p class="cursor-pointer hover:underline">Configure now</p>
			</div>
		</NavigationMenu.Content> -->
	</NavigationMenu.Item>
{/snippet}

<nav
	class="fixed top-0 left-0 z-100 h-20 w-full border-b border-stone-300 bg-background text-black drop-shadow-lg/10 drop-shadow-background-alt"
>
	<NavigationMenu.Root class="relative">
		<NavigationMenu.List class="relative flex h-20 items-center px-8">
			<div class="flex gap-8">
				{@render ListItem({
					title: 'Desktop'
				})}
				{@render ListItem({
					title: 'Laptop 12'
				})}
				{@render ListItem({
					title: 'Laptop 13'
				})}
				{@render ListItem({
					title: 'Laptop 16'
				})}
			</div>
		</NavigationMenu.List>
		<!-- i give up on this, i gotta move on -->
		<!-- <NavigationMenu.Viewport
			class="absolute top-full left-0 w-full bg-amber-300 text-slate-900 shadow-xl"
		/> -->
	</NavigationMenu.Root>
</nav>
