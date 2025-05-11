<!-- src/components/LeftColumn.vue -->
<template>
  <div class="bg-gray-800 text-white p-6 rounded shadow">
    <div class="flex flex-col">
      <!-- 1) Profile -->
      <ProfileSection
        src="/images/profile-pic/profile_picture.png"
        name="Simon Parker"
        tagline="~/scientist/pharmacist/engineer"
        bio="I’ve made the leap from healthcare to cloud. Backed by a decade of professional experience, I bring reliability, clear communication, and an intense drive to learn and build. From AWS and Python to infrastructure and support, I’m hands-on, self-motivated, and focused on solving meaningful problems with modern tech."
      />

      <!-- 2) Recent Role button -->
      <RecentRoleButton
        title="Customer Success"
        company="Strongroom.AI"
        logo="/images/profile-pic/strongroomlogo.jpg"
        @open="$emit('open', 'roleModal')"
      />

      <!-- 3) AWS icons hover section -->
      <AwsIconsSection />
    </div>
  </div>
</template>

<script setup>
import ProfileSection from "./inner/ProfileSection.vue";
import RecentRoleButton from "./inner/RecentRoleButton.vue";
import AwsIconsSection from "./inner/AwsIconsSection.vue";

// we only need to emit "open" from here
defineEmits(["open"]);
</script>
