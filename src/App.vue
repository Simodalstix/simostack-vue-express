<template>
  <MainGrid @open="openModal" />

  <RoleModal v-model:visible="modals.roleModal" />
  <DevopsModal v-model:visible="modals.devopsModal" />
  <FullstackModal v-model:visible="modals.fullstackModal" />
  <ProjectsModal v-model:visible="modals.projectsModal" />
  <PythonAssociateModal v-model:visible="modals.pythonAssociateModal" />
  <SolutionArchitectModal v-model:visible="modals.solutionArchitectModal" />
  <DeveloperModal v-model:visible="modals.developerModal" />
  <CollabModal v-model:visible="modals.collabModal" />
</template>

<script setup>
import { reactive, watch } from "vue";
import MainGrid from "./components/MainGrid.vue";
import RoleModal from "./components/inner/Modals/RoleModal.vue";
import DevopsModal from "./components/inner/Modals/DevopsModal.vue";
import FullstackModal from "./components/inner/Modals/FullstackModal.vue";
import ProjectsModal from "./components/inner/Modals/ProjectsModal.vue";
import PythonAssociateModal from "./components/inner/Modals/PythonAssociateModal.vue";
import SolutionArchitectModal from "./components/inner/Modals/SolutionArchitectModal.vue";
import DeveloperModal from "./components/inner/Modals/DeveloperModal.vue";
import CollabModal from "./components/inner/Modals/CollabModal.vue";

const modals = reactive({
  roleModal: false,
  devopsModal: false,
  fullstackModal: false,
  projectsModal: false,
  pythonAssociateModal: false,
  solutionArchitectModal: false,
  developerModal: false,
  collabModal: false,
});

// DEBUG: watch all modal flags on mount
watch(
  () => ({ ...modals }),
  (m) => console.log("modal state →", m),
  { immediate: true, deep: true }
);

function openModal(id) {
  if (Object.prototype.hasOwnProperty.call(modals, id)) {
    modals[id] = true;
  } else {
    console.warn(`No modal found for id "${id}"`);
  }
}
</script>
