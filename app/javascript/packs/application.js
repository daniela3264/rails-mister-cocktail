import { initUpdateNavbarOnScroll } from '../components/navbar'
import { loadDynamicBannerText } from '../components/banner'

import 'bootstrap';

//= require bootstrap-modal

// call the function that we imported
initUpdateNavbarOnScroll();
loadDynamicBannerText();

// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
