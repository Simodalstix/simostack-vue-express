<template>
  <div
    @click="$emit('open')"
    class="mx-auto mt-4 bg-gray-700 hover:bg-gray-600 border border-gray-600 hover:border-gray-400 transition duration-200 rounded flex items-center justify-between px-3 h-12 cursor-pointer gap-3"
  >
    <div class="flex flex-col text-left leading-tight">
      <p class="text-xs text-gray-200 font-medium">{{ title }}</p>
      <p class="text-xs text-gray-400">{{ company }}</p>
    </div>
    <div class="h-full">
      <img
        :src="logo"
        alt="Company Logo"
        class="h-full w-auto object-cover rounded"
      />
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  title: { type: String, required: true },
  company: { type: String, required: true },
  logo: { type: String, required: true },
});
defineEmits(["open"]);
</script>
