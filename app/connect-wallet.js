// Wallet Modal
const walletModal = document.getElementById("wallet-modal");
const qrModal = document.getElementById("qr-modal");
const connectWalletBtn = document.getElementById("connect-wallet-btn");
const closeWalletModalBtn = document.getElementById("close-modal");
const closeQRModalBtn = document.getElementById("close-qr-modal");
const metamaskOption = document.getElementById("metamask");

// Show wallet modal
connectWalletBtn.addEventListener("click", () => {
  walletModal.style.display = "block";
});

// Close wallet modal
closeWalletModalBtn.addEventListener("click", () => {
  walletModal.style.display = "none";
});

// Show QR modal when MetaMask is clicked
metamaskOption.addEventListener("click", () => {
  walletModal.style.display = "none";
  qrModal.style.display = "block";
});

// Close QR modal
closeQRModalBtn.addEventListener("click", () => {
  qrModal.style.display = "none";
});
