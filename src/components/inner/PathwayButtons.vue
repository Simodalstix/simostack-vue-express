<template>
  <div class="mt-6 flex gap-2">
    <button
      v-for="btn in buttons"
      :key="btn.id"
      @click="$emit('open', btn.id)"
      :class="btn.color + ' text-white px-4 py-2 rounded hover:' + btn.hover"
    >
      {{ btn.label }}
    </button>
  </div>
</template>

<script setup>
const props = defineProps({
  buttons: {
    type: Array,
    default: () => [
      {
        id: "devopsModal",
        label: "DevOps Pathway",
        color: "bg-purple-600",
        hover: "bg-purple-700",
      },
      {
        id: "fullstackModal",
        label: "Full Stack Pathway",
        color: "bg-cyan-600",
        hover: "bg-cyan-700",
      },
      {
        id: "projectsModal",
        label: "Projects",
        color: "bg-purple-600",
        hover: "bg-purple-700",
      },
      {
        id: "collabModal",
        label: "Collaboration",
        color: "bg-cyan-600",
        hover: "bg-cyan-700",
      },
    ],
  },
});
defineEmits(["open"]);
</script>
