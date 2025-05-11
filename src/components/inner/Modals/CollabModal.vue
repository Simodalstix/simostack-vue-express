<!-- src/components/inner/Modals/CollabModal.vue -->
<template>
  <Teleport to="body">
    <div
      v-if="visible"
      @click.self="$emit('update:visible', false)"
      class="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center px-4"
    >
      <div
        class="bg-gray-800 p-6 rounded w-11/12 md:w-3/4 lg:max-w-[900px] relative max-h-[90vh] overflow-y-auto"
      >
        <button
          @click="$emit('update:visible', false)"
          class="absolute top-2 right-2 text-xl text-gray-200"
        >
          &times;
        </button>

        <h2 class="text-2xl font-extrabold text-cyan-400 mb-4 text-center">
          Active Client Project
        </h2>

        <!-- Tech Stack Grid -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
          <!-- Item 1 -->
          <div class="text-center">
            <img
              src="/images/collaboration/react.svg"
              class="w-20 mx-auto mb-2 rounded-md"
              alt="React"
            />
            <p class="text-sm text-gray-300">
              React powers our frontend. It's a widely adopted library for
              building interactive UIs with reusable components.
            </p>
          </div>
          <!-- Item 2 -->
          <div class="text-center">
            <img
              src="/images/collaboration/strapi.png"
              class="w-20 mx-auto mb-2 rounded-md"
              alt="Strapi"
            />
            <p class="text-sm text-gray-300">
              Strapi is an open-source headless CMS that acts as the backend for
              our content.
            </p>
          </div>
          <!-- Item 3 -->
          <div class="text-center">
            <img
              src="/images/collaboration/apprunner.svg"
              class="w-20 mx-auto mb-2 rounded-md"
              alt="AppRunner"
            />
            <p class="text-sm text-gray-300">
              AWS App Runner deploys our web applications from source or
              container with zero infrastructure management.
            </p>
          </div>
          <!-- Item 4 -->
          <div class="text-center">
            <img
              src="/images/collaboration/aurora.svg"
              class="w-20 mx-auto mb-2 rounded-md"
              alt="Aurora"
            />
            <p class="text-sm text-gray-300">
              Aurora Serverless gives us a fully managed relational database
              that auto-scales based on demand.
            </p>
          </div>
        </div>

        <!-- Bottom Description -->
        <div
          class="bg-gray-700 p-4 rounded text-sm text-gray-300 leading-relaxed"
        >
          <p>
            My brother and I are building a real solution for a paying customer
            — and the core stack is already running smoothly. I’ve set up the
            cloud infrastructure and database (Aurora Serverless), and we’re
            using Strapi to streamline the backend. It feels like such a modern
            and intelligent setup. The next phase is developing the frontend,
            which I’ll deploy using AWS App Runner with a GitHub Actions
            pipeline. It’s been incredibly satisfying to see a full stack
            project come to life — I’m genuinely putting my skills to work,
            handling the backend and cloud architecture so my brother can focus
            on the frontend.
          </p>
          <ul
            class="list-disc list-inside mt-4 space-y-1 text-sm text-gray-400"
          >
            <li>
              Making real architectural decisions based on cost trade-offs and
              operational friction
            </li>
            <li>
              Gaining hands-on experience with collaborative GitHub workflows,
              branches, and pull requests
            </li>
            <li>
              Iterating project designs after practical constraints (budget,
              permissions, scale) surfaced
            </li>
          </ul>
        </div>
      </div>
    </div>
  </Teleport>
</template>

<script setup>
const props = defineProps({
  visible: { type: Boolean, default: false },
});
// emits: update:visible via v-model
</script>
