<template>
  <div
    class="bg-gray-800 text-white p-6 rounded shadow flex flex-col justify-between h-full"
  >
    <Certifications @open="$emit('open', $event)" />
    <!-- visitor count logic -->
    <VisitorCount />
  </div>
</template>

<script setup>
import Certifications from "./inner/Certifications.vue";
import VisitorCount from "./inner/Modals/VisitorCountModal.vue";

defineEmits(["open"]);
</script>
