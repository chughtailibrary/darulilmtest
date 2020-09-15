CarrierWave.configure do |c|
  carrierwave_base_path = Settings.base_path if Settings.base_path
  carrierwave_base_path ||= begin
    File.read(File.join(Rails.root, 'public', '.htaccess')).scan(/PassengerBaseURI (.*)$/).first.try(:first)
  end if File.exist? File.join(Rails.root, 'public', '.htaccess')

  c.base_path = carrierwave_base_path
  c.enable_processing = true
end
