<template>
  <div class="flex gap-2">
    <select v-model="direction">
      <option value="flex-row" selected>Row</option>
      <option value="flex-col">Col</option>
    </select>
    <select v-model="justify">
      <option value="justify-start" selected>Start</option>
      <option value="justify-center">Center</option>
      <option value="justify-end">End</option>
      <option value="justify-between">Between</option>
      <option value="justify-around">Around</option>
      <option value="justify-evenly">Evenly</option>
    </select>
    <select v-model="align">
      <option value="items-start" selected>Start</option>
      <option value="items-center">Center</option>
      <option value="items-end">End</option>
      <option value="items-baseline">Baseline</option>
      <option value="items-stretch">Stretch</option>
    </select>
    <select v-model="gap">
      <option value="gap-none">0</option>
      <option value="gap-2" selected>2</option>
      <option value="gap-4">4</option>
      <option value="gap-8">8</option>
      <option value="gap-16">16</option>
    </select>
  </div>
  <div :class="['flex', direction, align, justify, gap, className]">
    <div class="min-w-10 min-h-10 bg-gray-300"></div>
    <div class="min-w-10 min-h-10 bg-gray-300"></div>
    <div class="min-w-10 min-h-10 bg-gray-300"></div>
  </div>
</template>

<script setup>
import { ref } from "vue";

const { className } = defineProps({
  className: String,
});

const direction = ref("flex-row");
const align = ref("items-center");
const justify = ref("justify-center");
const gap = ref("gap-2");
</script>
