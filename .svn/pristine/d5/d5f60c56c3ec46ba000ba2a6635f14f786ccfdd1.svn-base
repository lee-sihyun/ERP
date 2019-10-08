var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
//var editAllDay = $('#edit-allDay');
var editTitle = $('#edit-title');
var editStart = $('#edit-start');
var editEnd = $('#edit-end');
var editType = $('#edit-type');
var editColor = $('#edit-color');
var editDesc = $('#edit-desc');
var editPlace=$("#edit-place");

var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
    editStart.val(start);
    editEnd.val(end);
    editType.val(eventType).prop("selected", true);

    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    //var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {
    	var empNo=$("#empNo").val();
    	var deptNo=$("#deptNo").val();
    	var calNo=$("#calNo").val();
    	
    	//var title=$("#edit-title").val();
    	//var allDay=$('#edit-allDay').val();
		//var	start=$("#edit-start").val();	
		//var	end=$("#edit-end").val();	
		var	calGroup=$("#edit-type").val();	
		var	calCategory=$("#edit-color").val();	
		var	calPlace=$("#edit-place").val();	
		var	calContent=$("#edit-desc").val();	
    	
        var eventData = {
            _id: calNo,
            title: editTitle.val(),
            start: editStart.val(),
            end: editEnd.val(),
            description: editDesc.val(),
            type: editType.val(),				//캘린더
            backgroundColor: editColor.val(),	//카테고리
            textColor: '#ffffff',
            allDay: true
        };

        if (eventData.start > eventData.end) {
        	swal("Oops!","끝나는 날짜가 앞설 수 없습니다.","error")
            //alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
        	swal("Oops!","일정명은 필수입니다.","error")
        	//alert('일정명은 필수입니다.');
            return false;
        }

        //var realEndDay;
        
        /*
        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD');
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = 1;
        }
        */

        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        //editAllDay.prop('checked', false);
        eventModal.modal('hide');

        //새로운 일정 저장
        $.ajax({
            type: "POST",
            url: "calendar_add",
            headers: {"Content-Type":"application/json"},
            data: JSON.stringify({ 
            		"username":empNo,
            		"deptNo":deptNo,
            		"title":eventData.title,
            		//"allDay":eventData.allDay,
            		"start":eventData.start,
            		"end":eventData.end,
            		"type":calGroup,
            		"backgroundColor":calCategory,
            		"textColor":calPlace,
            		"description":calContent}),
            dataType: "text",
            success: function (text) {
                //DB연동시 중복이벤트 방지를 위한
                $('#calendar').fullCalendar('removeEvents');
                $('#calendar').fullCalendar('refetchEvents');

            }
        });
    });
};













