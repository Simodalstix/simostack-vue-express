<!-- src/components/inner/Modals/VisitorCountModal.vue -->
<template>
  <div class="text-sm text-gray-400 text-center">
    Visited
    <span class="font-bold text-purple-400">{{ count }}</span>
    times.
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";

const count = ref("?");

onMounted(async () => {
  const host = window.location.hostname;
  // only count real visitors
  if (
    host !== "localhost" &&
    host !== "127.0.0.1" &&
    !location.href.startsWith("file://")
  ) {
    try {
      const res = await fetch(
        "https://hcqozthml9.execute-api.ap-southeast-2.amazonaws.com/Prod/count",
        { headers: { "x-api-key": "UqkDT1O9VB6zi6jtUYRQK9XWnGJFRe8m7ckSm7MC" } }
      );
      const data = await res.json();
      count.value = data.visitor_count;
    } catch (err) {
      console.error("Visitor count API failed:", err);
    }
  }
});
</script>
