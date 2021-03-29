$(function () {
  $(".yn_btn").on("click", function () {
    $(this).closest("div").css("display", "none");
    id = $(this).attr("href");
    $(id).addClass("positionFit").show("slow");
  });
});
