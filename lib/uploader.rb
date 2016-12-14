class Uploader

  def self.split_base64(uri_str)
    if uri_str.match(%r{^data:(.*?);(.*?),(.*)$})
      return { type: $1, encoder: $2, data: $3, extension: $1.split('/')[1] }
    else
      return nil
    end
  end

  def self.upload(params)
    if params[:base64].try(:match, %r{^data:(.*?);(.*?),(.*)$})
      image_data = split_base64(params[:base64])
      image_data_string = image_data[:data]
      image_data_binary = Base64.decode64(image_data_string)

      temp_img_file = Tempfile.new("")
      temp_img_file.binmode
      temp_img_file << image_data_binary
      temp_img_file.rewind

      img_params = {
        filename: "#{SecureRandom.hex}.#{image_data[:extension]}",
        type: image_data[:type],
        tempfile: temp_img_file
      }

      uploaded_file = ActionDispatch::Http::UploadedFile.new(img_params)
      params[:image] = uploaded_file
    end
    params.delete(:base64)
    return params
  end
end
