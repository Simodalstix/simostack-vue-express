<template>
  <Teleport to="body">
    <div
      v-if="visible"
      @click.self="$emit('update:visible', false)"
      class="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-start pt-4 sm:pt-8 px-2"
    >
      <div
        class="bg-gray-800 p-4 rounded w-11/12 md:w-3/4 relative text-gray-200 overflow-y-auto"
      >
        <button
          @click="$emit('update:visible', false)"
          class="absolute top-2 right-2 text-xl text-gray-200"
        >
          &times;
        </button>

        <h2 class="text-2xl font-extrabold text-cyan-400 mb-3 text-center">
          Full Stack Developer Pathway
        </h2>

        <!-- Intro Paragraph -->
        <div
          class="mb-4 text-sm text-gray-300 leading-relaxed border-b border-purple-600 pb-2"
        >
          <p>
            These projects reflect my full-stack journey — from frontend flows
            to backend deployments. While I'm especially interested in DevOps
            and infrastructure, I value full-stack experience for the deeper
            understanding it gives me of the systems I support. I'm particularly
            drawn to backend architecture and enjoy building APIs, working with
            databases, and connecting frontend logic to real infrastructure. I'm
            also helping my brother and a friend launch startup ideas through
            early websites, payments, and collaboration.
          </p>
        </div>

        <!-- Row 1 -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-2">
          <!-- Support Desk -->
          <div class="bg-gray-700 p-4 rounded">
            <h4 class="font-semibold text-white mb-1">Support Desk</h4>
            <p class="text-sm text-gray-300">
              Ticketing platform with secure login, protected routes, and
              role-based access. Built using React, Redux Toolkit, Express.js,
              and JWT authentication. It includes ticket creation, user
              registration, and protected access for admins and support agents.
            </p>
            <div class="flex justify-between items-center mt-2 flex-wrap gap-2">
              <div class="flex flex-wrap gap-[4px] items-center">
                <img
                  src="/images/fullstack/react-2.svg"
                  alt="React"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/redux.svg"
                  alt="Redux Toolkit"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/expressjs-bgwhite.svg"
                  alt="Express.js"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/jwt-3.svg"
                  alt="JWT"
                  class="w-12 rounded"
                />
              </div>
              <a
                href="https://github.com/Simodalstix/support-desk"
                target="_blank"
                class="text-cyan-400 underline text-sm whitespace-nowrap"
              >
                Simodalstix/support-desk
              </a>
            </div>
          </div>

          <!-- ReStore -->
          <div class="bg-gray-700 p-4 rounded">
            <h4 class="font-semibold text-white mb-1">ReStore (Early Stage)</h4>
            <p class="text-sm text-gray-300">
              E-commerce app with a React + Redux frontend and .NET Core API
              backend. Demonstrates end-to-end integration, shopping cart logic,
              Stripe payments, product listing, and JWT-based user
              authentication. Still early stage and planned for future growth.
            </p>
            <div class="flex justify-between items-center mt-2 flex-wrap gap-2">
              <div class="flex flex-wrap gap-[4px] items-center">
                <img
                  src="/images/fullstack/react-2.svg"
                  alt="React"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/redux.svg"
                  alt="Redux"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/net-core.svg"
                  alt=".NET Core"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/jwt-3.svg"
                  alt="JWT"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/stripe.svg"
                  alt="Stripe"
                  class="w-12 rounded"
                />
              </div>
              <a
                href="https://github.com/Simodalstix/ReStore"
                target="_blank"
                class="text-cyan-400 underline text-sm whitespace-nowrap"
              >
                Simodalstix/ReStore
              </a>
            </div>
          </div>
        </div>

        <!-- Row 2 -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
          <!-- House Market Place -->
          <div class="bg-gray-700 p-4 rounded">
            <h4 class="font-semibold text-white mb-1">House Market Place</h4>
            <p class="text-sm text-gray-300 mb-4">
              Real estate listing app using React and Firebase. Supports user
              sign-up with Firebase Auth, listing management with Firestore,
              image uploads via cloud storage, and map-based property display.
              Includes a responsive UI, basic filter logic, and clean layout.
            </p>
            <div class="flex justify-between items-center mt-2 flex-wrap gap-2">
              <div class="flex flex-wrap gap-[4px] items-center">
                <img
                  src="/images/fullstack/react-2.svg"
                  alt="React"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/firebase.svg"
                  alt="Firebase Auth"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/firestore.svg"
                  alt="Firestore"
                  class="w-12 rounded"
                />
                <img
                  src="/images/fullstack/google-cloud.svg"
                  alt="Cloud Storage"
                  class="w-12 rounded"
                />
              </div>
              <a
                href="https://github.com/Simodalstix/house-market-place"
                target="_blank"
                class="text-cyan-400 underline text-sm whitespace-nowrap"
              >
                Simodalstix/house-market-place
              </a>
            </div>
          </div>

          <!-- Strapi Project -->
          <div class="bg-gray-700 p-4 rounded">
            <h4 class="font-semibold text-white mb-1">
              Strapi + App Runner Project
            </h4>
            <p class="text-sm text-gray-300">
              Full-stack build for a real client using Strapi CMS and PostgreSQL
              Aurora Serverless. It will be deployed with App Runner and CI/CD
              via GitHub Actions. Backend API is managed through Strapi’s admin
              panel. Exploring AWS Amplify and Cognito for secure authentication
              workflows.
            </p>
            <div class="flex flex-wrap gap-[4px] mt-2 items-center">
              <img
                src="/images/fullstack/react-2.svg"
                alt="React"
                class="w-12 rounded"
              />
              <img
                src="/images/fullstack/strapi.svg"
                alt="Strapi"
                class="w-12 rounded"
              />
              <img
                src="/images/fullstack/apprunner.svg"
                alt="App Runner"
                class="w-12 rounded"
              />
              <img
                src="/images/fullstack/aurora.svg"
                alt="Aurora"
                class="w-12 rounded"
              />
              <img
                src="/images/fullstack/amplify.svg"
                alt="Amplify/Cognito"
                class="w-12 rounded"
              />
            </div>
          </div>
        </div>

        <!-- Footer -->
        <footer
          class="text-center text-sm text-gray-500 mt-4 pt-4 border-t border-gray-700"
        >
          Currently revisiting and revising concepts from
          <a
            href="https://fullstackopen.com/"
            target="_blank"
            class="text-purple-400 underline hover:text-purple-300"
          >
            Fullstackopen.com
          </a>
          as a great reference.
        </footer>
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
