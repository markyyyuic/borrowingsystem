import { createRouter, createWebHistory } from 'vue-router';
import Home from './components/Home.vue';
import Category from './components/Category.vue';
import About from './components/About.vue';
import Login from './components/Login.vue';
import Panelboard from './components/Panelboard.vue';
import panelboardequipment from './components/panelboardequipment.vue';

const routes = [
    { path: '/', component: Home },
    { path: '/category', component: Category },
    { path: '/about', component: About },
    { path: '/login', component: Login, name: Login },
    { path: '/panelboard', component: Panelboard},
    { path: '/panelboardequipment', component: panelboardequipment},
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;