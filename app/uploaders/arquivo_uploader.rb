# -*- encoding : utf-8 -*-
class ArquivoUploader < CarrierWave::Uploader::Base
  storage :postgresql_lo
end
