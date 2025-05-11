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
          AWS Certified Developer – Associate
        </h2>

        <p class="text-sm text-gray-300 mb-2">
          Issued by Amazon Web Services Training and Certification
        </p>

        <p class="text-sm text-gray-300">
          Earners of this certification have a comprehensive understanding of
          application life-cycle management. They demonstrated proficiency in
          writing applications using AWS service APIs, AWS CLI, and SDKs; using
          containers; and deploying with a CI/CD pipeline. Certification holders
          can develop, deploy, and debug cloud-based applications following AWS
          best practices.
          <a
            href="https://www.credly.com/badges/e90f09fd-d161-465a-93e1-bcfb7375635a"
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
// No need for explicit emits definition for update:visible
</script>
