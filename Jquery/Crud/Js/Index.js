$(document).ready(function () {

    // -------------------------------------------------------------

    // handle the input box displayed or not
    $('#addNew').click(function () {
        $('#first').toggle();
    })

    // ----------------------------------------------------------------

    // ---------------------------------------------------------------
    function display(arr) {

        arr.map((e, i) => {

            $('tbody').append(
                "<tr class='text-center' data-name='" + e.name + "' data-mobile='" + e.mobile + "' data-city='" + e.city + "' data-country='" + e.country + "' data-pincode='" + e.pincode + "' key=" + i + ">"
                + "<td>" + e.name + "</td><td>"
                + e.mobile + "</td><td>"
                + e.city + "</td><td>"
                + e.country + "</td><td>"
                + e.pincode + "</td>"
                + "<td><button class='btn btn-warning editBtn w-100'>Edit</button></td>"
                + "<td><button class='btn btn-danger deleteBtn w-100'>Delete</button></td>"
                + "</tr>"
            );
        })

    }
    // click on add btn-------------------------------------------------
    var data = [];
    var mapData = []
    $('#addBtn').click(function () {
        if ($('#userName').val() === ""
            || $('#userMobile').val() === ""
            || $('#userCity').val() === ""
            || $('#userCountry').val() === ""
            || $('#userPincode').val() === "") {
            alert("Please Fill Up Your Details.....!!!")
            console.log($('#userName').val(), $('#userMobile').val())
        } else {

            data.push({
                name: $('#userName').val(),
                mobile: $('#userMobile').val(),
                city: $('#userCity').val(),
                country: $('#userCountry').val(),
                pincode: $('#userPincode').val()
            });

            // save the data in array-------------------------------------------

            mapData = [...mapData, ...data];
            display(data);
        }
        // clear the input after submit --------------------------------------------
        $("input[type='text']").val("");

        // clear array --------------------------------------------
        data = []

    })
    // --------------------------------------------------
    // delete the data from table-----------------------

    // myTab is the Id of Table-------------------------

    $("#myTab").on('click', '.deleteBtn', function () {
        // remove current tr-------------------------------

        $(this).closest('tr').remove();

        // after deleting item clear Input------------------------- 

        $('#userName').val("");
        $('#userMobile').val("");
        $('#userCity').val("");
        $('#userCountry').val("");
        $('#userPincode').val("");

    });
    // -----------------------------------------------------------------------

    $("#myTab").on('click', '.editBtn', function () {

        // get the value in variable--------------------------------

        var name = $(this).parents('tr').attr('data-name');
        var mobileNo = $(this).parents('tr').attr('data-mobile');
        var cityName = $(this).parents('tr').attr('data-city');
        var countryName = $(this).parents('tr').attr('data-country');
        var pincodeNo = $(this).parents('tr').attr('data-pincode');

        // open the edit input box in table row-------------------------------------

        $(this).parents('tr').find('td:eq(0)').html("<input name='edit_text' value='" + name + "' class='form-control'>")
        $(this).parents('tr').find('td:eq(1)').html("<input name='edit_mobile' value='" + mobileNo + "' class='form-control'>")
        $(this).parents('tr').find('td:eq(2)').html("<input name='edit_city' value='" + cityName + "' class='form-control'>")
        $(this).parents('tr').find('td:eq(3)').html("<input name='edit_country' value='" + countryName + "' class='form-control'>")
        $(this).parents('tr').find('td:eq(4)').html("<input name='edit_pincode' value='" + pincodeNo + "' class='form-control'>")

        // add Update Button --------------------

        $(this).parents('tr').find('td:eq(5)').prepend("<button class='btn btn-info text-white updateBtn w-100'>Update</button>");

        // hide the edit Button-------------------------

        $(this).hide();

    })

    $('#myTab').on('click', '.updateBtn', function () {

        // first get the Updated Data---------------------------------------

        var update_name = $(this).parents('tr').find("input[name='edit_text']").val();
        var mobile_no = $(this).parents('tr').find("input[name='edit_mobile']").val();
        var city_name = $(this).parents('tr').find("input[name='edit_city']").val();
        var country_name = $(this).parents('tr').find("input[name='edit_country']").val();
        var pincode_no = $(this).parents('tr').find("input[name='edit_pincode']").val();

        // set the value----------------------------------------

        $(this).parents('tr').find('td:eq(0)').text(update_name);
        $(this).parents('tr').find('td:eq(1)').text(mobile_no);
        $(this).parents('tr').find('td:eq(2)').text(city_name);
        $(this).parents('tr').find('td:eq(3)').text(country_name);
        $(this).parents('tr').find('td:eq(4)').text(pincode_no);

        // change the data value-------------------------------------

        $(this).parents('tr').attr('data-name', update_name);
        $(this).parents('tr').attr('data-mobile', mobile_no);
        $(this).parents('tr').attr('data-city', city_name);
        $(this).parents('tr').attr('data-country', country_name);
        $(this).parents('tr').attr('data-pincode', pincode_no);

        // visible the eidit button and hide the update Button---------------------

        $(this).parents('tr').find('.editBtn').show();
        $(this).parents('tr').find('.updateBtn').remove();
    })



});


