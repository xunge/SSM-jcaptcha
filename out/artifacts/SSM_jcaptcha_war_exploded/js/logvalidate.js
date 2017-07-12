$(document).ready(function() {

    $("#username").click(function () {
        var $username = $("#username"),
            usernameVal = $.trim($username.val());
        if (usernameVal.length == 0) {
            $("#usernameinfo .notice").text("请输入3-20位字符的用户名,该用户名将作为您的唯一标识");
        } else {
            $("#usernameinfo .notice").empty();
        }
    }),
    $("#password").click(function () {
        var $password = $("#password"),
            passwordVal = $.trim($password.val());
        if (passwordVal.length == 0) {
            $("#passwordinfo .notice").text("请输入6-16位数字、字母或常用符号，字母区分大小写");
        } else {
            $("#passwordinfo .notice").empty();
        }
    }),
    $("#email,#username,#password,#password2").change(function () {
        $("#emailinfo .notice").empty();
        $("#usernameinfo .notice").empty();
        $("#passwordinfo .notice").empty();
        $("#password2info .notice").empty();
    }),

    $("#logform").validate({
        rules: {
            username: {
                required: true,
                remote: {
                    url: "checkUser.do",
                    type: "get",
                    contentType: "application/json;charset=utf-8",
                    data: {
                        username: function () {
                            return $("#username").val();
                        }
                    },
                    dataFilter: function (data, type) {
                        if (data == 0)
                            return false;
                        else
                            return true;
                    }
                }
            },
            password: {
                required: true
            }
        },
        messages: {
            username: {
                required: "请填写用户名",
                remote: "该用户还未被注册，请先注册！"
            },
            password: {
                required: "请输入密码"
            }
        },
        errorElement: "span",
        errorPlacement: function (error, element) {
            // Add the `help-block` class to the error element
            error.addClass("help-block");

            // Add `has-feedback` class to the parent div.form-group
            // in order to add icons to inputs
            element.parents(".input-group").addClass("has-feedback");

            if (element.prop("type") === "checkbox") {
                error.appendTo(element.parent("label").parent("div").parent("div").next("div"));
            } else {
                //error.insertAfter( element );
                error.appendTo(element.parent("div").parent("div").next("div"));
            }

            // Add the span element, if doesn't exists, and apply the icon classes to it.
            if (!element.next("span")[0]) {
                $("<span class='glyphicon glyphicon-remove form-control-feedback'></span>").insertAfter(element);
            }
        },
        success: function (label, element) {
            // Add the span element, if doesn't exists, and apply the icon classes to it.
            if (!$(element).next("span")[0]) {
                $("<span class='glyphicon glyphicon-ok form-control-feedback'></span>").insertAfter($(element));
            }
        },
        highlight: function (element, errorClass, validClass) {
            $(element).parents(".input-group").addClass("has-error").removeClass("has-success");
            $(element).next("span").addClass("glyphicon-remove").removeClass("glyphicon-ok");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).parents(".input-group").addClass("has-success").removeClass("has-error");
            $(element).next("span").addClass("glyphicon-ok").removeClass("glyphicon-remove");
        }
    });
});