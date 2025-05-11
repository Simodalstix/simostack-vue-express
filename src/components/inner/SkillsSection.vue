<template>
  <div class="mt-6 bg-gray-700 p-4 rounded relative">
    <h2 class="text-xl font-bold border-b-2 border-indigo-500 pb-1">
      Current Skills &amp; Technologies
    </h2>
    <ul class="list-disc ml-4 mt-2 text-sm text-gray-300 space-y-1">
      <li v-for="skill in skills" :key="skill">{{ skill }}</li>
    </ul>
  </div>
</template>

<script setup>
const props = defineProps({
  skills: {
    type: Array,
    default: () => [
      "SQL Server & Querying – basic admin tasks and writing SQL queries",
      "Linux CLI & System Navigation – working with file structures, permissions, and services",
      "Cloud Security Concepts – KMS, TLS, SSE, IAM roles",
      "Working with APIs – consuming REST APIs, using HTTP methods and status codes",
      "Containers & Serverless – Docker, Fargate, Lambda, API Gateway, DynamoDB",
      "Infrastructure as Code (AWS CDK, Terraform, CloudFormation)",
      "Cloud Networking Fundamentals – VPCs, subnets, DNS, port config",
      "Command-Line Fluency – daily use of Linux CLI, Git, AWS CLI, Docker, Terraform",
    ],
  },
});
</script>
