/**
 * 퀴즈풀기
 */
window.addEventListener('load',e=>{
	const quizList = document.getElementById('quiz-list');
	const mainEle = document.querySelector('main');
	
	if(quizList){
		quizList.addEventListener('click',e=>{
			const contextPath = getContextRootPath(); // context path
			if(e.target.classList.contains('btn-submit-answer')){ // 삭제 버튼
				
	
				const li = e.target.closest('li');
				const form = e.target.closest('form');
				const formData = new FormData(form);
					
				console.dir(formData.getAll('quiz-answers'));
				const num = li.getAttribute('data-num');
				
				const xhr = new XMLHttpRequest();
				xhr.open('POST',`${contextPath}/learning/quiz/${num}/check/`)
				xhr.addEventListener('load',
		            e=>{
		                console.log(e.target.response);
		                const responseData = JSON.parse(e.target.response);
		                
		                if(responseData.quizResult.status==='t'){
		                	li.classList.add('passed');
		                	if(li.querySelector('.btn-submit-answer')){ // 버튼 없애기
			                	li.querySelector('.btn-submit-answer').remove();
			                	// checkbox 비활성화
			                	const nextBtn = document.createElement('button');
			                	if(li.nextElementSibling){
			                		nextBtn.innerText="다음문제풀기";
			                		nextBtn.addEventListener('click',
			                				e=>{
			                					// selected 삭제
			                					const quizList = document.querySelector('#quiz-list');
			                					console.log("li.nextSibling:"+li.nextSibling);
			                					console.log("li.nextElementSibling:"+li.nextElementSibling);
			                					removeSelectedFromListItems(quizList);
			                					li.nextElementSibling.classList.add('selected');
			                					// 다음요소 selected; 
			                				});
			                		li.appendChild(nextBtn);			                		
			                	}else {
			                		nextBtn.innerText="다음단원가기";
			                		nextBtn.addEventListener('click',
			                				e=>{			                					
			                					const unitNum = mainEle.getAttribute('data-num');
			                					const nextUnitNum = mainEle.getAttribute('data-next');
			                					location.href=`${contextPath}/learning/unit/${nextUnitNum}?prevUnitNum=${unitNum}`; 
			                				});
			                		li.appendChild(nextBtn);
			                	}
			                }
		                }else if(responseData.quizResult.status==='f'){		                	
		                	li.classList.add('failed')
		                	if(li.querySelector('.btn-submit-answer')){ // 
			                	li.querySelector('.btn-submit-answer').innerText="다시 제출";
			                }
		                	myAnswers = formData.getAll('quiz-answers');
//		                	console.log(formData.getAll('quiz-answers'));
		                	for(let i=0;i<myAnswers.length;i++){
		                		const answerItem = document.getElementById(`answer-${myAnswers[i]}`);
		                		answerItem.classList.add('wrong-answer');
		                	}
		                	const correctAnswers = responseData.correctAnswerList;
		                	for(let i=0;i<correctAnswers.length;i++){
		                		const answerItem = document.getElementById(`answer-${correctAnswers[i]}`);
		                		answerItem.classList.add('correct-answer');
		                	}
		                	const solution = li.querySelector('.solution');
		                	solution.innerHTML =  responseData.quiz.solution;
//		                	const answer = document.getElementById('')
		                }
		            });
		        xhr.send(formData);
			}
		})
		
	}
	
});
// selected 삭제
function removeSelectedFromListItems(listEle){
	if(listEle && listEle.children){
		for(let i = 0;i<listEle.children.length;i++){
			listEle.children[i].classList.remove('selected');			
		}
	}	
}