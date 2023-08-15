(function() {
	'use strict';

	const select_year = document.getElementById("id_year");
	console.log(select_year);
	const select_month = document.getElementById('id_month');
	const select_day = document.getElementById('id_day');
	let i;

	function sleep(waitMsec) {
		var startMsec = new Date();

		// 指定ミリ秒間だけループさせる（CPUは常にビジー状態）
		while (new Date() - startMsec < waitMsec);
	}

	function set_year() {
		// 年を生成(100年分)
		for (i = 1919; i < 2020; i++) {
			let op = document.createElement('option');
			op.value = i;
			op.text = i;
			select_year.appendChild(op);
		}
	}

	function set_month() {
		// 月を生成(12)
		for (i = 1; i <= 12; i++) {
			let op = document.createElement('option');
			op.value = i;
			op.text = i;
			select_month.appendChild(op);
		}
	}

	function set_day() {
		//日の選択肢を空にする
		let children = select_day.children
		while (children.length) {
			children[0].remove()
		}
		// 日を生成(動的に変える)
		if (select_year.value !== '' && select_month.value !== '') {
			const last_day = new Date(select_year.value, select_month.value, 0).getDate()

			for (i = 1; i <= last_day; i++) {
				let op = document.createElement('option');
				op.value = i;
				op.text = i;
				select_day.appendChild(op);
			}
		}
	}

	// load時、年月変更時に実行する
	window.onload = function() {
		sleep(500);
		set_year();
		set_month();
		set_day();
		select_year.addEventListener('change', $set_day)
		select_month.addEventListener('change', $set_day)
	}
})();