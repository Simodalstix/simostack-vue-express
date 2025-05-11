<!-- src/components/inner/Modals/DevopsModal.vue -->
<template>
  <Teleport to="body">
    <div
      v-if="visible"
      @click.self="$emit('update:visible', false)"
      class="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-start pt-4 sm:pt-8 px-2"
    >
      <div
        class="bg-gray-800 p-4 sm:p-6 rounded-lg w-full max-w-[1080px] md:w-[96%] lg:w-[90%] xl:w-[80%] 2xl:max-w-[1180px] relative max-h-[93vh] overflow-y-auto shadow-lg [scrollbar-gutter:stable]"
      >
        <button
          @click="$emit('update:visible', false)"
          class="absolute top-2 right-2 text-xl text-gray-200"
        >
          &times;
        </button>

        <h2 class="text-2xl font-extrabold text-cyan-400 mb-2 text-center">
          DevOps Foundation
        </h2>

        <!-- Modal Grid Container -->
        <div class="grid grid-cols-[1.5fr_1px_1fr] gap-6 pt-2">
          <!-- LEFT COLUMN: Certifications -->
          <div class="pr-3">
            <!-- Row 1: Current Certs -->
            <div>
              <h3 class="text-lg font-semibold text-white mb-2">
                Certifications in Progress
              </h3>
              <p class="text-sm text-gray-300 leading-relaxed mb-2">
                Python is complete, and I’m now focused on mastering Terraform
                (003) as my primary infrastructure-as-code tool while actively
                beginning RHCSA study to deepen my practical Linux skills —
                including SELinux, systemd, firewalld, and LVM. I’ve also
                started exploring Azure through hands-on platform use and
                account setup, gradually building familiarity with its services
                and preparing to study for AZ-104 if needed in a future role.
              </p>
              <div class="flex justify-center items-center gap-[12px] mt-2">
                <img
                  src="/images/devops/rhcsa.png"
                  alt="RHCSA Certification Badge"
                  class="w-24"
                />
                <img
                  src="/images/devops/terraform003.png"
                  alt="Terraform 003 badge"
                  class="w-24"
                />
                <img
                  src="/images/devops/azure-admin.png"
                  alt="Azure admin badge"
                  class="w-24"
                />
              </div>
            </div>

            <!-- Horizontal divider between cert rows -->
            <div class="h-px bg-purple-600 my-6"></div>

            <!-- Row 2: Future Certs -->
            <div>
              <h3 class="text-lg font-semibold text-white mb-2">
                Future Certifications
              </h3>
              <p class="text-sm text-gray-300 leading-relaxed mb-2">
                I plan to pursue the AWS DevOps Engineer – Professional
                certification to validate advanced automation, CI/CD, and
                infrastructure delivery skills. I’m also interested in RHCE and
                container-focused Red Hat certifications for deeper enterprise
                DevOps capability. If working in a Microsoft environment, I’ll
                pivot toward AZ-400 or AZ-500.
              </p>
              <div class="flex justify-center items-center gap-[12px] mt-2">
                <img
                  src="/images/devops/aws-devops.png"
                  alt="AWS Devops Badge"
                  class="w-24"
                />
                <img
                  src="/images/devops/aws-security.png"
                  alt="AWS Security Badge"
                  class="w-24"
                />
                <span class="text-cyan-400 text-3xl mx-1">/</span>
                <img
                  src="/images/devops/azure-security.png"
                  alt="Azure Security Badge"
                  class="w-24"
                />
                <img
                  src="/images/devops/azure-devops.png"
                  alt="Azure Devops Badge"
                  class="w-24"
                />
              </div>
            </div>
          </div>

          <!-- CLEAN PURPLE DIVIDER COLUMN -->
          <div class="bg-purple-600 w-px h-full"></div>

          <!-- RIGHT COLUMN -->
          <div class="pl-3 flex flex-col justify-between">
            <div>
              <h3 class="text-lg font-semibold text-white mb-2">
                Terraform + Flask Container Backend
              </h3>
              <p class="text-sm text-gray-300 leading-relaxed mb-2 text-left">
                I built this project to deepen my understanding of containers
                and modern backend infrastructure, knowing how central they are
                to scalable, cloud-native applications. It deploys a Flask app
                to AWS Fargate using Terraform and GitHub Actions. Key elements
                include ECS, ALB, IAM, and secure VPC networking. We resolved a
                container delay using CloudWatch Logs.
              </p>
              <h3 class="text-lg font-semibold text-white mb-2 mt-4">
                Terraform + Static Website Frontend
              </h3>
              <p class="text-sm text-gray-300 leading-relaxed mb-2 text-left">
                A lightweight frontend project deploying a secure static site
                with S3, CloudFront, Route 53, and ACM — fully provisioned via
                Terraform. It features HTTPS, subdomain routing, and CDN
                caching, all without running servers. This project complements
                the backend container deployment by showing how modern
                infrastructure can deliver both dynamic and static content.
              </p>

              <div class="flex gap-4 mt-2">
                <a
                  href="https://github.com/Simodalstix/terraform-flask-devops-lab"
                  target="_blank"
                  class="text-cyan-400 text-sm underline hover:text-cyan-300"
                >
                  Flask Fargate Backend ↗
                </a>
                <a
                  href="https://github.com/Simodalstix/terraform-static-website"
                  target="_blank"
                  class="text-cyan-400 text-sm underline hover:text-cyan-300"
                >
                  Static Website Frontend ↗
                </a>
              </div>
            </div>

            <!-- Centered Icon Grid at Bottom -->
            <div class="flex justify-center mt-3">
              <img
                src="/images/devops/terraform.svg"
                alt="Terraform"
                class="w-24 pr-2"
              />
              <div class="grid grid-flow-col grid-rows-2 gap-[4px] mt-3">
                <img
                  src="/images/devops/flask-black.svg"
                  alt="Flask"
                  class="w-12 bg-white rounded"
                />
                <img
                  src="/images/devops/docker.svg"
                  alt="Docker"
                  class="w-12 rounded"
                />
                <img
                  src="/images/devops/fargate.svg"
                  alt="Fargate"
                  class="w-12 rounded"
                />
                <img
                  src="/images/devops/python.svg"
                  alt="Python"
                  class="w-12 rounded"
                />
                <img
                  src="/images/devops/cloudwatch.svg"
                  alt="CloudWatch"
                  class="w-12 rounded"
                />
                <div class="w-12 h-12 rounded opacity-0"></div>
                <div class="w-12 h-12 rounded opacity-0"></div>
                <div class="w-12 h-12 rounded opacity-0"></div>
                <img
                  src="/images/aws-icons/simplestorageservice.png"
                  alt="S3"
                  class="w-12 rounded"
                />
                <img
                  src="/images/aws-icons/certificatemanager.png"
                  alt="ACM"
                  class="w-12 rounded"
                />
                <img
                  src="/images/aws-icons/cloudfront.png"
                  alt="Cloudfront"
                  class="w-12 rounded"
                />
                <img
                  src="/images/aws-icons/route53.png"
                  alt="Route53"
                  class="w-12 rounded"
                />
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
// optional explicit emits declaration:
// const emit = defineEmits(['update:visible'])
</script>
