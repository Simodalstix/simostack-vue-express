<template>
  <div class="max-w-7xl … grid …">
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
