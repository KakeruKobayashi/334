var userBirthdayYear = document.querySelector('.user-birthday-year');
var userBirthdayMonth = document.querySelector('.user-birthday-month');
var userBirthdayDay = document.querySelector('.user-birthday-day');

// 1930年代から2050年代までoption要素を生成
for(var i = 1930; i <= 2050; i++) {
    createElementsForOptions(userBirthdayYear, i);
}

// 1月から12月までのoption要素を生成
for(var j = 1; j <= 12; j++ ) {
    createElementsForOptions(userBirthdayMonth, j);
}

// 1日から31日までのoption要素を生成
// ※デフォルトでは1月が選択されているで31
for(var k = 1; k <= 31; k++ ) { createElementsForOptions(userBirthdayDay, k); } // 日付の数は月によって変わるので動的に変えるようにする userBirthdayMonth.addEventListener('change', () => {
    var days = createDaysForOptions(userBirthdayMonth);

    // 前回までで生成されたoptionを消去
    removeDaysElementsForOptions();
    // 月に応じた月の日付けoption要素を生成
    for(var l = 1; l <= days; l++ ) {
        createElementsForOptions(userBirthdayDay, l);
    }
});
    /**
     * 月が変わったら日のoption要素の値を変える
     *
     * @param int el userBirthdayMonth
     */
    function createDaysForOptions(el) {
        var indexKey = el.selectedIndex;
        const mouth = {
            1 : 31, 2 : 29, 3 : 31, 4 : 30,
            5 : 31, 6 : 30, 7 : 31, 8 : 31,
            9 : 30, 10 : 31, 11 : 30, 12 : 31,
        }

        // 要素がずれるので+1をする
        return mouth[indexKey + 1];
    }

    /**
     * selectボックスのoption要素を生成する
     * @param int el element
     * @param int val value
     */
    function createElementsForOptions(el, val) {
        var op = document.createElement('option');
        op.value = val;
        op.text = val;
        el.appendChild(op);
    }

    function removeDaysElementsForOptions() {
        var birthday = document.getElementsByClassName('user-birthday-day');
        return birthday[0].innerHTML = '';
    }