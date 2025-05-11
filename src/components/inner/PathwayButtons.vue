<template>
  <div class="mt-6 flex gap-4">
    <!-- default is no-wrap -->
    <button
      v-for="btn in buttons"
      :key="btn.id"
      @click="$emit('open', btn.id)"
      class="flex-1 /* grow to fill available space */ whitespace-nowrap /* keep the text on one line */ overflow-hidden /* hide any overflow */ text-ellipsis /* add “…” if text is too long */ text-center /* center the label */ px-4 py-2 rounded transition-colors duration-200 text-white"
      :class="[
        btn.color,
        btn.hover,
      ] /* bg-purple-600 + hover:bg-purple-700, etc */"
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
        label: "DevOps",
        color: "bg-violet-600",
        hover: "hover:bg-violet-700",
      },
      {
        id: "fullstackModal",
        label: "Full Stack",
        color: "bg-cyan-500",
        hover: "hover:bg-cyan-600",
      },
      {
        id: "projectsModal",
        label: "Projects",
        color: "bg-violet-600",
        hover: "hover:bg-violet-700",
      },
      {
        id: "collabModal",
        label: "Collaboration",
        color: "bg-cyan-500",
        hover: "hover:bg-cyan-600",
      },
    ],
  },
});
defineEmits(["open"]);
</script>
