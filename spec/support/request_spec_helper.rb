module RequestSpecHelper
  def body
    # NOTE: 同一の it() ブロック内でのみインスタンスが保持される
    @response_body ||= JSON.parse(response.body)
  end
end
