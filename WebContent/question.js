function toggleOptions(btnNumber) {
	var optionsDiv = document.getElementById("options" + btnNumber);
	var showOptionsRadio = document.getElementById("showOptions" + btnNumber);


	var otherOptionsDiv;
	var otherShowOptionsRadio;


	if (typeof toggleOptions.lastBtnNumber !== 'undefined') {
		otherOptionsDiv = document.getElementById("options" + toggleOptions.lastBtnNumber);
		otherShowOptionsRadio = document.getElementById("showOptions" + toggleOptions.lastBtnNumber);
		otherOptionsDiv.style.display = "none";

		var radioButtons = otherOptionsDiv.querySelectorAll('input[type="radio"]');
		for (var i = 0; i < radioButtons.length; i++) {
			radioButtons[i].checked = false;
		}
	}

	if (showOptionsRadio.checked) {
		optionsDiv.style.display = "block";
	} else {
		optionsDiv.style.display = "none";
	}

	toggleOptions.lastBtnNumber = btnNumber;



	function toggleDetailOptions(number) {
		var englishOptionsDiv = document.getElementById("englishOptions");
		if (number == 1) {
			englishOptionsDiv.style.display = "block";
		} else {
			englishOptionsDiv.style.display = "none";
		}
	}

}

