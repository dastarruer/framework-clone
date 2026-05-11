<script lang="ts">
	import { asset } from '$app/paths';
	import { NavigationMenu } from 'bits-ui';

	type ListItemProps = {
		img?: string;
		title: string;
	};
</script>

{#snippet ListItem({ img, title }: ListItemProps)}
	<NavigationMenu.Item>
		<NavigationMenu.Trigger>{title}</NavigationMenu.Trigger>
		<NavigationMenu.Content class="z-20 flex w-svw bg-amber-300">
			<img src={img} alt="Picture of {title}" />
			<div>
				<h1>{title}</h1>
				<p>Learn more</p>
				<p>Shop parts</p>
				<p>Downloads and guides</p>
				<p>Configure now</p>
			</div>
		</NavigationMenu.Content>
	</NavigationMenu.Item>
{/snippet}

<nav class="nav-wave fixed top-0 left-0 z-100 h-24 w-full bg-slate-900 text-white">
	<NavigationMenu.Root class="relative">
		<NavigationMenu.List class="relative flex h-24 items-center px-8">
			{@render ListItem({
				img: asset('/desktop.jpg'),
				title: 'Desktop'
			})}
		</NavigationMenu.List>
	</NavigationMenu.Root>
</nav>
