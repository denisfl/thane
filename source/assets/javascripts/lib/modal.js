(function($) {
    function Modal(options) {
        var self = this;
        this.activeClassModal = 'modal--is-active';
        this.activeClassBody = 'modal--is-open';
        this.modalClass = '.modal';
        this.$body = $(document.body);
        this.openBtnData = 'modal';
        this.$closeBtn = $('.modal__btn-close');
        this.showListener();

    };

    Modal.prototype.show = function(modalTarget) {
        $(this.$body).addClass(this.activeClassBody);
        $(modalTarget).addClass(this.activeClassModal);
        this.closeListener();
    };

    Modal.prototype.hide = function() {
        $(this.$body).removeClass(this.activeClassBody);
        $(this.modalClass).removeClass(this.activeClassModal);
        $(document).off('click.close.modal');
    };

    Modal.prototype.showListener = function() {
        $(document)
            .on('click.modal', '[data-toggle='+ this.openBtnData + ']', function(event) {
                var $this = $(this);
                var modalTarget = $this.data('target');
                event.preventDefault();

                modal.show(modalTarget);
                modal.escapeKeyListener();
            });
    };

    Modal.prototype.closeListener = function() {
        this.$closeBtn.on('click.close.modal', function() {
            modal.hide();
        });
    };

    Modal.prototype.escapeKeyListener = function() {
        $(document)
            .on('keyup.close.modal', function(e) {
                if (e.which == 27) {
                    modal.hide();
                }
            });
    };

    var modal = new Modal();

})(jQuery);
