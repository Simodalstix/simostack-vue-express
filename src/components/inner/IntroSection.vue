<template>
  <div class="space-y-2">
    <h1 class="text-2xl font-bold border-b-2 border-indigo-500 pb-1">
      {{ title }}
    </h1>
    <p class="mt-2 text-sm text-gray-300">
      {{ text }}
    </p>
  </div>
</template>

<script setup>
const props = defineProps({
  title: { type: String, required: true },
  text: { type: String, required: true },
});
</script>
