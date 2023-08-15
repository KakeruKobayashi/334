// modal.js
function showModal(content) {
    var modalOverlay = document.querySelector('.modal-overlay');
    var modalContent = document.querySelector('.modal-content');
    var modalClose = document.querySelector('.modal-close');

    modalContent.innerHTML = content;
    modalOverlay.style.display = 'flex';

    modalClose.addEventListener('click', function () {
        closeModal();
    });

    modalOverlay.addEventListener('click', function (event) {
        if (event.target === modalOverlay) {
            closeModal();
        }
    });

    document.addEventListener('keydown', function (event) {
        if (event.key === 'Escape') {
            closeModal();
        }
    });
}

function closeModal() {
    var modalOverlay = document.querySelector('.modal-overlay');
    modalOverlay.style.display = 'none';
}

// Call this function when buttons are clicked
function showTOEICComment() {
    showModal(TOEICComment);
}

function showTOEFLComment() {
    showModal(TOEFLComment);
}

function showGTECComment() {
    showModal(GTECComment);
}
