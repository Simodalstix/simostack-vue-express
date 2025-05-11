<!-- src/components/MiddleColumn.vue -->
<template>
  <div class="bg-gray-800 text-white p-6 rounded shadow space-y-6">
    <IntroSection
      title="Ambition &amp; Career Pathway"
      text="I hit a skill ceiling too early in pharmacy, and I knew I needed a change. Once I discovered AWS and CloudFormation, something clicked. I became fascinated with how systems are built, automated, and maintained — and I haven’t looked back. Then I found Terraform, realized it was the cloud-agnostic industry standard, and that shifted everything. I’m now working toward the Terraform Associate exam and progressing through RHCSA to build the Linux fundamentals I know I’ll need. I’m not going back to pharmacy — I’m committed to building a long-term career in tech. DevOps just fits me. I want to keep improving, keep asking smarter questions, and eventually become the person others turn to when things get complex."
    />

    <PathwayButtons @open="$emit('open', $event)" />

    <SkillsSection />
  </div>
</template>

<script setup>
import IntroSection from "./inner/IntroSection.vue";
import PathwayButtons from "./inner/PathwayButtons.vue";
import SkillsSection from "./inner/SkillsSection.vue";

defineEmits(["open"]);
</script>
