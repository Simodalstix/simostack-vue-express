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
          PCAP™ – Certified Associate Python Programmer
        </h2>

        <p class="text-sm text-gray-300 mb-2">
          Issued by Open Education and Development Group (OpenEDG)
        </p>

        <p class="text-sm text-gray-300">
          Earners of the PCAP – Certified Associate Python Programmer badge
          demonstrate the ability to accomplish coding tasks related to the
          basics of programming in the Python language and the fundamental
          notions and techniques used in object-oriented programming. Becoming
          PCAP certified ensures that the individual is fully acquainted with
          all the primary means provided by Python 3 to enable him to start his
          own studies, and to open a path to the developer’s career.
          <a
            href="https://www.credly.com/badges/dd32e128-d849-40fa-b39c-e4b77b3480cd/public_url"
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
// emits update:visible via v-model
</script>
