/**
 * 
 */
function toggleInfo(id) {
	document.querySelectorAll('.toggle-content').forEach(el => el.style.display = 'none');
	document.getElementById(id).style.display = 'block';
}

function toggleCV(id) {
	document.querySelectorAll('.toggle-content').forEach(el => el.style.display = 'none');
	document.getElementById(id).style.display = 'block';
}
