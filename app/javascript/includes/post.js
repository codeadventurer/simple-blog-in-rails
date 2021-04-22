document.addEventListener("turbolinks:load", function () {
  const form = document.getElementById("save_views");
  if (form) form.submit();
});
