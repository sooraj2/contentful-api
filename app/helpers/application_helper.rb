module ApplicationHelper
  FLASH_HASH = { notice: 'alert-info',
                 success: 'alert-success',
                 warning: 'alert-warning',
                 error: 'alert-danger',
                 alert: 'alert-danger' }.freeze

  def flash_class level
    FLASH_HASH[level.to_sym]
  end
end
