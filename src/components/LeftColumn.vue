<!-- src/components/LeftColumn.vue -->
<template>
  <div class="bg-gray-800 p-6 rounded shadow space-y-6">
    <div class="flex flex-col justify-between h-full">
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
      <AwsIconsSection :icons="awsIcons" @hover="$emit('hover', $event)" />
    </div>
  </div>
</template>

<script setup>
import ProfileSection from "./inner/ProfileSection.vue";
import RecentRoleButton from "./inner/RecentRoleButton.vue";
import AwsIconsSection from "./inner/AwsIconsSection.vue";

defineEmits(["open", "hover"]);

const awsIcons = [
  {
    src: "/images/aws-icons/simplestorageservice.png",
    alt: "S3",
    description:
      "Amazon Simple Storage Service (S3) stores and serves all the static content for this website, including HTML, images, and assets.",
  },
  {
    src: "/images/aws-icons/cloudfront.png",
    alt: "CloudFront",
    description:
      "Amazon CloudFront is a global Content Delivery Network (CDN) that caches and delivers this website quickly from edge locations.",
  },
  {
    src: "/images/aws-icons/route53.png",
    alt: "Route53",
    description:
      "Amazon Route 53 provides DNS routing, directing traffic from my custom domain to the CloudFront distribution.",
  },
  {
    src: "/images/aws-icons/certificatemanager.png",
    alt: "ACM",
    description:
      "AWS Certificate Manager (ACM) provisions and manages the free SSL certificate to enable secure HTTPS connections.",
  },
  {
    src: "/images/aws-icons/apigateway.svg",
    alt: "API Gateway",
    description:
      "Amazon API Gateway securely handles all API requests and routes them to backend services.",
  },
  {
    src: "/images/aws-icons/lambda.svg",
    alt: "Lambda",
    description:
      "AWS Lambda runs backend code automatically in response to events — no servers to manage.",
  },
  {
    src: "/images/aws-icons/dynamodb.svg",
    alt: "DynamoDB",
    description:
      "Amazon DynamoDB is a fast, serverless NoSQL database used to store API data reliably.",
  },
];
</script>
