module Request
  module UserAgent

    def mobile?
      request.user_agent =~ /Mobile/
    end

    def iPhone?
      request.user_agent =~ /iPhone/
    end

    def blackberry?
      request.user_agent =~ /BlackBerry/
    end

    def android?
      request.user_agent =~ /Android/
    end

    def windows?
      request.user_agent =~ /Windows/
    end

  end
end
