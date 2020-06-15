// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

const button = document.querySelector('#Song2');
const audio = new Audio('sound.mp3');

button.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button3 = document.querySelector('#Song3');
const audio3 = new Audio('sound.mp3');

button3.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button4 = document.querySelector('#Song4');
const audio4 = new Audio('sound.mp3');

button4.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button5 = document.querySelector('#Song5');
const audio5 = new Audio('sound.mp3');

button5.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button6 = document.querySelector('#Song6');
const audio6 = new Audio('sound.mp3');

button6.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button7 = document.querySelector('#Song7');
const audio7 = new Audio('sound.mp3');

button7.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button8 = document.querySelector('#Song8');
const audio8 = new Audio('sound.mp3');

button8.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button9 = document.querySelector('#Song9');
const audio9 = new Audio('sound.mp3');

button9.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button10 = document.querySelector('#Song10');
const audio10 = new Audio('sound.mp3');

button10.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});

const button11 = document.querySelector('#Song11');
const audio11 = new Audio('sound.mp3');

button11.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Playing';
  // audio.play();
  setTimeout(function(){ e.target.innerText = 'Listen again?'; }, 3000);
});
