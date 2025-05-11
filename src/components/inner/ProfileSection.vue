<template>
  <div class="text-center">
    <img
      :src="src"
      alt="Profile"
      class="rounded-full w-40 h-auto mx-auto border-4 border-white shadow-md"
    />
    <h2
      class="text-2xl font-bold mt-4 border-b-2 text-white border-indigo-500 pb-1"
    >
      {{ name }}
    </h2>
    <p class="font-semibold text-cyan-400 mt-2 mb-2 text-sm">
      {{ tagline }}
    </p>
    <p class="text-sm text-gray-300 leading-relaxed">
      {{ bio }}
    </p>
  </div>
</template>

<script setup>
const props = defineProps({
  src: { type: String, required: true },
  name: { type: String, required: true },
  tagline: { type: String, required: true },
  bio: { type: String, required: true },
});
</script>
