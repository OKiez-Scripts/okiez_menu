<script lang="ts">
	import VisibilityProvider from '@providers/VisibilityProvider.svelte'
	import { BROWSER_MODE, RESOURCE_NAME } from '@store/stores'
	import DebugBrowser from '@providers/DebugBrowser.svelte'
	import AlwaysListener from '@providers/AlwaysListener.svelte'
	import Menu from '@layout/Menu.svelte'

	$RESOURCE_NAME = 'okiez_menu'
	
</script>

<VisibilityProvider>
	<Menu />
</VisibilityProvider>

<AlwaysListener />
{#if $BROWSER_MODE}
	<DebugBrowser />
	<div class="absolute w-screen h-screen bg-neutral-700" />
{/if}