module Motion
  # blitz (fl•ash), verb
  # 1. Shine in a bright but brief, sudden, or intermittent way
  # 2. Control the display of temporary messages via SVProgressHUD

  class Blitz
    MASKS = {
      none:     SVProgressHUDMaskTypeNone,
      clear:    SVProgressHUDMaskTypeClear,
      black:    SVProgressHUDMaskTypeBlack,
      gradient: SVProgressHUDMaskTypeGradient
    }

    class << self
      def show(message_or_mask = nil, mask = :none)
        if message_or_mask.is_a? Symbol
          show(nil, message_or_mask)
        else
          check_mask(mask)

          hud_class.showWithStatus(message_or_mask, maskType: MASKS[mask])
        end
      end

      def progress(progress, message_or_mask = nil, mask = :none)
        if message_or_mask.is_a? Symbol
          progress(progress, nil, message_or_mask)
        else
          check_mask(mask)

          hud_class.showProgress(progress, status: message_or_mask, maskType: MASKS[mask])
        end
      end

      def loading
        show('Loading...')
      end

      def dismiss
        hud_class.dismiss
      end

      def image(image, message = nil)
        hud_class.showImage(image, status: message)
      end

      def success(message = nil)
        hud_class.showSuccessWithStatus(message)
      end

      def error(message = nil)
        hud_class.showErrorWithStatus(message)
      end

      private

      def hud_class
        SVProgressHUD
      end

      def check_mask(mask)
        raise ArgumentError, "mask must be one of #{MASKS.keys}" unless MASKS.keys.include?(mask)
      end
    end
  end
end
