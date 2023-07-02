var gender = $('input[name="gender"]:checked').val();
var lastname = $('input[name="user-lastname"]').val();
var firstname = $('input[name="user-firstname"]').val();
var birthday = $('input[name="user-birthday"]').val();
var country = $('input[name="user-country"]').val();
var phoneNumber = $('input[name="user-phoneNumber"]').val();
var email = $('input[name="user-email"]').val();
var address = $('input[name="user-address"]').val();
// var ticketID = session.getItem("ticket");

var FormValidate = () => {

}

$("#btn-user-information-form-next").click(function () {
    $.ajax({
        url: "/userInformationForm",
        type: "POST",
        data: {
            gender: $('input[name="gender"]:checked').val(),
            lastname: $('input[name="user-lastname"]').val(),
            firstname: $('input[name="user-firstname"]').val(),
            birthday: $('input[name="user-birthday"]').val(),
            country: $('input[name="user-country"]').val(),
            phoneNumber: $('input[name="user-phoneNumber"]').val(),
            email: $('input[name="user-email"]').val(),
            address: $('input[name="user-address"]').val()
        },
        success: function(response) {
            alert("Thông tin đã được ghi nhận trên hệ thống")
        }
        })

});