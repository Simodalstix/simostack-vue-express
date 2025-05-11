<template>
  <div>
    <h2
      class="text-xl font-semibold text-center border-b-2 border-indigo-500 pb-1 mb-4"
    >
      Certifications
    </h2>
    <div class="flex flex-col items-center space-y-4">
      <img
        v-for="cert in certs"
        :key="cert.id"
        :src="cert.src"
        :alt="cert.alt"
        class="w-36 hover:border-2 hover:border-indigo-500 transition rounded cursor-pointer"
        @click="$emit('open', cert.id)"
      />
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  certs: {
    type: Array,
    default: () => [
      {
        id: "pythonAssociateModal",
        src: "/images/certifications/python-associate.png",
        alt: "PCAP™ Python Associate",
      },
      {
        id: "solutionArchitectModal",
        src: "/images/certifications/solutions_architect.png",
        alt: "Solutions Architect",
      },
      {
        id: "developerModal",
        src: "/images/certifications/developer.png",
        alt: "AWS Developer",
      },
    ],
  },
});
defineEmits(["open"]);
</script>
