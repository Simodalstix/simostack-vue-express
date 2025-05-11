<template>
  <div
    class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-[1.2fr_2.2fr_.8fr] gap-6"
  >
    <LeftColumn @open="$emit('open', $event)" />
    <MiddleColumn @open="$emit('open', $event)" />
    <RightColumn @open="$emit('open', $event)" />
  </div>
</template>

<script setup>
import { defineEmits } from "vue";
import LeftColumn from "./LeftColumn.vue";
import MiddleColumn from "./MiddleColumn.vue";
import RightColumn from "./RightColumn.vue";

defineEmits(["open"]);
</script>
