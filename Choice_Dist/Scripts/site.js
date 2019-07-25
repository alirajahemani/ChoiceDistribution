window.onbeforeunload = function () {
	console.log($("#adid").val());
	var adid = $("#adid").val();
	var url = $(location).attr('href').toLowerCase().replace('index', '');
}