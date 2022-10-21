<template>
    <footer v-if="$slidev.nav.currentPage !== 1" class="absolute bottom-0 left-0 right-0 p-2 text-right">
        <SlideCurrentNo /> /
        <SlidesTotal />
    </footer>
</template>