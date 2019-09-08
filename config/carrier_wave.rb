if !Rails.env.development?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			:provider				=> 'AWS',
			:aws_access_key_id		=> ENV['S3_ACCESS_KEY'],
			:aws_secret_access_key 	=> ENV['S3_SECRET_KEY'],
			:path_style				=> true
		}
		config.fog_directory 		= ENV['S3_BUCKET']
		config.asset_host   		= 'https://cdn-v1.udocz-assets.com'  
		config.fog_public     		= true # optional, defaults to true
		config.fog_attributes 		= {'Cache-Control'=>'max-age=315576000'}
	end
end