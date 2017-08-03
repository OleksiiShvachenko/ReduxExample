module Overcommit::Hook::PostCheckout
  class CocoapodsInstall < Base
    def run
      result = execute(command)
      return :fail, result.stderr unless result.success?
      :pass
    end
  end
end