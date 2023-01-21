function overflow() {
  overflow();
}

try {
  overflow();
} catch (ex) {
  console.error(`Error: ${ex.message}`);
}
