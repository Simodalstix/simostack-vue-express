<template>
  <Teleport to="body">
    <div
      v-if="visible"
      @click.self="$emit('update:visible', false)"
      class="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center px-4"
    >
      <div
        class="bg-gray-800 p-6 rounded max-w-md w-full max-h-[90vh] overflow-y-auto relative"
      >
        <button
          @click="$emit('update:visible', false)"
          class="absolute top-2 right-2 text-xl text-gray-200"
        >
          &times;
        </button>

        <h2
          class="text-xl text-white font-bold border-b-2 border-indigo-500 pb-1 mb-4"
        >
          What Happened<span class="text-red-500">!</span>
        </h2>

        <p class="text-sm text-gray-300 leading-relaxed">
          Unfortunately, Strongroom.AI entered voluntary administration in April
          2025 due to operational and financial challenges, resulting in
          approximately 50% of staff being made redundant — including my role.
          Despite the short tenure, my time at Strongroom.AI solidified my
          passion for tech, accelerated my skills in AWS and infrastructure, and
          gave me the confidence to pursue a cloud and DevOps career path.
        </p>
      </div>
    </div>
  </Teleport>
</template>

<script setup>
const props = defineProps({
  visible: { type: Boolean, default: false },
});
// emits update:visible via v-model
</script>
