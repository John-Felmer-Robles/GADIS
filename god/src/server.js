import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";

const firebaseConfig = {
  apiKey: "AIzaSyAQkgQZOvFJ4bTU9ys5pS0cg8QVAbCpRDE",
  authDomain: "gadis-8a320.firebaseapp.com",
  databaseURL: "https://gadis-8a320-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "gadis-8a320",
  storageBucket: "gadis-8a320.firebasestorage.app",
  messagingSenderId: "306615637491",
  appId: "1:306615637491:web:aaba8925f0792d1adeee86",
  measurementId: "G-T752R0LCDM"
};


const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
