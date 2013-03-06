CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAIL3DNKEVWQDYFVOA',                        # required
      :aws_secret_access_key  => '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',                        # required

  }
  config.fog_directory  = 'blank-test'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end