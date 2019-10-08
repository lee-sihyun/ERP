/* ****************
 *  일정 편집
 * ************** */
var editEvent = function (event, element, view) {

    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD'));
    }

    modalTitle.html('일정 수정');
    editTitle.val(event.title);
    editStart.val(event.start.format('YYYY-MM-DD'));
    editType.val(event.type);
    editDesc.val(event.description);
    editColor.val(event.backgroundColor).css('color', event.backgroundColor);

    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');

    //업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {
    	
    	var empNo=$("#empNo").val();
    	var deptNo=$("#deptNo").val();
    	
    	var calTitle=$("#edit-title").val();
		var	calStartDate=$("#edit-start").val();	
		var	calEndDate=$("#edit-end").val();	
		var	calGroup=$("#edit-type").val();	
		var	calCategory=$("#edit-color").val();	
		var	calPlace=$("#edit-place").val();	
		var	calContent=$("#edit-desc").val();	

        if (editStart.val() > editEnd.val()) {
            swal("Oops!","끝나는 날짜가 앞설 수 없습니다.","error")
        	//alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
        	swal("Oops!","일정명은 필수입니다.","error")
            //alert('일정명은 필수입니다.')
            return false;
        }

        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = editStart.val();
            endDate = editEnd.val();
            displayDate = endDate;
        }

        eventModal.modal('hide');

        event.allDay = statusAllDay;
        event.title = editTitle.val();
        event.start = startDate;
        event.end = displayDate;
        event.type = editType.val();
        event.backgroundColor = editColor.val();
        event.description = editDesc.val();

        $("#calendar").fullCalendar('updateEvent', event);

        //일정 업데이트
        $.ajax({
            type: "POST",
            url: "calendar_modify",
            headers: {"Content-Type":"application/json"},
            data: JSON.stringify({
            	"username":empNo,
        		"deptNo":deptNo,
        		"title":calTitle,
        		"start":calStartDate,
        		"end":calEndDate,
        		"type":calGroup,
        		"backgroundColor":calCategory,
        		"textColor":calPlace,
        		"description":calContent }),
            dataType: "text",
            success: function (text) {
            	swal("Complete","수정되었습니다.","info")
                //alert('수정되었습니다.');
            }
        });

    });

    // 삭제버튼
    $('#deleteEvent').on('click', function () {
        $('#deleteEvent').unbind();
        $("#calendar").fullCalendar('removeEvents', [event._id]);
        eventModal.modal('hide');

        //삭제시
        $.ajax({
            type: "post",
            url: "calendar_remove",
            headers: {"Content-Type":"application/json"},
            data:  JSON.stringify({ 
                "calNo":calNo
            }),
            dataType: "text",
            success: function (text) {
            	swal("Complete","삭제되었습니다.","info")
                //alert('삭제되었습니다.');
            }
        });
    });
};