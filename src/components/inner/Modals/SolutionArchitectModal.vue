<template>
  <Teleport to="body">
    <div
      v-if="visible"
      @click.self="$emit('update:visible', false)"
      class="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center"
    >
      <div class="bg-gray-800 p-6 rounded w-11/12 md:w-3/4 relative">
        <button
          @click="$emit('update:visible', false)"
          class="absolute top-2 right-2 text-xl text-gray-200"
        >
          &times;
        </button>

        <h2
          class="text-xl text-white font-bold border-b-2 border-indigo-500 pb-1 mb-4"
        >
          AWS Certified Solutions Architect – Associate
        </h2>

        <p class="text-sm text-gray-300 mb-2">
          Issued by Amazon Web Services Training and Certification
        </p>

        <p class="text-sm text-gray-300">
          Earners of this certification have a comprehensive understanding of
          AWS services and technologies. They demonstrated the ability to design
          secure and robust solutions using architectural design principles
          based on customer requirements. Certification holders can
          strategically design well-architected distributed systems that are
          scalable, resilient, efficient, and fault-tolerant.
          <a
            href="https://www.credly.com/badges/7eea6cbf-d1ac-4006-b031-896c63f04041"
            target="_blank"
            rel="noopener noreferrer"
            class="text-cyan-400 hover:text-cyan-300 underline block mt-3"
          >
            → Verify Certification on Credly
          </a>
        </p>
      </div>
    </div>
  </Teleport>
</template>

<script setup>
const props = defineProps({
  visible: { type: Boolean, default: false },
});
// No explicit emits needed for v-model:visible
</script>
