/* TOGGLE HOME MENU */

<!--
function toggleMenu(szDivID, iState) // 1 visible, 0 hidden
	{
	   var obj = document.layers ? document.layers[szDivID] :
	   document.getElementById ?  document.getElementById(szDivID).style :
	   document.all[szDivID].style;
	   obj.visibility = document.layers ? (iState ? "show" : "hide") :
	   (iState ? "visible" : "hidden");
	}
// -->

/* TOGGLE VISIBILITY */

<!--
function toggleBox(szDivID, iState) // 1 visible, 0 hidden
	{
	   var obj = document.layers ? document.layers[szDivID] :
	   document.getElementById ?  document.getElementById(szDivID).style :
	   document.all[szDivID].style;
	   obj.display = document.layers ? (iState ? "show" : "hide") :
	   (iState ? "block" : "none");
	}
// -->



/* CLEAR FORM INPUTS */

<!--
function init(){

    var inp = document.getElementsByTagName('input');

    for(var i = 0; i < inp.length; i++) {
        if((inp[i].type == 'text') || (inp[i].type == 'password')) {
            inp[i].setAttribute('rel',inp[i].defaultValue)
            inp[i].onfocus = function() {
                if(this.value == this.getAttribute('rel')) {
                    this.value = '';
                } else {
                    return false;
                }
            }
            inp[i].onblur = function() {
                if(this.value == '') {
                this.value = this.getAttribute('rel');
                } else {
                    return false;
                }
            }
            inp[i].ondblclick = function() {
                this.value = this.getAttribute('rel')
            }
        }
    }
}

if(document.childNodes) {
    window.onload = init
}