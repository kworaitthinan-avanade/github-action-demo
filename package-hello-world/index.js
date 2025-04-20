// package-hello-world/index.js

export default function sayHello() {
    return "Hello, world!";
  }
  
  if (import.meta.url === `file://${process.argv[1]}`) {
    console.log(sayHello());
  }
