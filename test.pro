pro test, arr, col1, col2, col3
	answers = strarr(n_elements(col3))
	for i=0,n_elements(col3)-1 do begin
		response = ''
		read, response, prompt="Please enter a "+arr[2,i]+": "
		answers[i]=response
		endfor
	save, answers, filename="answers.sav"
	poem = strarr(3,n_elements(col3))
	poem[0,*] = col1
	poem[1,*] = answers
	poem[2,*] = col2
	for i=0,n_elements(col3)-1 do begin
		print, poem[0,i], poem[1,i], poem[2,i]
		wait, 0.5
		endfor 
end