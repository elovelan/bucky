$(".toggle__trigger").on("click", "a", function(){
  var $this = $(this);
  var $trigger = $this.attr("class");
  var $title = $this.closest('[class$="trigger"').data("title")
  var $container = $this.closest('[class$="toggle"');
  var $content = $container.find('.toggle__content');
  var $contentClass = $content.attr("class");
  $this.toggleClass("visible");
  $this.toggleClass("hidden");
  if ($trigger === "hidden") {
    $this.empty();
    $this.append('<i class="fa fa-minus-square-o"></i> Hide ' + $title);
  }
    else{
      $this.empty();
      $this.append('<i class="fa fa-plus-square-o"></i> Show ' + $title);
  };
  $content.toggle("slow");
});