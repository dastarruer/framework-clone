<script lang="ts">
	// import { asset } from '$app/paths';
	import { asset } from '$app/paths';
	import { Avatar, NavigationMenu, Separator } from 'bits-ui';

	type ListItemProps = {
		img?: string;
		title: string;
	};
</script>

<!-- img isn't used right now since content is broken -->
<!-- {#snippet ListItem({ img, title }: ListItemProps)} -->
{#snippet ListItem({ title }: ListItemProps)}
	<NavigationMenu.Item class="h-full">
		<NavigationMenu.Trigger
			class="h-full cursor-pointer pr-2.5 pl-2.5 font-sans font-medium transition-colors duration-150 hover:bg-orange"
			>{title}</NavigationMenu.Trigger
		>
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
	class="fixed top-0 left-0 z-100 h-16 w-svw border-b border-stone-300 bg-background text-black drop-shadow-lg/10 drop-shadow-background-alt"
>
	<NavigationMenu.Root class="relative flex h-full w-full items-stretch px-8">
		<NavigationMenu.List class="flex h-full w-full items-center justify-between">
			<div class="flex h-full w-6xl">
				<img src={asset('/images/logo.svg')} alt="Framework logo" class="mr-8 h-full w-40" />
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
			<div class="flex h-full items-center gap-8">
				<Separator.Root
					orientation="vertical"
					decorative={true}
					class="h-10 border border-gray-300 opacity-50"
				/>
				<Avatar.Root class="cursor-pointer">
					<div
						class="flex h-13 w-13 items-center justify-center overflow-hidden rounded-full border-2 border-transparent"
					>
						<Avatar.Image src="https://www.bits-ui.com/avatar-1.png" alt="@huntabyte" />
						<Avatar.Fallback class="border-muted border">HB</Avatar.Fallback>
					</div>
				</Avatar.Root>
			</div>
		</NavigationMenu.List>
		<!-- i give up on this, i gotta move on -->
		<!-- <NavigationMenu.Viewport
			class="absolute top-full left-0 w-full bg-amber-300 text-slate-900 shadow-xl"
		/> -->
	</NavigationMenu.Root>
</nav>
