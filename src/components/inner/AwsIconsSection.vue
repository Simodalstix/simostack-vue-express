<template>
  <section class="mt-6">
    <h3
      class="text-xl font-semibold mb-2 border-b-2 border-indigo-500 pb-1 text-center"
    >
      Website Powered by AWS
    </h3>
    <div class="flex justify-center gap-2">
      <img
        v-for="icon in icons"
        :key="icon.alt"
        :src="icon.src"
        :alt="icon.alt"
        class="w-10 cursor-pointer rounded-md hover:opacity-80"
        @mouseover="$emit('hover', icon.description)"
        @mouseout="$emit('hover', '')"
      />
    </div>
  </section>
</template>

<script setup>
const props = defineProps({
  icons: {
    type: Array,
    default: () => [
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
    ],
  },
});

defineEmits(["hover"]);
</script>
