document.addEventListener('DOMContentLoaded', function() {
    const timestamp = document.getElementById('timestamp');
    timestamp.textContent = `Container started at: ${new Date().toLocaleString()}`;
});
