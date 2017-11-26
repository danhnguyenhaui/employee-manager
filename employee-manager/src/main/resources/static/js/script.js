$(document).ready(function(){
	/*
	* custumize tag
	*/
	var tags_input = $('.tags-input');
	var tags;
	if(tags_input != null){
		tags = new Array(tags_input.length);
		tags_input.each(function(i,t){
			tags[i] = [];
			// add input field for tags-input
			let hidden = document.createElement('input');
			hidden.setAttribute('type', 'hidden');
			hidden.setAttribute('name', t.getAttribute('data-name'));
			let main_input = document.createElement('input');
			main_input.setAttribute('type', 'text');
			main_input.classList.add('main-input');
			t.append(hidden, main_input);
			t.classList.add('rounded', 'my-1');
			addTag(i,t, hidden, 'primary');
			addTag(i,t, hidden, 'primary');
			addTag(i,t, hidden, 'primary');
			// check tag when user enter text.
			main_input.addEventListener('keydown', function(e){
				var key = e.keyCode;
				// if user press backspace then remove first tag.
				if(key == '8' && hidden.value.length > 0){
					removeTag(hidden, i,tags[i].length-1);
				}
				// if user press enter then add new tag
				else if(key == '13' && main_input.value.length > 3){
					addTag(i,t, hidden, main_input.value.trim());
					main_input.value = '';
				}


			});

			main_input.addEventListener('input', function(){
				var valueInput = main_input.value;
				var arr = valueInput.split(',');
				// if user enter ',' then add new tag.
				if(arr.length > 1){
					addTag(i,t, hidden, arr[0]);
					main_input.value = '';
				}
			});

		});
	}



	function addTag(index,ti, hidden,text){
		
		// create a tag
		let badge = document.createElement('span');
		badge.classList.add('badge', 'badge-pill', 'badge-primary', 'mx-1', 'my-1');
		badge.textContent = text;
		// create a button
		let button = document.createElement('button');
		button.classList.add('close', 'pl-1');
		button.setAttribute('type', 'button');
		button.setAttribute('aria-label', 'Close');
		
		// create a close symbol
		let close  = document.createElement('span');
		close.innerHTML = '&times';
		close.setAttribute('aria-hidden', 'true');
		// append close symbol for button
		button.appendChild(close);
		// append button for badge
		badge.appendChild(button);
		// push badge into tags array
		tags[index].push(badge);
		// insert badge before previous hidden
		ti.insertBefore(badge, hidden);
		// remove a tag when click button
		button.addEventListener('click', function(){
			removeTag(hidden, index,tags[index].indexOf(badge));
		});
		updateHiddenValue(hidden, index);
	}

	function removeTag(hidden, index1,index2){
		console.log('remove ' + index1 + '   ' + index2);
		let tag = tags[index1][index2];
		tag.parentElement.removeChild(tag);
		tags[index1].splice(index2, 1);
		updateHiddenValue(hidden, index1);

	}

	function updateHiddenValue(hidden, index){
		var valueList = [];
		tags[index].forEach(function(t){
			valueList.push(t.textContent.slice(0, t.textContent.length -1));

		});
		hidden.setAttribute('value', valueList.join(','));
	}

	// customize tag...................................................
	
});