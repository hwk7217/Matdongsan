/**
 * 
 */

/*document.getElementById('c').addEventListener('click', lookBtn());
document.getElementById('c2').addEventListener('click', lookBtn());*/
function lookBtn() {
	$('#d').css('display', 'block');
};

// $('#submit').on('click',function(){
//     $('.hiding').css('display','block');
//     $('#addSubmit').css('display','block');
//     $('#resetSubmit').css('display','block');
//     let table3 = '<div class="page-header mb-2"><span class="h5">계산서 1</span><i class="far fa-copy click" onclick="copyTable(this)" aria-hidden="true"></i>&nbsp;&nbsp;<i class="fas fa-file-csv click" onclick="downloadCsv(this)" aria-hidden="true"></i></div><table id="tb" class="table table-bordered tlf mb-4"><thead><tr><th class="listn">#</th><th>적요</th><th>금액</th><th class="dpLg">비고</th></tr></thead><tbody><tr><td class="listn">1</td><td class="적요">대출금액<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td><td class="비고 dpLg">입력값</td></tr><tr><td class="listn">2</td><td class="적요">담보가치<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td> <td class="비고 dpLg">입력값</td></tr><tr><td class="listn">3</td><td class="적요">소액보증금<div class="dpSm text-muted small">지역별 소액보증금 적용(하단 참조)</div></td><td class="금액"></td><td class="비고 dpLg">지역별 소액보증금 적용(하단 참조)</td></tr> <tr><td class="listn">4</td><td class="적요">최우선변제금액<div class="dpSm text-muted small">적용 방수(0) × 0원</div></td><td class="금액"></td><td class="비고 dpLg">적용 방수(0) × 0원</td></tr><tr><td class="listn">5</td><td class="적요">대출금액 등<div class="dpSm text-muted small">대출금 + 보증금 + 선순위채권 등</div></td><td class="금액"></td><td class="비고 dpLg">대출금 + 보증금 + 선순위채권 등</td></tr><tr style="background-color:#eeefff; font-weight:bold"><td class="listn">6</td><td class="적요">LTV<div class="dpSm text-muted small">대출금액 등 / 담보가치 × 100</div></td><td class="금액">%</td><td class="비고 dpLg">대출금액 등 / 담보가치 × 100</td></tr></tbody></table>';
//     $('#result1').show(table3);
// });

$('#submit').on('click', function() {
	$('.hiding').css('display', 'block');
	// $('#addSubmit').css('display','block');
	// $('#resetSubmit').css('display','block');
});


// console.log(table);
// let table2 = $('.h5').text(); 
// console.log(table2);        

// $('.h5').text('계산서'+cnt); 
// let cnt = 1;


// let table = $('#result1').html();
// var n = 2;
// // var n = parseInt($('.h5').text().replace(/[^0-9]/g,''));

// $('#addSubmit').on('click',function(){
//     let table2 = '<div class="page-header mb-2"><span class="h5">계산서 '+n+'</span><i class="far fa-copy click" onclick="copyTable(this)" aria-hidden="true"></i>&nbsp;&nbsp;<i class="fas fa-file-csv click" onclick="downloadCsv(this)" aria-hidden="true"></i></div><table id="tb" class="table table-bordered tlf mb-4"><thead><tr><th class="listn">#</th><th>적요</th><th>금액</th><th class="dpLg">비고</th></tr></thead><tbody><tr><td class="listn">1</td><td class="적요">대출금액<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td><td class="비고 dpLg">입력값</td></tr><tr><td class="listn">2</td><td class="적요">담보가치<div class="dpSm text-muted small">입력값</div></td><td class="금액"></td> <td class="비고 dpLg">입력값</td></tr><tr><td class="listn">3</td><td class="적요">소액보증금<div class="dpSm text-muted small">지역별 소액보증금 적용(하단 참조)</div></td><td class="금액"></td><td class="비고 dpLg">지역별 소액보증금 적용(하단 참조)</td></tr> <tr><td class="listn">4</td><td class="적요">최우선변제금액<div class="dpSm text-muted small">적용 방수(0) × 0원</div></td><td class="금액"></td><td class="비고 dpLg">적용 방수(0) × 0원</td></tr><tr><td class="listn">5</td><td class="적요">대출금액 등<div class="dpSm text-muted small">대출금 + 보증금 + 선순위채권 등</div></td><td class="금액"></td><td class="비고 dpLg">대출금 + 보증금 + 선순위채권 등</td></tr><tr style="background-color:#eeefff; font-weight:bold"><td class="listn">6</td><td class="적요">LTV<div class="dpSm text-muted small">대출금액 등 / 담보가치 × 100</div></td><td class="금액">%</td><td class="비고 dpLg">대출금액 등 / 담보가치 × 100</td></tr></tbody></table>';
//     $('#result1').append(table2);
//     n+=1;
// });

$('#resetSubmit').on('click', function() {
	n = 1;
	$('#result1').empty();
	$('#result1').append(table);
	$('.hiding').css('display', 'none');
	$('#addSubmit').css('display', 'none');
	$('#resetSubmit').css('display', 'none');
});

$(document).ready(function() {
	$('#roomDeduct').change(function() {
		if ($('#roomDeduct').is(':checked')) {
			$('#onlv').css('display', 'block');
			$('#pd').css('display', 'block');
			$('#rnum').css('display', 'block');
		} else {
			$('.cuscon-input').prop('checked', false);
			$('#pd2').css('display', 'none');
			$('#dpi').css('display', 'none');
			$('#lr').css('display', 'none');
			$('#onlv').css('display', 'none');
			$('#pd').css('display', 'none');
			$('#rnum').css('display', 'none');
		}
	});
});

$(document).ready(function() {
	$('#onLease').change(function() {
		if ($('#onLease').is(':checked')) {
			$('#dpi').css('display', 'block');
			$('#lr').css('display', 'block');
		} else {
			$('#dpi').css('display', 'none');
			$('#lr').css('display', 'none');
		}
	});
});

$(document).ready(function() {
	$('#customPriorityDeposit').change(function() {
		if ($('#customPriorityDeposit').is(':checked')) {
			$('#pd2').css('display', 'block');
		} else {
			$('#pd2').css('display', 'none');
		}
	});
});

$(document).ready(function() {
	$('#number').change(function() {
		if ($('#number').is(':checked')) {
			$('.listn').show();
		} else {
			$('.listn').hide();
		}
	});
});

