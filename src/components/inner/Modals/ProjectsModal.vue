<template>
  <Teleport to="body">
    <div
      v-if="visible"
      @click.self="$emit('update:visible', false)"
      class="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center"
    >
      <div
        class="bg-gray-800 p-6 rounded w-11/12 md:w-3/4 relative text-gray-200 max-h-[90vh] overflow-y-auto"
      >
        <button
          @click="$emit('update:visible', false)"
          class="absolute top-2 right-2 text-xl text-gray-200"
        >
          &times;
        </button>

        <h2 class="text-2xl font-extrabold text-cyan-400 mb-4 text-center">
          Projects
        </h2>

        <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
          <!-- Project 1 -->
          <div
            class="p-4 border border-gray-600 rounded bg-gray-700 text-gray-200"
          >
            <div class="grid grid-cols-[auto_1fr] gap-4 h-full">
              <!-- Icons -->
              <div class="flex flex-col h-full">
                <div class="grid grid-cols-2 gap-2 place-items-center">
                  <img
                    src="/images/project-icons/s3.svg"
                    alt="S3"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/cloudfront.svg"
                    alt="CloudFront"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/route53.svg"
                    alt="Route53"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/acm.svg"
                    alt="ACM"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/apigateway.svg"
                    alt="API Gateway"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/lambda.svg"
                    alt="Lambda"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/dynamodb.svg"
                    alt="DynamoDB"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <div class="relative w-10 h-10 rounded-md">
                    <img
                      src="/images/project-icons/vue.svg"
                      alt="Vue Icon"
                      class="bg-white w-10 cursor-pointer rounded-md hover:opacity-80"
                    />
                  </div>
                </div>
                <a
                  href="https://github.com/Simodalstix/simostack-portfolio"
                  target="_blank"
                  class="mt-auto self-end text-cyan-400 hover:underline text-xs"
                >
                  View on GitHub
                </a>
              </div>
              <!-- Description -->
              <div class="flex flex-col">
                <h3 class="text-white text-base text-center font-semibold">
                  Portfolio Website (This Site)
                </h3>
                <p class="mt-4 text-sm text-gray-300">
                  Built with S3, CloudFront, and Route 53 to host static HTML
                  and images, and continuously evolving with new features and
                  architecture as I learn. More than a static site, it reflects
                  my real-world journey through AWS, infrastructure, DevOps, and
                  full-stack development.
                </p>
                <ul
                  class="grid grid-cols-1 text-xs text-gray-400 gap-y-1 list-disc list-inside pl-4"
                >
                  <li>
                    <strong>CI/CD with GitHub Actions</strong> — Automated
                    deployment pipeline keeps updates fast and production-ready.
                  </li>
                  <li>
                    <strong>Planned React Rebuild</strong> — A future upgrade to
                    improve interactivity and component structure.
                  </li>
                  <li>
                    <strong>Considering a Blog</strong> — I may add a space to
                    share what I’m learning, building, and exploring — across
                    multiple tech paths.
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!-- Project 2 -->
          <div
            class="p-4 border border-gray-600 rounded bg-gray-700 text-gray-200"
          >
            <div class="grid grid-cols-[auto_1fr] gap-4 h-full">
              <div class="flex flex-col h-full">
                <div class="grid grid-cols-2 gap-2">
                  <img
                    src="/images/fullstack/terraform.svg"
                    alt="Terraform"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/vpc.svg"
                    alt="VPC"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/rds.svg"
                    alt="RDS"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/ec2.svg"
                    alt="EC2"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/postgresql.svg"
                    alt="PostgreSQL"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/secretsmanager.svg"
                    alt="SecretsManager"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                </div>
                <a
                  href="https://github.com/Simodalstix/terraform-postgres-rds-migration"
                  target="_blank"
                  class="mt-auto self-end text-cyan-400 hover:underline text-xs"
                >
                  View on GitHub
                </a>
              </div>
              <div class="flex flex-col">
                <h3>Terraform + PostgreSQL Migration to AWS RDS</h3>
                <p class="mt-4 text-sm text-gray-300">
                  Provisioned a secure, production-ready AWS environment using
                  Terraform to migrate a local PostgreSQL database into Amazon
                  RDS. The setup included a VPC with public and private subnets,
                  Bastion host with SSM access, and Secrets Manager for
                  credential management. Migrated data securely via S3 and
                  validated integrity using psql, simulating a real-world cloud
                  transition with no VPN or direct SSH exposure.
                </p>
                <ul
                  class="grid grid-cols-2 text-xs text-gray-400 gap-y-1 list-disc list-inside pl-4"
                >
                  <li>PostgreSQL (local to RDS)</li>
                  <li>Terraform IaC</li>
                  <li>SSM Session Manager</li>
                  <li>AWS Secrets Manager</li>
                  <li>VPC, Subnets, NAT Gateway</li>
                  <li>S3 and Bastion for data staging</li>
                </ul>
              </div>
            </div>
          </div>

          <!-- Project 3 -->
          <div
            class="p-4 border border-gray-600 rounded bg-gray-700 text-gray-200"
          >
            <div class="grid grid-cols-[auto_1fr] gap-4 h-full">
              <div class="flex flex-col h-full">
                <div class="grid grid-cols-2 gap-2">
                  <img
                    src="/images/fullstack/terraform.svg"
                    alt="Terraform"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/postgresql.svg"
                    alt="PostgreSQL"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/fargate.svg"
                    alt="Fargate"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/docker.svg"
                    alt="Docker"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/nginx.svg"
                    alt="NGINX"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/python2snakes.svg"
                    alt="Python"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/flasknowords.svg"
                    alt="Flask"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                </div>
                <a
                  href="https://github.com/Simodalstix/terraform-flask-devops-lab"
                  target="_blank"
                  class="mt-auto self-end text-cyan-400 hover:underline text-xs"
                >
                  View on GitHub
                </a>
              </div>
              <div class="flex flex-col">
                <h3 class="text-white text-md text-center font-semibold">
                  Containerized Flask API & PostgreSQL Lab
                </h3>
                <p class="mt-4 text-sm text-gray-300">
                  I created this project to strengthen my grasp of containerized
                  backend architecture and the foundations of scalable,
                  cloud-native systems. The deployment uses Terraform and GitHub
                  Actions to provision a Flask API on AWS Fargate. It
                  incorporates essential components like ECS, an Application
                  Load Balancer, IAM permissions, and private networking within
                  a VPC.
                </p>
                <ul
                  class="grid grid-cols-2 text-xs text-gray-400 gap-y-1 list-disc list-inside pl-4"
                >
                  <li>Python backend</li>
                  <li>Dockerized architecture</li>
                  <li>AWS Fargate deployment</li>
                  <li>Infrastructure as Code</li>
                  <li>CI/CD pipeline</li>
                </ul>
              </div>
            </div>
          </div>

          <!-- Project 4 -->
          <div
            class="p-4 border border-gray-600 rounded bg-gray-700 text-gray-200"
          >
            <div class="grid grid-cols-[auto_1fr] gap-4 h-full">
              <div class="flex flex-col h-full">
                <div class="grid grid-cols-2 gap-2">
                  <img
                    src="/images/project-icons/cloudformation.svg"
                    alt="CloudFormation"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/apigateway.svg"
                    alt="API Gateway"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/lambda.svg"
                    alt="Lambda"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/dynamodb.svg"
                    alt="DynamoDB"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/python2snakes.svg"
                    alt="Python"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                  <img
                    src="/images/project-icons/linux-tux-1.svg"
                    alt="CLI Tool"
                    class="w-10 cursor-pointer rounded-md hover:opacity-80"
                  />
                </div>
                <a
                  href="https://github.com/Simodalstix/visitor-api"
                  target="_blank"
                  class="mt-auto self-end text-cyan-400 hover:underline text-xs"
                >
                  View on GitHub
                </a>
              </div>
              <div class="flex flex-col">
                <h3 class="text-white text-md text-center font-semibold">
                  Visitor Tracker with API & CLI Log Viewer
                </h3>
                <p class="mt-4 text-sm text-gray-300">
                  A lightweight, serverless analytics project powered by AWS and
                  Python. Visitors to my site trigger an API Gateway endpoint
                  that runs a Lambda function to log IP, timestamp, and
                  User-Agent data into DynamoDB. I built a local CLI tool to
                  query and explore the logs, and used AWS SAM to handle
                  deployment and permissions.
                </p>
                <ul
                  class="text-xs text-gray-400 space-y-1 pl-4 list-disc list-inside mt-2"
                >
                  <li>
                    <strong>True Serverless Architecture</strong> — Lambda +
                    DynamoDB for backend and storage
                  </li>
                  <li>
                    <strong>Log Explorer Script (CLI)</strong> — Python + boto3
                    script, CLI design, practical data querying
                  </li>
                  <li>
                    <strong>AWS SAM Deployment</strong> — infrastructure as code
                    and permissions management.
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
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
