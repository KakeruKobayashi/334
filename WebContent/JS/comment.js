const btn3 = document.getElementById('btn3');
const mask = document.getElementById('mask');
const modal = document.getElementById('modal');
const modalContent = document.getElementById('modalContent'); // モーダルの内容を指定

btn3.addEventListener('click', () => {
  modalContent.innerText = "ボタン３がクリックされました！"; // ボタンクリック時に表示する内容
  mask.classList.remove('hidden');
  modal.classList.remove('hidden');
});

mask.addEventListener('click', () => {
  mask.classList.add('hidden');
  modal.classList.add('hidden');
});
