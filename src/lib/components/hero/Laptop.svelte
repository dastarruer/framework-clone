<script>
	import { asset } from '$app/paths';
	import { T } from '@threlte/core';
	import { OrbitControls } from '@threlte/extras';
	import { useGltf } from '@threlte/extras';

	const gltfStore = useGltf(asset('/models/framework_16_laptop.glb'));
</script>

<T.PerspectiveCamera makeDefault position={[4, 2, 5]} zoom={0.45} fov={20}>
	<OrbitControls
		enableZoom={false}
		enablePan={false}
		enableDamping
		dampingFactor={0.1}
		autoRotate={true}
	/>
</T.PerspectiveCamera>

<T.AmbientLight intensity={0.5} />
<T.DirectionalLight position={[5, 10, 5]} intensity={1.5} />

{#if $gltfStore}
	<T is={$gltfStore.scene} scale={2} position={[0, -1, 0]} />
{/if}
